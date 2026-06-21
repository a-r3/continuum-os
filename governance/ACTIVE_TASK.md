---
active_task_id: CONT-P02-ONB-001
active_task_title: P02 Domain, Governance, and Security Discovery
active_task_lane: Strict
active_task_gate: P02_DOMAIN_GOVERNANCE_SECURITY_DISCOVERY
active_task_status: IN_PROGRESS
execution_authorized: true
---

# Active Task

## Invariant

The repository may have zero or one active task, but never more than one. Any mutating execution work requires exactly one Product Owner-approved active task and `execution_authorized: true`. After P02 activation under `DEC-P02-ACTIVATION-001`, the invariant holds with exactly one active task.

## Current Active Task

Exactly **one active task** exists. The active task is `CONT-P02-ONB-001`. P02 is **active**. P01 is **closed/completed** under `DEC-P01-CLOSEOUT-001`.

- Active task ID: `CONT-P02-ONB-001`
- Active task title: P02 Domain, Governance, and Security Discovery
- Lane: Strict
- Current gate: `P02_DOMAIN_GOVERNANCE_SECURITY_DISCOVERY`
- Gate status: `ACTIVATED`
- Ratification status: `APPROVED_FOR_EXECUTION`
- Execution authorized: `true`
- Predecessor task: `CONT-P01-BUNDLE-005` (closed/completed)
- Source decision: `DEC-P02-ACTIVATION-001`

`CONT-P01-BUNDLE-005`, `CONT-P01-BUNDLE-004`, `CONT-P01-BUNDLE-003`, `CONT-P01-BUNDLE-002`, `CONT-P01-BUNDLE-001`, `CONT-P01-CONSOL-001`, and `CONT-P01-ONB-001` remain closed/completed. P03, P04, and P05 are not active. The Product Owner / sole ratification authority for v1 is `Rauf Alizada`.

## Scope Boundaries

- Authorized under the current active task: P02 discovery work as scoped in `governance/tasks/CONT-P02-ONB-001.md` (domain model discovery, governance model refinement, security and trust requirements, data classification and sensitive-boundary analysis, open questions, P02 evidence and validation expectations), under explicit Product Owner approval verbs (`prepare diff` / `commit only` / `commit and push`).
- Prohibited under this state: architecture evaluation or selection, implementation work, implementation-stack selection, license selection or creation, ADR creation, dependency installation, hook registration, modification, or activation, settings changes, project-code changes, adapter-rule changes (`CLAUDE.md`, `AGENTS.md`, `.claude/rules/`), runtime context pack generation, context-policy ratification, modification of ratified governance documents outside a separately approved gate, creating `governance/PRODUCT_OWNER.md`, P03/P04/P05 activation, ratifying any P02 deliverable without explicit Product Owner approval, and encoding any identity other than `Rauf Alizada` as valid project identity.
- Product Owner remains the sole ratification authority for any semantic decision. Activation of this task does not authorize any of the prohibited items above.
