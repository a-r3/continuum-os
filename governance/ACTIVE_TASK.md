---
active_task_id: CONT-P01-BUNDLE-003
active_task_title: P01 Bundle 3 - Authority, Change Protocol, and Never-Automatic Guardrail
active_task_lane: Strict
active_task_gate: P01_BUNDLE_3_AUTHORITY_CHANGE_PROTOCOL_NEVER_AUTOMATIC
active_task_status: IN_PROGRESS
execution_authorized: true
---

# Active Task

## Invariant

The repository may have zero or one active task, but never more than one. Any mutating execution work requires exactly one Product Owner-approved active task and `execution_authorized: true`.

A zero-active-task state is permitted only during an explicit transition, approval wait, suspension, or closed-project state.

## Current Active Task

Exactly one active task exists.

- Task ID: `CONT-P01-BUNDLE-003`
- Title: P01 Bundle 3 - Authority, Change Protocol, and Never-Automatic Guardrail
- Lane: `Strict`
- Lifecycle status: `IN_PROGRESS`
- Current gate: `P01_BUNDLE_3_AUTHORITY_CHANGE_PROTOCOL_NEVER_AUTOMATIC`
- Gate status: `ACTIVATED`
- Execution authorized: `true`
- Task file: `governance/tasks/CONT-P01-BUNDLE-003.md`

`CONT-P01-BUNDLE-002` is closed/completed (Bundle 2 Glossary ratified in commit `12fd21eaf3c7a624dfabcbd44d22753176beb2bf`; closeout transition committed together with the activation of `CONT-P01-BUNDLE-003`). `CONT-P01-BUNDLE-001`, `CONT-P01-CONSOL-001`, and `CONT-P01-ONB-001` remain closed/completed. P01 remains active and Bundle 3 Authority, Change Protocol, and Never-Automatic Guardrail is the active work. No Bundle 3 deliverable authoring is authorized until the next Product Owner instruction. `governance/CHANGE_PROTOCOL.md` has not been modified for Bundle 3. `governance/NEVER_AUTOMATIC.md` has not been created. No Bundle 3 deliverable has been ratified. The Product Owner / sole ratification authority for v1 is `Rauf Alizada`.

## Scope Boundaries

- Authorized: governance updates and Bundle 3 Authority, Change Protocol, and Never-Automatic Guardrail work under `CONT-P01-BUNDLE-003` (activation only at this gate; deliverable drafting requires the next Product Owner instruction).
- Prohibited under this activation: modifying `governance/CHANGE_PROTOCOL.md` before the next Product Owner instruction, creating `governance/NEVER_AUTOMATIC.md` before the next Product Owner instruction, ratifying any Bundle 3 deliverable, creating `governance/PRODUCT_OWNER.md`, authoring Bundle 4–5 deliverables, creating `governance/TRUST_BOUNDARIES.md`, modifying `governance/RISK_REGISTER.md`, `governance/ROADMAP.md`, `governance/DOCUMENT_REGISTRY.md`, or `docs/REFERENCE_STRUCTURE.md`, modifying `governance/PRODUCT_CHARTER.md`, `governance/GLOSSARY.md`, or `governance/DECISION_LOG.md`, architecture evaluation or selection, implementation work, implementation stack selection, license selection, ADR creation, dependency installation, hook registration, hook activation, and modification of adapter rules (`CLAUDE.md`, `AGENTS.md`, `.claude/rules/`).
- Product Owner remains the sole ratification authority for any semantic decision.
