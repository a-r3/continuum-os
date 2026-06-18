#!/usr/bin/env python3
"""Shared Claude hook policy helpers for the P00 project-control foundation."""

from __future__ import annotations

import fnmatch
import json
import os
import re
import shlex
import sys
from pathlib import Path

BLOCK = 2
ALLOW = 0


def emit_block(message: str) -> int:
    print(f"Blocked: {message}", file=sys.stderr)
    return BLOCK


def load_input() -> dict:
    try:
        raw = sys.stdin.read()
        return json.loads(raw or "{}")
    except json.JSONDecodeError:
        raise SystemExit(emit_block("invalid hook JSON input."))


def project_root(script_dir_arg: str) -> Path:
    script_dir = Path(script_dir_arg).resolve()
    return script_dir.parents[1]


def resolve_under_root(root: Path, value: str, must_exist: bool = False) -> Path:
    raw = Path(value)
    candidate = raw if raw.is_absolute() else root / raw
    try:
        resolved = candidate.resolve(strict=must_exist)
    except FileNotFoundError:
        resolved = candidate.resolve(strict=False)
    try:
        if os.path.commonpath([str(root), str(resolved)]) != str(root):
            raise ValueError
    except ValueError:
        raise ValueError(f"path is outside project: {value}")
    return resolved


def rel_to_root(root: Path, path: Path) -> str:
    return path.relative_to(root).as_posix()


def read_frontmatter(path: Path) -> dict:
    if not path.exists():
        raise ValueError(f"missing file: {path}")
    lines = path.read_text(encoding="utf-8").splitlines()
    if not lines or lines[0].strip() != "---":
        raise ValueError(f"missing frontmatter: {path}")
    data: dict[str, object] = {}
    current_key: str | None = None
    current_list: list[str] | None = None
    for line in lines[1:]:
        if line.strip() == "---":
            return data
        if line.startswith("  - ") and current_key and current_list is not None:
            current_list.append(line[4:].strip().strip('"').strip("'"))
            continue
        current_key = None
        current_list = None
        if ":" not in line:
            continue
        key, value = line.split(":", 1)
        key = key.strip()
        value = value.strip()
        if value == "":
            current_key = key
            current_list = []
            data[key] = current_list
        elif value == "[]":
            data[key] = []
        elif value.lower() == "true":
            data[key] = True
        elif value.lower() == "false":
            data[key] = False
        else:
            data[key] = value.strip('"').strip("'")
    raise ValueError(f"unterminated frontmatter: {path}")


def active_contract(root: Path) -> tuple[dict, Path | None, dict | None]:
    active_path = root / "governance" / "ACTIVE_TASK.md"
    active = read_frontmatter(active_path)
    task_id = str(active.get("active_task_id", ""))
    if not task_id or task_id == "NONE":
        return active, None, None
    task_path = root / "governance" / "tasks" / f"{task_id}.md"
    task = read_frontmatter(task_path)
    if str(task.get("task_id", "")) != task_id:
        raise ValueError("active task file task_id does not match ACTIVE_TASK.md")
    return active, task_path, task


def count_executable_tasks(root: Path) -> int:
    active_states = {"APPROVED", "ACTIVE", "IN_PROGRESS", "IN_REVIEW"}
    count = 0
    for path in (root / "governance" / "tasks").glob("*.md"):
        try:
            fm = read_frontmatter(path)
        except ValueError:
            continue
        if str(fm.get("lifecycle_status", "")) in active_states and fm.get("execution_authorized") is True:
            count += 1
    return count


def is_read_only_bash(command: str) -> bool:
    if re.search(r"(^|[^>])>{1,2}|\btee\b|\bsed\s+-i\b|\bpython3?\b.*\b(open|write)\b", command):
        return False
    try:
        tokens = shlex.split(command)
    except ValueError:
        return False
    if not tokens:
        return True
    safe_prefixes = [
        ("pwd",),
        ("ls",),
        ("find",),
        ("rg",),
        ("grep",),
        ("cat",),
        ("sed", "-n"),
        ("git", "status"),
        ("git", "diff"),
        ("git", "remote", "-v"),
        ("git", "rev-parse"),
        ("python3", "-m", "json.tool"),
        ("bash", "-n"),
        ("command", "-v"),
        ("stat",),
    ]
    return any(tuple(tokens[: len(prefix)]) == prefix for prefix in safe_prefixes)


