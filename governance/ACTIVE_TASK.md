---
active_task_id: CONT-P00-ONB-001
lifecycle_status: IN_PROGRESS
current_gate: GATE_D
gate_status: LOCAL_COMMIT_AUTHORIZED
execution_authorized: true
transition_state: false
---

# Active Task

## Invariant

The repository may have zero or one active task, but never more than one. Any mutating execution work requires exactly one Product Owner-approved active task and `execution_authorized: true`.

A zero-active-task state is permitted only during an explicit transition, approval wait, suspension, or closed-project state.

## Current Active Task

- Task ID: `CONT-P00-ONB-001`
- Title: Establish Complete Claude-Ready Project Control Foundation
- Lifecycle status: `IN_PROGRESS`
- Current gate: `GATE_D`
- Gate status: `LOCAL_COMMIT_AUTHORIZED`
- Execution authorized: `true`
- Task file: `governance/tasks/CONT-P00-ONB-001.md`

## Proposed Next Task

- Task ID: `CONT-P01-ONB-001`
- Title: Conduct Founder Onboarding and Ratify the Product Foundation
- Lifecycle status: `PROPOSED`
- Ratification status: `NOT_RATIFIED`
- Active: `false`
- Task file: `governance/tasks/CONT-P01-ONB-001.md`

## Future P00 Closeout Representation

At P00 closeout, this file must be able to represent:

```yaml
---
active_task_id: NONE
lifecycle_status: TRANSITION
current_gate: P00_TO_P01_TRANSITION
gate_status: PRODUCT_OWNER_APPROVAL_PENDING
execution_authorized: false
transition_state: true
---
```
