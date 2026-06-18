---
task_id: CONT-P00-ONB-001
title: Establish Complete Claude-Ready Project Control Foundation
lifecycle_status: IN_PROGRESS
current_gate: GATE_D
gate_status: LOCAL_COMMIT_AUTHORIZED
execution_authorized: true
approved_write_paths:
  - AGENTS.md
  - CLAUDE.md
  - README.md
  - .gitignore
  - .claude/**
  - .continuum/**
  - governance/**
  - docs/**
  - apps/**
  - packages/**
  - adapters/**
  - profiles/**
  - schemas/**
  - tests/**
  - tools/**
prohibited_write_paths:
  - LICENSE
  - .claude/settings.local.json
---

# CONT-P00-ONB-001 - Establish Complete Claude-Ready Project Control Foundation

## Status

- Lifecycle status: `IN_PROGRESS`
- Current gate: `GATE_D`
- Gate status: `LOCAL_COMMIT_AUTHORIZED`
- Execution authorized: `true`

## Objective

Prepare a production-quality repository, governance, continuity, safety, planning, review, subagent, skill, hook, and provisional Continuum environment so Claude Code can begin founder onboarding from repository state without depending on Codex chat history or hidden memory.

## Scope

- Initialize Git and approved remote.
- Create and correct the approved Claude-ready foundation.
- Create governance and continuity records.
- Create Claude settings, rules, read-only subagents, skills, hooks, and hook tests.
- Create provisional `.continuum/` projection.
- Create documentation and reserved runtime boundary READMEs.
- Validate non-destructively.
- Prepare Gate C evidence.

## Non-Scope

- Commit or push.
- Hook registration or activation.
- P00 closeout.
- P01 activation.
- Founder onboarding.
- Product charter creation.
- Architecture selection outside approved P03 tasks.
- Implementation stack selection.
- Implementation code.
- License creation.

## Dependencies

- Product Owner approval for Gate B execution and consolidated Gate C correction.
- Local repository initialized on `main`.
- Remote configured as `origin https://github.com/a-r3/continuum-os`.
- Python 3 available for hook tooling and validation.
- No dependency installation.

## Assumptions

- P00 remains a bootstrap/correction task owned by Codex.
- Claude Code becomes primary only after P00 closeout and Product Owner transition approval.
- `CONT-P01-ONB-001` remains proposed, inactive, and unratified.
- Static validation can proceed before interactive Claude runtime validation.

## Risks

- Hook enforcement can over-block or under-block until fixture coverage is complete.
- Claude settings can parse statically while still requiring interactive runtime validation.
- Governance and adapter instructions can drift without consistency checks.
- Provisional `.continuum/` files can be mistaken for a final format if caveats are removed.

## Execution Sequence

1. Verify repository and remote state.
2. Create approved foundation files.
3. Present five-part Gate C evidence.
4. Record Product Owner review findings.
5. Apply consolidated correction pass.
6. Run static and fixture validation.
7. Return updated Gate C evidence.
8. Await Product Owner Gate C approval.

## Acceptance Criteria

- Approved file tree exists with any authorized corrections.
- Governance state separates lifecycle status from gate status.
- `CONT-P00-ONB-001` is the only active task.
- `CONT-P01-ONB-001` exists only as proposed, inactive, and unratified.
- Claude settings parse, contain no credentials, and do not register hooks.
- Hooks pass isolated fixture tests but remain unregistered.
- Validation evidence is durable in this task record.
- No implementation stack, product charter, architecture decision, license, commit, or push is created.

## Validation Commands

Required after correction:

```bash
git status --short --branch
git remote -v
git diff --check
git diff --stat
find . -not -path './.git/*' -type f | sort
python3 -m json.tool .claude/settings.json
python3 -m json.tool .claude/settings.local.example.json
bash -n .claude/hooks/*.sh
bash -n .claude/hooks/tests/run-fixtures.sh
python3 -c 'import ast, pathlib; ast.parse(pathlib.Path(".claude/hooks/lib/hook_common.py").read_text(encoding="utf-8"))'
.claude/hooks/tests/run-fixtures.sh
```

Additional audits:

- frontmatter structural validation;
- subagent field validation;
- skill field validation;
- active-task invariant audit;
- governance cross-file consistency audit;
- registry audit;
- secret scan without printing secret contents;
- machine-specific path scan;
- empty-file scan;
- implementation/dependency-manifest scan.

## Validation Evidence

### Baseline Before Consolidated Correction

- Branch: `main`.
- Remote: `origin https://github.com/a-r3/continuum-os`.
- Commit state: no commits yet.
- File count: 76.
- Prior hook fixture result: 9 pass / 0 fail, with coverage gaps recorded by Product Owner review.
- Prior secret scan: no matches.
- Prior `git diff --check`: no output.
- Interactive `claude doctor`: failed in Codex non-interactive environment because raw-mode stdin is unavailable.

### Consolidated Correction Evidence

Validated on 2026-06-18 after the consolidated correction pass.

- `git status --short --branch`: repository remains on `main` with no commits yet; files are unstaged, intent-to-add, or ordinary untracked only. No commit or push was created.
- `git remote -v`: fetch and push remotes are both `https://github.com/a-r3/continuum-os`.
- `git diff --check`: passed with no output.
- `git diff --stat`: 76 current intent-to-add comparison paths, including 10 deleted obsolete fixture placeholders, with 2053 insertions.
- Real worktree file count outside `.git`: 68 files after removing generated Python bytecode.
- Prospective initial commit file count: 68 real source, governance, Claude configuration, hook tooling, test, Continuum, and boundary-document files.
- Deleted intent-to-add placeholders: 10 obsolete static fixture JSON paths remain only as index placeholders and are not part of the prospective initial commit.
- Ordinary untracked paths: 2, `.claude/hooks/lib/hook_common.py` and `.claude/hooks/tests/fixtures/README.md`.
- Staged content: none; `git diff --cached --name-status` produced no output.
- Total project line count outside `.git`: 2432 lines.
- JSON parse validation: `JSON OK .claude/settings.json, .claude/settings.local.example.json`.
- Shell syntax validation: hook shell scripts and fixture runner passed `bash -n` with no output.
- Python helper syntax validation: `python3 -m py_compile .claude/hooks/lib/hook_common.py` passed with no output; generated `__pycache__` artifacts were removed afterward.
- Hook permission audit: executable hooks and fixture runner are `755`; hook docs and Python helper are `664`.
- Hook fixture suite: 54 pass / 0 fail.
- Governance invariant audit: active task is `CONT-P00-ONB-001`, lifecycle `IN_REVIEW`, current gate `GATE_C`, gate status `CORRECTION_IN_PROGRESS`, execution authorized `true`; P01 is `PROPOSED`, current gate `NONE`, gate status `NOT_REQUESTED`, execution authorized `false`.
- Subagent metadata audit: passed; no `maxTurns` fields remain.
- Skill metadata audit: passed; no `model: inherit` fields remain.
- Stale placeholder scan: no matches for the prior composite status, placeholder Gate C evidence reference, or pending repository validation phrase.
- Secret pattern scan: no matches for common private key, GitHub token, Slack token, AWS access key, or OpenAI-style key patterns.
- Machine-specific host path scan: no host-specific absolute path matches outside the test runner exclusion.
- Empty-file scan outside `.git`: no empty files remain in the working tree.
- Hook activation state: hooks remain proposed and inactive; no hook registration was added to active settings.

Interactive Claude configuration validation remains incomplete because `claude doctor` requires an interactive terminal mode that is unavailable in the Codex non-interactive environment. This remains a recorded blocker for P00 closeout, not for static Gate C review.

## Approval Gate History

- Initial Gate A: Product Owner approved the initial P00 bootstrap plan in the current session.
- Amended/final Gate A: Product Owner approved the complete Claude-primary foundation plan in the current session.
- Gate B: Product Owner approved execution with explicit limits in the current session.
- Gate C five-part review: Product Owner reviewed Parts 1 through 5 and did not approve Gate C; findings were recorded for correction.
- Consolidated correction authorization: Product Owner authorized one controlled consolidated correction pass under `CONT-P00-ONB-001`.
- Final Gate C approval: Product Owner approved Gate C after final reconciliation correction.
- Gate D authorization: Product Owner authorized final governance-state synchronization and exactly one local initial commit.

## Rollback

Before commit, rollback or correction must affect only files created or modified under this authorized P00 task. Destructive rollback requires explicit Product Owner approval.

After commit, prefer corrective commits. Do not rewrite history without explicit Product Owner approval identifying exact command, scope, reason, consequence, and recovery implication.

## Stop Conditions

- Secret value discovered.
- Unexpected files outside approved scope appear.
- Remote state changes unexpectedly.
- A correction would require implementation, architecture selection, license creation, P01 activation, hook activation, commit, push, dependency installation, or history rewriting.
- Canonical governance documents conflict and cannot be corrected within the authorized scope.

## Pending Evidence Fields

- Initial local commit SHA: pending post-commit evidence.
- Push confirmation: pending Gate E.
- Interactive Claude validation: pending before Gate F.
- Final P00 closeout approval: pending Gate F.

## Closeout Target

At P00 closeout, this task becomes `DONE`, P00 is complete, P01 is ready for Product Owner transition approval, and `ACTIVE_TASK.md` records `active_task_id: NONE`, `lifecycle_status: TRANSITION`, `current_gate: P00_TO_P01_TRANSITION`, `gate_status: PRODUCT_OWNER_APPROVAL_PENDING`, and `execution_authorized: false`.