def strip_wrappers(tokens: list[str]) -> list[str]:
    while tokens:
        if tokens[0] == "sudo":
            tokens = tokens[1:]
            continue
        if tokens[0] == "env":
            tokens = tokens[1:]
            while tokens and "=" in tokens[0] and not tokens[0].startswith("-"):
                tokens = tokens[1:]
            continue
        break
    return tokens


def split_shell_segments(command: str) -> list[str]:
    return [seg.strip() for seg in re.split(r"\s*(?:&&|;|\|\|)\s*", command) if seg.strip()]


def has_recursive_force_rm(tokens: list[str]) -> bool:
    tokens = strip_wrappers(tokens)
    if not tokens or tokens[0] != "rm":
        return False
    recursive = False
    force = False
    for token in tokens[1:]:
        if token == "--":
            break
        if token.startswith("--"):
            recursive = recursive or token == "--recursive"
            force = force or token == "--force"
        elif token.startswith("-"):
            recursive = recursive or "r" in token or "R" in token
            force = force or "f" in token
        else:
            break
    return recursive and force


def contains_destructive_command(command: str) -> str | None:
    for segment in split_shell_segments(command):
        try:
            tokens = shlex.split(segment)
        except ValueError:
            return "unparseable high-risk shell command"
        stripped = strip_wrappers(tokens)
        if len(stripped) >= 3 and stripped[0] in {"sh", "bash"} and stripped[1] == "-c":
            nested = contains_destructive_command(stripped[2])
            if nested:
                return nested
        if has_recursive_force_rm(tokens):
            return "destructive recursive deletion"
        if stripped[:2] == ["git", "filter-branch"]:
            return "destructive git history rewrite"
        if stripped[:2] == ["git", "reset"] and "--hard" in stripped[2:]:
            return "destructive git reset"
        if stripped[:2] == ["git", "clean"]:
            for token in stripped[2:]:
                if token.startswith("-") and "f" in token and ("d" in token or "x" in token):
                    return "destructive git clean"
        if stripped[:2] == ["git", "push"] and any(
            token in {"--force", "-f", "--force-with-lease"} for token in stripped[2:]
        ):
            return "force push"
    return None


def require_active_for_mutation(root: Path) -> tuple[dict, Path, dict]:
    active, task_path, task = active_contract(root)
    if active.get("active_task_id") in {None, "", "NONE"}:
        raise ValueError("no active task is available for mutating execution")
    if active.get("execution_authorized") is not True:
        raise ValueError("active task execution is not authorized")
    if count_executable_tasks(root) != 1:
        raise ValueError("expected exactly one execution-authorized active task")
    if task_path is None or task is None:
        raise ValueError("active task file is missing")
    if str(task.get("lifecycle_status", "")) in {"PROPOSED", "CANCELLED", "DONE", "SUSPENDED", "BLOCKED"}:
        raise ValueError("active task lifecycle status is not executable")
    if task.get("execution_authorized") is not True:
        raise ValueError("active task record does not authorize execution")
    return active, task_path, task


def allowed_by_scope(rel_path: str, task: dict) -> bool:
    scopes = task.get("approved_write_paths", [])
    if not isinstance(scopes, list):
        return False
    return any(fnmatch.fnmatch(rel_path, scope) for scope in scopes)


def command_mentions_governance_mutation(command: str) -> bool:
    if "governance/" not in command and "/governance/" not in command:
        return False
    if re.search(r">{1,2}\s*[^;&|]*governance/", command):
        return True
    try:
        tokens = shlex.split(command)
    except ValueError:
        return True
    mutators = {"mv", "cp", "rm", "touch"}
    if tokens and strip_wrappers(tokens)[0] in mutators:
        return True
    if "tee" in tokens:
        return True
    if "sed" in tokens and any(t.startswith("-i") for t in tokens):
        return True
    return False


