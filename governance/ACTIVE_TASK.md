---
active_task_id: NONE
lifecycle_status: TRANSITION
current_gate: P00_TO_P01_TRANSITION
gate_status: PRODUCT_OWNER_APPROVAL_PENDING
execution_authorized: false
---

# Active Task

## Invariant

The repository may have zero or one active task, but never more than one. Any mutating execution work requires exactly one Product Owner-approved active task and `execution_authorized: true`.

A zero-active-task state is permitted only during an explicit transition, approval wait, suspension, or closed-project state.

## Current Active Task

No active execution task exists.

P00 is complete after the closeout commit is pushed. P01 has not started.

## Proposed Next Task

- Task ID: `CONT-P01-ONB-001`
- Title: Conduct Founder Onboarding and Ratify the Product Foundation
- Lifecycle status: `PROPOSED`
- Ratification status: `NOT_RATIFIED`
- Active: `false`
- Execution authorized: `false`
- Task file: `governance/tasks/CONT-P01-ONB-001.md`

Any P01 work requires explicit Product Owner transition approval and activation of `CONT-P01-ONB-001`.
