---
active_task_id: none
active_task_title: none
active_task_lane: none
active_task_gate: none
active_task_status: none
execution_authorized: false
---

# Active Task

## Invariant

The repository may have zero or one active task, but never more than one. Any mutating execution work requires exactly one Product Owner-approved active task and `execution_authorized: true`. A zero-active-task state is allowed only during transition, approval wait, suspension, or closed-project state. After P03 closeout under `DEC-P03-CLOSEOUT-001`, and after the bounded Pre-P04 CKF definition transition task `CONT-PRE-P04-CKF-001` under `DEC-PRE-P04-CKF-DEF-001`, the invariant holds with zero active tasks while the repository awaits a separately approved P04 activation decision and a separately approved P04 task.

## Current Active Task

**No active task.** Repository is in zero-active-task state awaiting separately approved P04 activation.

- Active task ID: `none`
- Active task title: `none`
- Lane: `none`
- Current gate: `none`
- Gate status: `none`
- Ratification status: `none`
- Execution authorized: `false`
- Predecessor task: `CONT-PRE-P04-CKF-001` (closed/completed)
- Source decision: `DEC-PRE-P04-CKF-DEF-001`

`CONT-PRE-P04-CKF-001` is closed/completed under `DEC-PRE-P04-CKF-DEF-001`. `CONT-P03-ARCH-001` remains closed/completed under `DEC-P03-CLOSEOUT-001`. `CONT-P02-ONB-001`, `CONT-P01-BUNDLE-005`, `CONT-P01-BUNDLE-004`, `CONT-P01-BUNDLE-003`, `CONT-P01-BUNDLE-002`, `CONT-P01-BUNDLE-001`, `CONT-P01-CONSOL-001`, and `CONT-P01-ONB-001` remain closed/completed. P04 and P05 are not active. The Product Owner / sole ratification authority for v1 is `Rauf Alizada`.

## Scope Boundaries

- No ordinary execution work is authorized while no active task exists. File mutations are prohibited unless they are part of a separately approved Product Owner transition/activation diff, such as a future P04 activation decision and P04 task proposal.
- Prohibited under this state: architecture evaluation or selection, implementation work, implementation-stack selection, license selection or creation, ADR creation, dependency installation, hook registration, modification, or activation, settings changes, project-code changes, adapter-rule changes (`CLAUDE.md`, `AGENTS.md`, `.claude/rules/`), runtime context pack generation, ratifying any deliverable, modifying ratified governance documents outside a separately approved gate, modifying `OPEN_QUESTIONS.md`, `RISK_REGISTER.md`, or `ROADMAP.md`, or modifying `DOCUMENT_REGISTRY.md` outside a separately approved gate, creating `governance/PRODUCT_OWNER.md`, P04/P05 activation, creating a P04 task, and encoding any identity other than `Rauf Alizada` as valid project identity.
- The Product Owner remains the sole ratification authority for any semantic decision. P04 activation requires a separately approved Product Owner P04 GO decision and a separately approved P04 task.
