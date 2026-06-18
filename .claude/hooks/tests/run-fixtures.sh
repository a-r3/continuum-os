#!/usr/bin/env bash
set -u

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/../../.." && pwd -P)"
TMPROOT="$(mktemp -d)"
trap 'rm -rf "$TMPROOT"' EXIT

PASS=0
FAIL=0

json_file() {
  local file="$1" cwd="$2" event="$3" tool="$4" key="$5" value="$6"
  python3 - "$file" "$cwd" "$event" "$tool" "$key" "$value" <<'PY'
import json, sys
path, cwd, event, tool, key, value = sys.argv[1:]
payload = {"session_id": "fixture", "cwd": cwd, "hook_event_name": event, "tool_name": tool, "tool_input": {}}
if key:
    payload["tool_input"][key] = value
with open(path, "w", encoding="utf-8") as fh:
    json.dump(payload, fh, indent=2)
PY
}

stop_json() {
  local file="$1" cwd="$2" active="$3"
  python3 - "$file" "$cwd" "$active" <<'PY'
import json, sys
path, cwd, active = sys.argv[1:]
payload = {"session_id": "fixture", "cwd": cwd, "hook_event_name": "Stop", "stop_hook_active": active == "true"}
with open(path, "w", encoding="utf-8") as fh:
    json.dump(payload, fh, indent=2)
PY
}

copy_hooks() {
  local repo="$1"
  mkdir -p "$repo/.claude"
  cp -R "$ROOT/.claude/hooks" "$repo/.claude/hooks"
}

