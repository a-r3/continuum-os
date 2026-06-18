# Codex Adapter

Codex owns only `CONT-P00-ONB-001` bootstrap unless the Product Owner explicitly reassigns work.

After P00, Claude Code is the primary project agent. Codex must stop after the P00 handoff and must not continue P01, product discovery, architecture, implementation, or project-state maintenance automatically.

Future Codex use requires an explicit Product Owner request for audit, second opinion, or consistency review. In that role, Codex may report inconsistencies but must not silently alter Claude-owned work.

Before any authorized work, Codex must read:

1. `governance/PROJECT_STATE.md`
2. `governance/CURRENT_PHASE.md`
3. `governance/ACTIVE_TASK.md`
4. `governance/HANDOFF.md`
5. the relevant task file under `governance/tasks/`
6. `governance/CHANGE_PROTOCOL.md`
7. `governance/DECISION_LOG.md`
8. `governance/RISK_REGISTER.md`
9. `governance/OPEN_QUESTIONS.md`

Authority order:

1. explicit Product Owner decision;
2. ratified governance and task documents;
3. this Codex adapter;
4. session conversation;
5. hidden or automatic model memory.

Governance documents outrank adapter instructions. Hidden memory and chat history are never canonical.
