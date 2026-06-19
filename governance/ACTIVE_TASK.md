---
active_task_id: CONT-P01-ONB-001
lifecycle_status: IN_PROGRESS
current_gate: P01_FOUNDER_ONBOARDING
gate_status: ACTIVATED
execution_authorized: true
---

# Active Task

## Invariant

The repository may have zero or one active task, but never more than one. Any mutating execution work requires exactly one Product Owner-approved active task and `execution_authorized: true`.

A zero-active-task state is permitted only during an explicit transition, approval wait, suspension, or closed-project state.

## Current Active Task

Exactly one active task exists.

- Task ID: `CONT-P01-ONB-001`
- Title: Conduct Founder Onboarding and Ratify the Product Foundation
- Lifecycle status: `IN_PROGRESS`
- Current gate: `P01_FOUNDER_ONBOARDING`
- Gate status: `ACTIVATED`
- Execution authorized: `true`
- Task file: `governance/tasks/CONT-P01-ONB-001.md`

P01 is active. Execution authorization is scoped strictly to the approved P01 founder onboarding task and does not extend to any other work.

## Scope Boundaries

- Authorized: governance updates and controlled founder onboarding preparation under `CONT-P01-ONB-001`.
- Prohibited under this activation: architecture selection, implementation work, implementation stack selection, license selection, ADR creation, dependency installation, hook registration, and hook activation.
- Product Owner remains the sole ratification authority for any semantic decision.
