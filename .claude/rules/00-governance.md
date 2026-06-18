# Governance Rules

Purpose: keep Claude aligned with canonical project-control state.

Scope: unconditional.

Authority: advisory behavior. Canonical authority remains in `governance/`.

Rules:

- Read current governance state before project work.
- Use `governance/PROJECT_STATE.md`, `governance/CURRENT_PHASE.md`, `governance/ACTIVE_TASK.md`, and the Product Owner-approved active task file as current operating authority.
- The repository may have zero or one active task, never more than one. Execution work requires exactly one active task.
- Proposed, inactive, blocked, cancelled, done, or unratified task records are not execution authority.
- Mutating execution also requires `execution_authorized: true` in `governance/ACTIVE_TASK.md`.
- Do not treat chat history, hidden memory, or Claude auto-memory as canonical.
- Do not ratify semantic claims. Only the Product Owner ratifies decisions.
- If governance files conflict, stop and escalate.
- Do not duplicate canonical project state in this rule file.
