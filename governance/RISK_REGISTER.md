# Risk Register

| ID | Status | Severity | Risk | Mitigation | Owner | Evidence |
|---|---|---|---|---|---|---|
| RISK-P00-001 | Active | Medium | Hook scripts may over-block valid Claude Code actions. | Keep hooks unregistered until redesigned, fixture-tested, interactively validated, and Product Owner-approved. | Product Owner | `governance/tasks/CONT-P00-ONB-001.md` |
| RISK-P00-002 | Active | Medium | Governance files may drift from Claude adapter instructions. | Governance outranks adapters; require conflict escalation and consistency audit. | Product Owner | `CLAUDE.md`, `AGENTS.md`, `governance/CHANGE_PROTOCOL.md` |
| RISK-P00-003 | Active | High | Secrets could be accidentally stored in project-control files. | `.gitignore`, Claude deny rules, security rules, hook policy, secret scan, explicit secret prohibition. | Product Owner | `governance/DECISION_LOG.md`, `governance/tasks/CONT-P00-ONB-001.md` |
| RISK-P00-004 | Active | Medium | `.continuum/` bootstrap projection may be mistaken for final format. | Mark manifest and index as provisional and derived. | Product Owner | `.continuum/manifest.yaml` |
| RISK-P00-005 | Active | Medium | Claude Code project configuration has not been interactively runtime-validated. | Product Owner must run interactive Claude smoke test before Gate F; this is not automatically a blocker for initial local commit if static validation passes. | Product Owner | `governance/HANDOFF.md`, `governance/tasks/CONT-P00-ONB-001.md` |
