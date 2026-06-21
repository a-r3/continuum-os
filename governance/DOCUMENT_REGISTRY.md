---
doc_status: ratified_evolving
owner: Product Owner
ratification_status: RATIFIED
last_ratified_by: Rauf Alizada
last_ratified_at: 2026-06-21
source_task: CONT-P01-BUNDLE-005
supersedes:
superseded_by:
---

# Document Registry

## Status Notice

This Bundle 5 registry update is **ratified** as `ratified_evolving` governance registry content, ratified by the Product Owner `Rauf Alizada` under task `CONT-P01-BUNDLE-005`. Per-document ratification status reflects each document's own ratification, not this registry update. Ratification of this registry update does not authorize adapter-rule changes (`CLAUDE.md`, `AGENTS.md`, `.claude/rules/`), hook changes, architecture, implementation, license, dependency, settings, project-code changes, P01 closeout, or P02 activation; each of those requires separate explicit Product Owner approval.

## Scope

The registry tracks canonical governance documents, active/proposed task records, agent entry points, and key derived Continuum entry points. It does not enumerate every fixture, boundary README, rule, subagent, or skill unless separate registration becomes operationally necessary.

## Registered Documents

| Path | Category | Purpose | Status | Source task | Ratification status | Decision IDs | Owner | Notes |
|---|---|---|---|---|---|---|---|---|
| `CLAUDE.md` | Agent entry point | Claude Code adapter entry and cold-start reading order | Active | — | Not applicable (adapter behavioral guidance) | — | Product Owner | Adapter; subordinate to ratified governance |
| `AGENTS.md` | Agent adapter | Generic agent adapter notes | Active | — | Not applicable (adapter behavioral guidance) | — | Product Owner | Adapter; subordinate to ratified governance |
| `governance/PROJECT_STATE.md` | Governance | Canonical current state and Product Owner identity encoding | Active-state (P01 closed; P02 active; active task `CONT-P02-ONB-001`) | `CONT-P01-BUNDLE-001` (identity encoding section) | Product Owner identity encoding section RATIFIED; rest active-state | `DEC-P01-B1-002`, `DEC-P02-ACTIVATION-001` | Product Owner | Canonical |
| `governance/CURRENT_PHASE.md` | Governance | Canonical phase contract | Active-state (P02 active; gate `P02_DOMAIN_GOVERNANCE_SECURITY_DISCOVERY`) | — | Active-state | `DEC-P02-ACTIVATION-001` | Product Owner | Canonical |
| `governance/ACTIVE_TASK.md` | Governance | Canonical single-active-task contract | Active-state (single active task `CONT-P02-ONB-001`) | — | Active-state | `DEC-P02-ACTIVATION-001` | Product Owner | Canonical; enforces active-task invariant |
| `governance/HANDOFF.md` | Governance | Current handoff and next action | Active-state (P02 active; awaiting first P02 discovery plan) | — | Active-state | `DEC-P02-ACTIVATION-001` | Product Owner | Canonical |
| `governance/ROADMAP.md` | Governance | Canonical lifecycle and phase model | Ratified (`ratified_evolving`); Bundle 5 update ratified; reflects P01 closeout | `CONT-P01-BUNDLE-005` (Bundle 5 update) | RATIFIED | `DEC-P01-B5-002`, `DEC-P01-CLOSEOUT-001`, `DEC-P02-ACTIVATION-001` | Product Owner | Canonical |
| `governance/DOCUMENT_REGISTRY.md` | Governance | Canonical document authority registry (this document) | Ratified (`ratified_evolving`); Bundle 5 update ratified | `CONT-P01-BUNDLE-005` (Bundle 5 update) | RATIFIED | `DEC-P01-B5-003`, `DEC-P02-ACTIVATION-001` | Product Owner | Canonical |
| `governance/PRODUCT_CHARTER.md` | Governance | Canonical product charter | Ratified (`ratified_evolving`) | `CONT-P01-BUNDLE-001` | RATIFIED | `DEC-P01-B1-001` | Product Owner | Canonical |
| `governance/GLOSSARY.md` | Governance | Canonical terminology and knowledge model | Ratified (`ratified_evolving`) | `CONT-P01-BUNDLE-002` | RATIFIED | `DEC-P01-B2-001` | Product Owner | Canonical |
| `governance/CHANGE_PROTOCOL.md` | Governance | Canonical lifecycle protocol and approval-verb discipline | Ratified (`ratified_evolving`) | `CONT-P01-BUNDLE-003` | RATIFIED | `DEC-P01-B3-001` | Product Owner | Canonical |
| `governance/NEVER_AUTOMATIC.md` | Governance | Canonical never-automatic guardrail | Ratified (`ratified_evolving`) | `CONT-P01-BUNDLE-003` | RATIFIED | `DEC-P01-B3-002` | Product Owner | Canonical |
| `governance/TRUST_BOUNDARIES.md` | Governance | Canonical trust boundaries | Ratified (`ratified_evolving`) | `CONT-P01-BUNDLE-004` | RATIFIED | `DEC-P01-B4-001` | Product Owner | Canonical |
| `governance/RISK_REGISTER.md` | Governance | Canonical risks | Active; Bundle 4 P01 top-risk section ratified (`ratified_evolving`) | `CONT-P01-BUNDLE-004` (Bundle 4 update) | Bundle 4 P01 top-risk section RATIFIED | `DEC-P01-B4-002` | Product Owner | Canonical |
| `governance/DECISION_LOG.md` | Governance | Canonical decisions | Active append-only | — | Records ratified decisions (`DEC-P01-B1-001`, `DEC-P01-B1-002`, `DEC-P01-B2-001`, `DEC-P01-B3-001`, `DEC-P01-B3-002`, `DEC-P01-B4-001`, `DEC-P01-B4-002`, `DEC-P01-B5-001`, `DEC-P01-B5-002`, `DEC-P01-B5-003`, `DEC-P01-CLOSEOUT-001`, `DEC-P02-ACTIVATION-001`) | `DEC-P01-B1-001`, `DEC-P01-B1-002`, `DEC-P01-B2-001`, `DEC-P01-B3-001`, `DEC-P01-B3-002`, `DEC-P01-B4-001`, `DEC-P01-B4-002`, `DEC-P01-B5-001`, `DEC-P01-B5-002`, `DEC-P01-B5-003`, `DEC-P01-CLOSEOUT-001`, `DEC-P02-ACTIVATION-001` | Product Owner | Canonical |
| `governance/OPEN_QUESTIONS.md` | Governance | Canonical unresolved questions | Active | — | Active-state | — | Product Owner | Canonical |
| `governance/SESSION_LOG.md` | Governance | Historical append-only session log | Active append-only | — | Evidence (not ratified content) | — | Product Owner | Canonical evidence |
| `docs/REFERENCE_STRUCTURE.md` | Reference | Canonical cold-start reference structure | Ratified (`ratified_evolving`) | `CONT-P01-BUNDLE-005` | RATIFIED | `DEC-P01-B5-001` | Product Owner | Bundle 5 deliverable |
| `governance/tasks/CONT-P00-ONB-001.md` | Task record | P00 onboarding task | Closed/Completed | `CONT-P00-ONB-001` | Closed | — | Product Owner | Historical |
| `governance/tasks/CONT-P01-ONB-001.md` | Task record | P01 founder onboarding task | Closed/Completed | `CONT-P01-ONB-001` | Closed | — | Product Owner | Historical |
| `governance/tasks/CONT-P01-CONSOL-001.md` | Task record | P01 consolidation planning | Closed/Completed | `CONT-P01-CONSOL-001` | Closed | — | Product Owner | Historical |
| `governance/tasks/CONT-P01-BUNDLE-001.md` | Task record | P01 Bundle 1 Identity and Scope | Closed/Completed | `CONT-P01-BUNDLE-001` | RATIFIED (deliverables) | `DEC-P01-B1-001`, `DEC-P01-B1-002` | Product Owner | Historical |
| `governance/tasks/CONT-P01-BUNDLE-002.md` | Task record | P01 Bundle 2 Terminology and Knowledge Model | Closed/Completed | `CONT-P01-BUNDLE-002` | RATIFIED (deliverable) | `DEC-P01-B2-001` | Product Owner | Historical |
| `governance/tasks/CONT-P01-BUNDLE-003.md` | Task record | P01 Bundle 3 Authority, Change Protocol, and Never-Automatic Guardrail | Closed/Completed | `CONT-P01-BUNDLE-003` | RATIFIED (deliverables) | `DEC-P01-B3-001`, `DEC-P01-B3-002` | Product Owner | Historical |
| `governance/tasks/CONT-P01-BUNDLE-004.md` | Task record | P01 Bundle 4 Trust Boundaries and Risk Register | Closed/Completed | `CONT-P01-BUNDLE-004` | RATIFIED (deliverables) | `DEC-P01-B4-001`, `DEC-P01-B4-002` | Product Owner | Historical |
| `governance/tasks/CONT-P01-BUNDLE-005.md` | Task record | P01 Bundle 5 Reference Structure, Roadmap, Adapter Alignment, and P01 Closeout | Closed/Completed | `CONT-P01-BUNDLE-005` | RATIFIED (deliverables); P01 closed under `DEC-P01-CLOSEOUT-001` | `DEC-P01-B5-001`, `DEC-P01-B5-002`, `DEC-P01-B5-003`, `DEC-P01-CLOSEOUT-001` | Product Owner | Historical |
| `governance/tasks/CONT-P02-ONB-001.md` | Task record | P02 Domain, Governance, and Security Discovery | Active / In Progress | `CONT-P02-ONB-001` | APPROVED_FOR_EXECUTION (activation only); no P02 deliverables ratified | `DEC-P02-ACTIVATION-001` | Product Owner | Single active task; gate `P02_DOMAIN_GOVERNANCE_SECURITY_DISCOVERY` |
| `governance/CONTEXT_POLICY.md` | Governance | Canonical Context Policy defining layered context architecture, authority model, generated-pack limits, staleness handling, and escalation rules | Ratified | `CONT-P02-ONB-001` | RATIFIED | `DEC-P02-CONTEXT-POLICY-001` | Product Owner | Ratified canonical Context Policy; governs context authority separation, context modes, generated-pack limits, staleness handling, and escalation rules. |
| `.continuum/manifest.yaml` | Continuum projection | Derived provisional projection manifest | Bootstrap only | — | Derived; not ratified content | — | Product Owner | Derived |
| `.continuum/index.md` | Continuum projection | Derived provisional projection index | Bootstrap only | — | Derived; not ratified content | — | Product Owner | Derived |