write_valid_state() {
  local repo="$1"
  mkdir -p "$repo/governance/tasks"
  cat > "$repo/governance/ACTIVE_TASK.md" <<'EOF'
---
active_task_id: CONT-P00-ONB-001
lifecycle_status: IN_REVIEW
current_gate: GATE_C
gate_status: CORRECTION_IN_PROGRESS
execution_authorized: true
transition_state: false
---
# Active Task
EOF
  cat > "$repo/governance/tasks/CONT-P00-ONB-001.md" <<'EOF'
---
task_id: CONT-P00-ONB-001
lifecycle_status: IN_REVIEW
execution_authorized: true
approved_write_paths:
  - governance/**
  - .claude/**
---
# Task
## Validation Evidence
Validated.
EOF
  cat > "$repo/governance/PROJECT_STATE.md" <<'EOF'
# Project State
- Next action: Review.
EOF
  cat > "$repo/governance/SESSION_LOG.md" <<'EOF'
---
session_log_status: ACTIVE
latest_session_date: 2026-06-18
latest_session_scope: FIXTURE
---
# Session Log
EOF
  cat > "$repo/governance/HANDOFF.md" <<'EOF'
---
handoff_status: ACTIVE
next_action: REVIEW
known_closeout_blockers: []
---
# Handoff
EOF
}

write_narrow_scope_state() {
  local repo="$1"
  write_valid_state "$repo"
  python3 - "$repo/governance/tasks/CONT-P00-ONB-001.md" <<'PY'
import pathlib, sys
path = pathlib.Path(sys.argv[1])
text = path.read_text(encoding="utf-8")
text = text.replace("  - governance/**\n  - .claude/**", "  - governance/PROJECT_STATE.md")
path.write_text(text, encoding="utf-8")
PY
}

write_transition_state() {
  local repo="$1"
  mkdir -p "$repo/governance/tasks"
  cat > "$repo/governance/ACTIVE_TASK.md" <<'EOF'
---
active_task_id: NONE
lifecycle_status: TRANSITION
current_gate: P00_TO_P01_TRANSITION
gate_status: PRODUCT_OWNER_APPROVAL_PENDING
execution_authorized: false
transition_state: true
---
# Active Task
EOF
  cat > "$repo/governance/PROJECT_STATE.md" <<'EOF'
# Project State
- Next action: Transition approval.
EOF
  cat > "$repo/governance/SESSION_LOG.md" <<'EOF'
---
session_log_status: ACTIVE
latest_session_date: 2026-06-18
latest_session_scope: TRANSITION
---
# Session Log
EOF
  cat > "$repo/governance/HANDOFF.md" <<'EOF'
---
handoff_status: ACTIVE
next_action: PRODUCT_OWNER_TRANSITION_APPROVAL
known_closeout_blockers: []
---
# Handoff
EOF
}

write_multiple_active_state() {
  local repo="$1"
  write_valid_state "$repo"
  cat > "$repo/governance/tasks/CONT-P00-OTHER.md" <<'EOF'
---
task_id: CONT-P00-OTHER
lifecycle_status: IN_PROGRESS
execution_authorized: true
approved_write_paths:
  - governance/**
---
# Other Active Task
EOF
}

write_proposed_active_state() {
  local repo="$1"
  mkdir -p "$repo/governance/tasks"
  cat > "$repo/governance/ACTIVE_TASK.md" <<'EOF'
---
active_task_id: CONT-P01-ONB-001
lifecycle_status: PROPOSED
current_gate: NONE
gate_status: NOT_APPROVED
execution_authorized: false
transition_state: false
---
# Active Task
EOF
  cat > "$repo/governance/tasks/CONT-P01-ONB-001.md" <<'EOF'
---
task_id: CONT-P01-ONB-001
lifecycle_status: PROPOSED
execution_authorized: false
---
# Proposed Task
EOF
}

write_malformed_state() {
  local repo="$1"
  mkdir -p "$repo/governance/tasks"
  printf '# Active Task\n' > "$repo/governance/ACTIVE_TASK.md"
}

write_incomplete_session_state() {
  local repo="$1" kind="$2"
  write_valid_state "$repo"
  case "$kind" in
    missing-session) rm "$repo/governance/SESSION_LOG.md" ;;
    missing-handoff) rm "$repo/governance/HANDOFF.md" ;;
    missing-next-action) sed -i '/next_action/d' "$repo/governance/HANDOFF.md" ;;
    missing-validation) sed -i '/## Validation Evidence/,$d' "$repo/governance/tasks/CONT-P00-ONB-001.md" ;;
    blocker) cat > "$repo/governance/HANDOFF.md" <<'EOF'
---
handoff_status: ACTIVE
next_action: REVIEW
known_closeout_blockers:
  - INTERACTIVE_CLAUDE_VALIDATION_PENDING
---
# Handoff
EOF
      ;;
  esac
}

case_run() {
  local name="$1" hook="$2" expected="$3" state="$4" cwd_mode="$5" event="$6" tool="$7" key="$8" value="$9" env_flag="${10:-}"
  local repo="$TMPROOT/$name"
  mkdir -p "$repo"
  copy_hooks "$repo"
  case "$state" in
    valid) write_valid_state "$repo" ;;
    narrow-scope) write_narrow_scope_state "$repo" ;;
    transition) write_transition_state "$repo" ;;
    multiple) write_multiple_active_state "$repo" ;;
    proposed) write_proposed_active_state "$repo" ;;
    missing-task) write_valid_state "$repo"; rm "$repo/governance/tasks/CONT-P00-ONB-001.md" ;;
    malformed) write_malformed_state "$repo" ;;
    missing-session|missing-handoff|missing-next-action|missing-validation|blocker) write_incomplete_session_state "$repo" "$state" ;;
  esac
  local cwd="$repo"
  [ "$cwd_mode" = "subdir" ] && mkdir -p "$repo/docs" && cwd="$repo/docs"
  [ "$cwd_mode" = "unrelated" ] && mkdir -p "$TMPROOT/unrelated-$name" && cwd="$TMPROOT/unrelated-$name"
  local input="$repo/input.json"
  if [ "$event" = "Stop" ]; then
    stop_json "$input" "$cwd" "$value"
  elif [ "$state" = "malformed-json" ]; then
    printf '{\n' > "$input"
  else
    json_file "$input" "$cwd" "$event" "$tool" "$key" "$value"
  fi
  set +e
  if [ "$env_flag" = "missing-python" ]; then
    (cd "$cwd" && CONTINUUM_SIMULATE_MISSING_PYTHON=1 "$repo/.claude/hooks/$hook" < "$input" >/dev/null 2>&1)
  else
    (cd "$cwd" && "$repo/.claude/hooks/$hook" < "$input" >/dev/null 2>&1)
  fi
  local actual=$?
  set -e
  if [ "$actual" -eq "$expected" ]; then
    printf 'PASS %-42s hook=%s expected=%s actual=%s\n' "$name" "$hook" "$expected" "$actual"
    PASS=$((PASS + 1))
  else
    printf 'FAIL %-42s hook=%s expected=%s actual=%s\n' "$name" "$hook" "$expected" "$actual"
    FAIL=$((FAIL + 1))
  fi
}

set -e

# Destructive command protection.
case_run rm-rf block-destructive-command.sh 2 valid root PreToolUse Bash command "rm -rf path"
case_run rm-fr block-destructive-command.sh 2 valid root PreToolUse Bash command "rm -fr path"
case_run rm-long block-destructive-command.sh 2 valid root PreToolUse Bash command "rm --recursive --force path"
case_run sudo-rm block-destructive-command.sh 2 valid root PreToolUse Bash command "sudo rm -rf path"
case_run env-rm block-destructive-command.sh 2 valid root PreToolUse Bash command "env X=1 rm -rf path"
case_run sh-rm block-destructive-command.sh 2 valid root PreToolUse Bash command "sh -c 'rm -rf path'"
case_run bash-rm block-destructive-command.sh 2 valid root PreToolUse Bash command "bash -c 'rm -rf path'"
case_run chained-and-rm block-destructive-command.sh 2 valid root PreToolUse Bash command "pwd && rm -rf path"
case_run chained-semi-rm block-destructive-command.sh 2 valid root PreToolUse Bash command "pwd; rm -rf path"
case_run git-reset block-destructive-command.sh 2 valid root PreToolUse Bash command "git reset --hard"
case_run git-reset-head block-destructive-command.sh 2 valid root PreToolUse Bash command "git reset --hard HEAD"
case_run git-clean-fd block-destructive-command.sh 2 valid root PreToolUse Bash command "git clean -fd"
case_run git-clean-fdx block-destructive-command.sh 2 valid root PreToolUse Bash command "git clean -fdx"
case_run git-clean-xdf block-destructive-command.sh 2 valid root PreToolUse Bash command "git clean -xdf"
case_run git-push-force block-destructive-command.sh 2 valid root PreToolUse Bash command "git push --force"
case_run git-push-f block-destructive-command.sh 2 valid root PreToolUse Bash command "git push -f"
case_run git-push-lease block-destructive-command.sh 2 valid root PreToolUse Bash command "git push --force-with-lease"
case_run git-push-order block-destructive-command.sh 2 valid root PreToolUse Bash command "git push origin main --force"
case_run git-filter-branch block-destructive-command.sh 2 valid root PreToolUse Bash command "git filter-branch"
case_run safe-status block-destructive-command.sh 0 valid root PreToolUse Bash command "git status --short --branch"

# Active task enforcement.
case_run active-one-write validate-active-task.sh 0 valid root PreToolUse Write file_path "governance/PROJECT_STATE.md"
case_run transition-readonly-bash validate-active-task.sh 0 transition root PreToolUse Bash command "git status --short --branch"
case_run transition-mutating-bash validate-active-task.sh 2 transition root PreToolUse Bash command "touch governance/PROJECT_STATE.md"
case_run multiple-active validate-active-task.sh 2 multiple root PreToolUse Write file_path "governance/PROJECT_STATE.md"
case_run proposed-active validate-active-task.sh 2 proposed root PreToolUse Write file_path "governance/PROJECT_STATE.md"
case_run missing-task validate-active-task.sh 2 missing-task root PreToolUse Write file_path "governance/PROJECT_STATE.md"
case_run malformed-active validate-active-task.sh 2 malformed root PreToolUse Write file_path "governance/PROJECT_STATE.md"
case_run readonly-tool validate-active-task.sh 0 transition root PreToolUse Read file_path "governance/PROJECT_STATE.md"

# Governance write enforcement.
case_run gov-write-relative validate-governance-write.sh 0 valid root PreToolUse Write file_path "governance/PROJECT_STATE.md"
case_run gov-write-absolute validate-governance-write.sh 0 valid root PreToolUse Write file_path "$TMPROOT/gov-write-absolute/governance/PROJECT_STATE.md"
case_run gov-edit validate-governance-write.sh 0 valid root PreToolUse Edit file_path "governance/PROJECT_STATE.md"
case_run non-gov-write validate-governance-write.sh 0 valid root PreToolUse Write file_path "README.md"
case_run gov-path-traversal validate-governance-write.sh 2 valid root PreToolUse Write file_path "../outside.md"
case_run gov-sibling-prefix validate-governance-write.sh 2 valid root PreToolUse Write file_path "$TMPROOT/gov-sibling-prefix-other/governance/PROJECT_STATE.md"
case_run gov-proposed-task validate-governance-write.sh 2 proposed root PreToolUse Write file_path "governance/PROJECT_STATE.md"
case_run gov-missing-auth validate-governance-write.sh 2 transition root PreToolUse Write file_path "governance/PROJECT_STATE.md"
case_run gov-disallowed-scope validate-governance-write.sh 2 narrow-scope root PreToolUse Write file_path "governance/ROADMAP.md"
case_run gov-bash-redirection validate-governance-write.sh 2 valid root PreToolUse Bash command "echo x > governance/PROJECT_STATE.md"
case_run gov-bash-tee validate-governance-write.sh 2 valid root PreToolUse Bash command "echo x | tee governance/PROJECT_STATE.md"
case_run gov-bash-sed validate-governance-write.sh 2 valid root PreToolUse Bash command "sed -i s/x/y/ governance/PROJECT_STATE.md"
case_run gov-bash-readonly validate-governance-write.sh 0 valid root PreToolUse Bash command "cat governance/PROJECT_STATE.md"

# Session close validation.
case_run session-complete validate-session-close.sh 0 valid root Stop Stop none false
case_run session-missing-log validate-session-close.sh 2 missing-session root Stop Stop none false
case_run session-missing-handoff validate-session-close.sh 2 missing-handoff root Stop Stop none false
case_run session-missing-next validate-session-close.sh 2 missing-next-action root Stop Stop none false
case_run session-missing-validation validate-session-close.sh 2 missing-validation root Stop Stop none false
case_run session-transition validate-session-close.sh 0 transition root Stop Stop none false
case_run session-blocker validate-session-close.sh 2 blocker root Stop Stop none false
case_run session-stop-active validate-session-close.sh 0 blocker root Stop Stop none true
case_run session-repeat validate-session-close.sh 0 valid root Stop Stop none false

# Runtime and invocation behavior.
case_run malformed-json validate-active-task.sh 2 malformed-json root PreToolUse Write file_path "governance/PROJECT_STATE.md"
case_run subdir-invocation validate-active-task.sh 0 valid subdir PreToolUse Write file_path "governance/PROJECT_STATE.md"
case_run unrelated-cwd block-destructive-command.sh 2 valid unrelated PreToolUse Bash command "git status"
case_run missing-python block-destructive-command.sh 2 valid root PreToolUse Bash command "git status" missing-python

printf 'SUMMARY overall pass=%s fail=%s\n' "$PASS" "$FAIL"

if [ "$FAIL" -ne 0 ]; then
  exit 1
fi
