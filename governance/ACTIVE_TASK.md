---
active_task_id:
active_task_title:
active_task_lane:
active_task_gate:
active_task_status: NONE
execution_authorized: false
---

# Active Task

## Invariant

The repository may have zero or one active task, but never more than one. Any mutating execution work requires exactly one Product Owner-approved active task and `execution_authorized: true`.

A zero-active-task state is permitted only during an explicit transition, approval wait, suspension, or closed-project state. After P01 closeout and before P02 activation, the repository is in an explicit approval-wait state with zero active tasks.

## Current Active Task

There is **no active task**. Execution is **not authorized**. The active-task invariant is preserved as zero active tasks.

- Active task ID: none
- Active task title: none
- Lane: none
- Current gate: none
- Gate status: closed
- Execution authorized: `false`

P01 is closed/completed. `CONT-P01-BUNDLE-005` is closed/completed (`lifecycle_status: DONE`, `gate_status: COMPLETED`, `ratification_status: RATIFIED`, `active: false`, `execution_authorized: false`); Bundle 5 deliverables ratified in commit `4a4529e5dc40d6d807cc22eab2c18f70aafb8ef5`. `CONT-P01-BUNDLE-001`, `CONT-P01-BUNDLE-002`, `CONT-P01-BUNDLE-003`, `CONT-P01-BUNDLE-004`, `CONT-P01-CONSOL-001`, and `CONT-P01-ONB-001` remain closed/completed. P02 is **not active**. No P02 task has been created. P02 activation requires separate explicit Product Owner approval. The Product Owner / sole ratification authority for v1 is `Rauf Alizada`.

## Scope Boundaries

- Authorized under the current zero-active-task state: none. No execution work is authorized.
- Prohibited under this state: activating P02 without explicit Product Owner approval, creating a P02 task without explicit Product Owner approval, modifying adapter rules (`CLAUDE.md`, `AGENTS.md`, `.claude/rules/`), modifying hooks, architecture evaluation or selection, implementation work, implementation-stack selection, license selection or creation, ADR creation, dependency installation, hook registration or activation, settings changes, project-code changes, modifying ratified governance documents outside a separately approved gate, creating `governance/PRODUCT_OWNER.md`, and encoding any identity other than `Rauf Alizada` as valid project identity.
- Product Owner remains the sole ratification authority for any semantic decision.