## Ratified Decision References

The following decision IDs from `governance/DECISION_LOG.md` are referenced by registered documents:

- `DEC-P01-B1-001` — Product Charter ratification.
- `DEC-P01-B1-002` — Product Owner identity encoding ratification.
- `DEC-P01-B2-001` — Glossary ratification.
- `DEC-P01-B3-001` — Change Protocol ratification.
- `DEC-P01-B3-002` — Never-Automatic Guardrail ratification.
- `DEC-P01-B4-001` — Trust Boundaries ratification.
- `DEC-P01-B4-002` — Risk Register Bundle 4 P01 top-risk update ratification.
- `DEC-P01-B5-001` — Reference Structure (`docs/REFERENCE_STRUCTURE.md`) ratification.
- `DEC-P01-B5-002` — Roadmap (`governance/ROADMAP.md`) Bundle 5 update ratification.
- `DEC-P01-B5-003` — Document Registry (`governance/DOCUMENT_REGISTRY.md`) Bundle 5 update ratification.
- `DEC-P01-CLOSEOUT-001` — P01 Founder Discovery and Product Definition closeout after ratification of Bundles 1–5.
- `DEC-P02-ACTIVATION-001` — P02 Domain, Governance, and Security Discovery activation via activating `CONT-P02-ONB-001` as the single active task.

## Duplicate Authority Rule

No registered derived or adapter document may override canonical governance. If duplication appears, the canonical governance document wins and the duplicate must be corrected or removed.

## Ratification Evidence

- The Product Owner (`Rauf Alizada`) ratified the `governance/DOCUMENT_REGISTRY.md` Bundle 5 registry update under task `CONT-P01-BUNDLE-005`.
- Ratification is recorded in `governance/DECISION_LOG.md` as `DEC-P01-B5-003`.
- Document status is `ratified_evolving`; frontmatter records `ratification_status: RATIFIED`, `last_ratified_by: Rauf Alizada`, and `last_ratified_at: 2026-06-21`.
- Per-document ratification status in the registry continues to reflect each document's own ratification.
- Future changes to this registry require a separately approved Product Owner-ratified governance change.
- Ratification of this registry update does not authorize adapter-rule changes (`CLAUDE.md`, `AGENTS.md`, `.claude/rules/`), hook changes, architecture, implementation, license, dependency, settings, project-code changes, P01 closeout, or P02 activation; each of those requires separate explicit Product Owner approval.