def action_block_destructive(root: Path, data: dict) -> int:
    if data.get("tool_name") != "Bash":
        return ALLOW
    cwd = data.get("cwd", str(root))
    try:
        resolve_under_root(root, str(cwd))
    except ValueError:
        return emit_block("command outside project scope requires explicit approval.")
    command = str(data.get("tool_input", {}).get("command", "")).strip()
    reason = contains_destructive_command(command)
    if reason:
        return emit_block(f"{reason} requires explicit Product Owner approval.")
    return ALLOW


def action_validate_active(root: Path, data: dict) -> int:
    tool = data.get("tool_name", "")
    if tool not in {"Edit", "Write", "Bash"}:
        return ALLOW
    if tool == "Bash":
        command = str(data.get("tool_input", {}).get("command", ""))
        if is_read_only_bash(command):
            return ALLOW
    try:
        require_active_for_mutation(root)
    except ValueError as exc:
        return emit_block(str(exc))
    return ALLOW


def action_validate_governance(root: Path, data: dict) -> int:
    tool = data.get("tool_name", "")
    tool_input = data.get("tool_input", {})
    targets: list[Path] = []
    if tool in {"Edit", "Write"}:
        value = tool_input.get("file_path") or tool_input.get("path")
        if not value:
            return ALLOW
        try:
            targets.append(resolve_under_root(root, str(value)))
        except ValueError as exc:
            return emit_block(str(exc))
    elif tool == "Bash":
        command = str(tool_input.get("command", ""))
        if not command_mentions_governance_mutation(command):
            return ALLOW
        return emit_block("use Edit/Write for governance changes; Bash governance mutation is blocked by policy.")
    else:
        return ALLOW
    governance_targets = [p for p in targets if rel_to_root(root, p).split("/", 1)[0] == "governance"]
    if not governance_targets:
        return ALLOW
    try:
        _active, _task_path, task = require_active_for_mutation(root)
        for target in governance_targets:
            rel = rel_to_root(root, target)
            if not allowed_by_scope(rel, task):
                return emit_block(f"governance path is outside approved write scope: {rel}")
    except ValueError as exc:
        return emit_block(str(exc))
    return ALLOW


def action_validate_session(root: Path, data: dict) -> int:
    if data.get("stop_hook_active") is True:
        return ALLOW
    required = [
        "governance/PROJECT_STATE.md",
        "governance/ACTIVE_TASK.md",
        "governance/SESSION_LOG.md",
        "governance/HANDOFF.md",
    ]
    for rel in required:
        if not (root / rel).exists():
            return emit_block(f"session close missing continuity file: {rel}")
    try:
        active, task_path, _task = active_contract(root)
        session = read_frontmatter(root / "governance" / "SESSION_LOG.md")
        handoff = read_frontmatter(root / "governance" / "HANDOFF.md")
    except ValueError as exc:
        return emit_block(str(exc))
    if not session.get("latest_session_date") or not session.get("latest_session_scope"):
        return emit_block("session log lacks a current session marker.")
    if not handoff.get("next_action"):
        return emit_block("handoff lacks a concrete next action.")
    blockers = handoff.get("known_closeout_blockers", [])
    if blockers:
        return emit_block("known closeout blockers remain unresolved.")
    if active.get("active_task_id") != "NONE":
        if task_path is None or not task_path.exists():
            return emit_block("active task file is missing.")
        text = task_path.read_text(encoding="utf-8")
        if "## Validation Evidence" not in text:
            return emit_block("active task lacks validation evidence section.")
        lower_text = text.lower()
        if "pending" in lower_text and "validation commands" in lower_text and "correction pass" in lower_text:
            return emit_block("active task validation evidence is still pending.")
    return ALLOW


def main() -> int:
    if len(sys.argv) != 3:
        return emit_block("invalid hook invocation.")
    action = sys.argv[1]
    root = project_root(sys.argv[2])
    data = load_input()
    actions = {
        "block-destructive": action_block_destructive,
        "validate-active-task": action_validate_active,
        "validate-governance-write": action_validate_governance,
        "validate-session-close": action_validate_session,
    }
    if action not in actions:
        return emit_block("unknown hook action.")
    return actions[action](root, data)


if __name__ == "__main__":
    raise SystemExit(main())
