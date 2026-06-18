# Document Registry

## Scope

The registry tracks canonical governance documents, active/proposed task records, agent entry points, and key derived Continuum entry points. It does not enumerate every fixture, boundary README, rule, subagent, or skill unless separate registration becomes operationally necessary.

## Registered Documents

| Path | Category | Authority | Lifecycle status | Owner |
|---|---|---|---|---|
| `CLAUDE.md` | Agent entry point | Tool-specific | Active | Product Owner |
| `AGENTS.md` | Agent adapter | Tool-specific | Active | Product Owner |
| `governance/PROJECT_STATE.md` | Governance | Canonical current state | Active | Product Owner |
| `governance/CURRENT_PHASE.md` | Governance | Canonical phase contract | Active | Product Owner |
| `governance/ACTIVE_TASK.md` | Governance | Canonical task contract | Active | Product Owner |
| `governance/ROADMAP.md` | Governance | Canonical lifecycle | Active | Product Owner |
| `governance/DECISION_LOG.md` | Governance | Canonical decisions | Active | Product Owner |
| `governance/SESSION_LOG.md` | Governance | Historical append-only | Active | Product Owner |
| `governance/HANDOFF.md` | Governance | Current handoff | Active | Product Owner |
| `governance/DOCUMENT_REGISTRY.md` | Governance | Canonical document authority registry | Active | Product Owner |
| `governance/RISK_REGISTER.md` | Governance | Canonical risks | Active | Product Owner |
| `governance/OPEN_QUESTIONS.md` | Governance | Canonical unresolved questions | Active | Product Owner |
| `governance/CHANGE_PROTOCOL.md` | Governance | Canonical lifecycle protocol | Active | Product Owner |
| `governance/tasks/CONT-P00-ONB-001.md` | Task record | Canonical active task | Active | Product Owner |
| `governance/tasks/CONT-P01-ONB-001.md` | Task record | Proposed task | Proposed | Product Owner |
| `.continuum/manifest.yaml` | Continuum projection | Derived provisional | Bootstrap only | Product Owner |
| `.continuum/index.md` | Continuum projection | Derived provisional | Bootstrap only | Product Owner |

## Duplicate Authority Rule

No registered derived or adapter document may override canonical governance. If duplication appears, the canonical governance document wins and the duplicate must be corrected or removed.
