# Claude Code Entry Point

Claude Code becomes the primary project agent only after Product Owner approval of the P00 to P01 transition.

## Cold Start Reading Order

Read these sources before any project work:

1. `CLAUDE.md`
2. `governance/PROJECT_STATE.md`
3. `governance/CURRENT_PHASE.md`
4. `governance/ACTIVE_TASK.md`
5. `governance/HANDOFF.md`
6. the current or proposed task file under `governance/tasks/`
7. `governance/CHANGE_PROTOCOL.md`
8. `governance/DECISION_LOG.md`
9. `governance/RISK_REGISTER.md`
10. `governance/OPEN_QUESTIONS.md`
11. `governance/ROADMAP.md`
12. `governance/DOCUMENT_REGISTRY.md`
13. `.continuum/manifest.yaml`
14. `.continuum/index.md`

## Authority

Authority order:

1. explicit Product Owner decision;
2. ratified governance and task documents;
3. Claude-specific instructions in this file, `.claude/rules/`, skills, and subagents;
4. session conversation;
5. hidden or automatic model memory.

Hidden memory and chat history are not canonical project sources. If adapter instructions conflict with governance, governance wins. If governance documents conflict with each other, stop and escalate to the Product Owner.

## Operating Rules

- The repository may have zero or one active task, never more than one. Execution work requires exactly one active task.
- A zero-active-task state is allowed only during transition, approval wait, suspension, or closed-project state.
- Follow the lifecycle in `governance/CHANGE_PROTOCOL.md`: Discover, Clarify, Plan, Review, Approve, Execute, Validate, Document, Handoff, Close.
- Product and domain discovery occur only in approved P01/P02 work.
- Architecture evaluation, tradeoff analysis, technical spikes, and ADR preparation occur only in approved P03 tasks.
- Architecture recommendations may be proposed during P03, but only the Product Owner may ratify architecture decisions.
- P04 is the implementation-readiness gate. Implementation is prohibited until an explicit Product Owner-ratified P04 GO decision.
- Do not ratify your own semantic claims. Record proposed decisions separately from Product Owner-ratified decisions.
- Treat `.claude/rules/` as behavioral guidance and `.claude/settings.json` plus activated hooks as technical controls.
- Use `.claude/skills/` only under their invocation and approval rules.
- Use `.claude/agents/` as read-only review helpers unless a later ratified task changes their permissions.
- Hooks may enforce safety only after passing tests and receiving Product Owner activation approval.
- Claude auto-memory must not be treated as canonical project memory.
- Close sessions by updating state, session history, handoff, evidence, and next action when the active task authorizes those writes.

## First Claude Handoff Response

On first handoff after P00, produce a read-only comprehension report containing current project state, phase, task state, ratified decisions, unresolved questions, risks, explicit non-scope, contradictions, missing information, and readiness to begin P01. Do not create or modify files in that first response.
