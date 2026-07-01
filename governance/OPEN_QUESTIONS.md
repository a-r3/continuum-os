# Open Questions

Do not invent answers. Resolve only through Product Owner ratification.

| ID | Status | Question | Target Phase | Notes |
|---|---|---|---|---|
| OQ-P01-001 | Open | What license should govern this repository? | P01 | `LICENSE` is intentionally omitted during P00. |
| OQ-P01-002 | Open | What is the ratified product charter for Continuum OS? | P01 | To be discovered by Claude Code with the Product Owner. |
| OQ-P01-003 | Open | What terminology should be ratified for memory, state, decisions, evidence, and handoff? | P01 | No final terminology is ratified in P00. |
| OQ-P02-D-001 | Open | Should `Project` and `Workspace` be ratified as distinct domain concepts or unified at v1? | P02 | Source: `DEC-P02-DOMAIN-DISCOVERY-001`. Owner: `Rauf Alizada`. See `## P02 Question Details` below. |
| OQ-P02-D-002 | Open | Should `Plan` remain a task-internal section or become a first-class domain artifact with its own lifecycle? | P02 | Source: `DEC-P02-DOMAIN-DISCOVERY-001`. Owner: `Rauf Alizada`. See `## P02 Question Details` below. |
| OQ-P02-D-003 | Open | Should `Deliverable Draft` be ratified as a distinct domain concept separate from `Document` and `Task`? | P02 | Source: `DEC-P02-DOMAIN-DISCOVERY-001`. Owner: `Rauf Alizada`. See `## P02 Question Details` below. |
| OQ-P02-D-004 | Open | What is the canonical granularity of `Evidence` (per-decision, per-section, per-fixture, per-commit) at the domain level? | P02 | Source: `DEC-P02-DOMAIN-DISCOVERY-001`. Owner: `Rauf Alizada`. See `## P02 Question Details` below. |
| OQ-P02-D-005 | Open | What is the canonical naming, scope, and boundary of the `Generated Context Pack` as a domain concept? | P02 | Source: `DEC-P02-DOMAIN-DISCOVERY-001`. Owner: `Rauf Alizada`. See `## P02 Question Details` below. |
| OQ-P02-D-006 | Open | Is `Approval Verb` a first-class domain concept or strictly a governance-procedure rule? | P02 | Source: `DEC-P02-DOMAIN-DISCOVERY-001`. Owner: `Rauf Alizada`. See `## P02 Question Details` below. |
| OQ-P02-D-007 | Open | Is `Agent` a domain concept of Continuum OS or strictly an adapter/runtime concern? | P02 | Source: `DEC-P02-DOMAIN-DISCOVERY-001`. Owner: `Rauf Alizada`. See `## P02 Question Details` below. |
| OQ-P02-D-008 | Open | Is `Reserved Directory` a domain concept or a repository-mechanics concept only? | P02 | Source: `DEC-P02-DOMAIN-DISCOVERY-001`. Owner: `Rauf Alizada`. See `## P02 Question Details` below. |
| OQ-P02-D-009 | Open | How does deferred token-efficiency sibling work (reading-policy table, tag vocabulary, baseline token-cost method) relate to the domain model? | P02 | Source: `DEC-P02-DOMAIN-DISCOVERY-001`. Owner: `Rauf Alizada`. See `## P02 Question Details` below. |
| OQ-P02-S-001 | Open | Which candidate security/trust requirements should become canonical P02 requirements vs deferred to P03/P04? | P02 | Source: `DEC-P02-SECURITY-TRUST-REQUIREMENTS-001`. Owner: `Rauf Alizada`. See `## P02 Question Details` below. |
| OQ-P02-S-002 | Open | Should hook activation be encoded in a separate gate document or remain inside the security/trust draft? | P02 | Source: `DEC-P02-SECURITY-TRUST-REQUIREMENTS-001`. Owner: `Rauf Alizada`. See `## P02 Question Details` below. |
| OQ-P02-S-003 | Open | Should Git destructive-command approval be encoded as a standalone `GIT_SAFETY.md` or remain inside existing governance? | P02 | Source: `DEC-P02-SECURITY-TRUST-REQUIREMENTS-001`, `DEC-P02-DATA-CLASSIFICATION-001`. Owner: `Rauf Alizada`. See `## P02 Question Details` below. |
| OQ-P02-S-004 | Open | Should a dedicated `SECRETS_POLICY.md` be created, or should secret-handling remain in `TRUST_BOUNDARIES.md` / the security-trust draft? | P02 | Source: `DEC-P02-SECURITY-TRUST-REQUIREMENTS-001`, `DEC-P02-DATA-CLASSIFICATION-001`. Owner: `Rauf Alizada`. See `## P02 Question Details` below. |
| OQ-P02-S-005 | Open | How should agent-behavior requirements be split between governance documents and adapter rules (`CLAUDE.md`, `AGENTS.md`, `.claude/rules/`)? | P02 | Source: `DEC-P02-SECURITY-TRUST-REQUIREMENTS-001`. Owner: `Rauf Alizada`. See `## P02 Question Details` below. |
| OQ-P02-S-006 | Disposed for P04-readiness (accepted, no runtime yet) | How should multi-client privacy/isolation be expressed at v1, given no multi-tenant runtime exists? | P02 | Source: `DEC-P02-SECURITY-TRUST-REQUIREMENTS-001`, `DEC-P02-DATA-CLASSIFICATION-001`. Owner: `Rauf Alizada`. P04-readiness disposition: `DEC-P04-DISP-002` (ratified 2026-07-02). See `## P02 Question Details` below. |
| OQ-P02-S-007 | Open | Should a dedicated `EVIDENCE_POLICY.md` be created, or should evidence rules remain distributed across `CHANGE_PROTOCOL.md`, `TRUST_BOUNDARIES.md`, and task records? | P02 | Source: `DEC-P02-SECURITY-TRUST-REQUIREMENTS-001`. Owner: `Rauf Alizada`. See `## P02 Question Details` below. |
| OQ-P02-S-008 | Open | Which candidate misuse/failure scenarios should be promoted into `RISK_REGISTER.md` rows under a separately approved update? | P02 | Source: `DEC-P02-SECURITY-TRUST-REQUIREMENTS-001`. Owner: `Rauf Alizada`. See `## P02 Question Details` below. |
| OQ-P02-S-009 | Open | How are candidate security/trust requirements measured/validated at the governance level before any hooks are activated? | P02 | Source: `DEC-P02-SECURITY-TRUST-REQUIREMENTS-001`. Owner: `Rauf Alizada`. See `## P02 Question Details` below. |
| OQ-P02-C-001 | Open | Which candidate data classes and sensitivity levels should be ratified as canonical classification labels in P02 vs deferred to P03/P04? | P02 | Source: `DEC-P02-DATA-CLASSIFICATION-001`. Owner: `Rauf Alizada`. See `## P02 Question Details` below. |
| OQ-P02-C-002 | Open | Should sensitivity levels become a standalone `SENSITIVITY_LEVELS.md` document or remain inside the data-classification draft? | P02 | Source: `DEC-P02-DATA-CLASSIFICATION-001`. Owner: `Rauf Alizada`. See `## P02 Question Details` below. |
| OQ-P02-C-003 | Open | Where should secret-handling boundaries (Secret-Bound-1..5) live — dedicated `SECRETS_POLICY.md`, `TRUST_BOUNDARIES.md`, security-trust draft, or data-classification draft? | P02 | Source: `DEC-P02-DATA-CLASSIFICATION-001`, `DEC-P02-SECURITY-TRUST-REQUIREMENTS-001`. Owner: `Rauf Alizada`. See `## P02 Question Details` below. |
| OQ-P02-C-004 | Open | Should generated-context boundaries (Context-Bound-1..5) be folded into ratified `CONTEXT_POLICY.md` / `CONTEXT_RETRIEVAL_PROTOCOL.md` or remain a separate classification concern? | P02 | Source: `DEC-P02-DATA-CLASSIFICATION-001`. Owner: `Rauf Alizada`. See `## P02 Question Details` below. |
| OQ-P02-C-005 | Disposed for P04-readiness (accepted, no runtime yet) | How should client / external / private data isolation be expressed at v1, given no multi-tenant runtime exists yet? | P02 | Source: `DEC-P02-DATA-CLASSIFICATION-001`. Owner: `Rauf Alizada`. P04-readiness disposition: `DEC-P04-DISP-002` (ratified 2026-07-02). See `## P02 Question Details` below. |
| OQ-P02-C-006 | Open | Should destructive-command evidence (Class-13) be encoded as a standalone `GIT_SAFETY.md` / destructive-command log or remain inside the data-classification draft and `TRUST_BOUNDARIES.md`? | P02 | Source: `DEC-P02-DATA-CLASSIFICATION-001`. Owner: `Rauf Alizada`. See `## P02 Question Details` below. |
| OQ-P02-C-007 | Open | Should path-leak and local-environment-metadata boundaries (External-Bound-3) become an explicit redaction policy or remain a candidate handling requirement? | P02 | Source: `DEC-P02-DATA-CLASSIFICATION-001`. Owner: `Rauf Alizada`. See `## P02 Question Details` below. |
| OQ-P02-C-008 | Open | Which candidate data classes should produce `RISK_REGISTER.md` rows under a separately approved update, and which remain candidate-only? | P02 | Source: `DEC-P02-DATA-CLASSIFICATION-001`. Owner: `Rauf Alizada`. See `## P02 Question Details` below. |
| OQ-P02-C-009 | Open | How are candidate handling requirements measured/validated at the governance level before any hooks are activated? | P02 | Source: `DEC-P02-DATA-CLASSIFICATION-001`. Owner: `Rauf Alizada`. See `## P02 Question Details` below. |
| OQ-P02-C-010 | Open | Should the mapping from data class to sensitivity level be encoded as a normative table in a future ratified document, or remain a candidate mapping? | P02 | Source: `DEC-P02-DATA-CLASSIFICATION-001`. Owner: `Rauf Alizada`. See `## P02 Question Details` below. |

## P02 Question Details

P02 questions are projected from the ratified P02 discovery artifacts under `DEC-P02-DOMAIN-DISCOVERY-001`, `DEC-P02-SECURITY-TRUST-REQUIREMENTS-001`, and `DEC-P02-DATA-CLASSIFICATION-001`. Every question below is `Open` and has not been resolved by ratified governance. The Product Owner (`Rauf Alizada`) is the sole authority for resolution. No automatic resolution is permitted; closing a question requires a separately approved Product Owner verb that records the resolution in `governance/DECISION_LOG.md`. The source task for every question is `CONT-P02-ONB-001`.

### From DEC-P02-DOMAIN-DISCOVERY-001

- **OQ-P02-D-001** — Project vs Workspace.
  - status: `Open`; source task: `CONT-P02-ONB-001`; source decision: `DEC-P02-DOMAIN-DISCOVERY-001`; owner: `Rauf Alizada`.
  - question: Should `Project` and `Workspace` be ratified as distinct domain concepts, or unified at v1?
  - why it matters: Concept separation affects how tasks, decisions, evidence, and generated context are scoped.
  - impact if unresolved: Future architecture/implementation work risks conflating per-project state with per-workspace state.
  - no automatic resolution.
- **OQ-P02-D-002** — Plan as task-internal vs first-class.
  - status: `Open`; source task: `CONT-P02-ONB-001`; source decision: `DEC-P02-DOMAIN-DISCOVERY-001`; owner: `Rauf Alizada`.
  - question: Should `Plan` remain a task-internal section, or become a first-class artifact with its own lifecycle and ratification path?
  - why it matters: Determines whether plans get their own `DEC-*` records and document-registry entries.
  - impact if unresolved: Plan provenance and approval-verb scope remain ambiguous.
  - no automatic resolution.
- **OQ-P02-D-003** — Deliverable Draft as distinct concept.
  - status: `Open`; source task: `CONT-P02-ONB-001`; source decision: `DEC-P02-DOMAIN-DISCOVERY-001`; owner: `Rauf Alizada`.
  - question: Should `Deliverable Draft` be ratified as a distinct domain concept separate from `Document` and `Task`?
  - why it matters: Affects lifecycle states (proposed/ratified) and how draft authority is tracked.
  - impact if unresolved: Draft-vs-document boundaries remain implicit per-task convention.
  - no automatic resolution.
- **OQ-P02-D-004** — Evidence granularity.
  - status: `Open`; source task: `CONT-P02-ONB-001`; source decision: `DEC-P02-DOMAIN-DISCOVERY-001`; owner: `Rauf Alizada`.
  - question: What is the canonical granularity of `Evidence` — per-decision, per-section, per-fixture, per-commit?
  - why it matters: Determines what counts as a single evidence unit for ratification.
  - impact if unresolved: Evidence references in `DECISION_LOG.md` and task files remain non-uniform.
  - no automatic resolution.
- **OQ-P02-D-005** — Generated Context Pack naming/scope/boundary.
  - status: `Open`; source task: `CONT-P02-ONB-001`; source decision: `DEC-P02-DOMAIN-DISCOVERY-001`; owner: `Rauf Alizada`.
  - question: What is the canonical naming, scope, and trust boundary of the `Generated Context Pack`?
  - why it matters: Affects context-policy enforcement and the rules under which `.continuum/` artifacts may be generated.
  - impact if unresolved: Future pack generation may collide with ratified `CONTEXT_POLICY.md` / `CONTEXT_BUDGET.md` / `CONTEXT_RETRIEVAL_PROTOCOL.md` semantics.
  - no automatic resolution.
- **OQ-P02-D-006** — Approval Verb as domain concept.
  - status: `Open`; source task: `CONT-P02-ONB-001`; source decision: `DEC-P02-DOMAIN-DISCOVERY-001`; owner: `Rauf Alizada`.
  - question: Is `Approval Verb` a first-class domain concept, or strictly a governance-procedure rule attached to `CHANGE_PROTOCOL.md`?
  - why it matters: Determines whether approval verbs are modeled in glossary, registry, or only in protocol.
  - impact if unresolved: Approval-verb authority remains conceptually overloaded.
  - no automatic resolution.
- **OQ-P02-D-007** — Agent as domain concept.
  - status: `Open`; source task: `CONT-P02-ONB-001`; source decision: `DEC-P02-DOMAIN-DISCOVERY-001`; owner: `Rauf Alizada`.
  - question: Is `Agent` a domain concept of Continuum OS, or strictly an adapter/runtime concern?
  - why it matters: Affects whether agent identity, role, and trust are encoded in governance or only in `.claude/agents/` and adapter rules.
  - impact if unresolved: Agent trust separation remains implicit.
  - no automatic resolution.
- **OQ-P02-D-008** — Reserved Directory as domain concept.
  - status: `Open`; source task: `CONT-P02-ONB-001`; source decision: `DEC-P02-DOMAIN-DISCOVERY-001`; owner: `Rauf Alizada`.
  - question: Is `Reserved Directory` a domain concept, or a repository-mechanics concept only?
  - why it matters: Affects how `governance/`, `docs/`, `.claude/`, and `.continuum/` are encoded as trust/scope surfaces.
  - impact if unresolved: Reserved-directory authority remains implicit per-adapter convention.
  - no automatic resolution.
- **OQ-P02-D-009** — Deferred token-efficiency sibling work.
  - status: `Open`; source task: `CONT-P02-ONB-001`; source decision: `DEC-P02-DOMAIN-DISCOVERY-001`; owner: `Rauf Alizada`.
  - question: How does deferred token-efficiency sibling work (Reading Policy Table, tag vocabulary, baseline token-cost measurement method) relate to the canonical domain model?
  - why it matters: Determines whether these concepts become domain-level or remain context-policy-internal.
  - impact if unresolved: Token-efficiency vocabulary remains unanchored to a canonical domain.
  - no automatic resolution.

### From DEC-P02-SECURITY-TRUST-REQUIREMENTS-001

- **OQ-P02-S-001** — Canonical P02 requirements vs deferred P03/P04.
  - status: `Open`; source task: `CONT-P02-ONB-001`; source decision: `DEC-P02-SECURITY-TRUST-REQUIREMENTS-001`; owner: `Rauf Alizada`.
  - question: Which candidate security/trust requirements should become canonical P02 requirements vs deferred to P03/P04?
  - why it matters: Affects which controls bind subsequent gates and which remain candidate-only.
  - impact if unresolved: Candidate requirements remain non-binding indefinitely.
  - no automatic resolution.
- **OQ-P02-S-002** — Hook activation gate document.
  - status: `Open`; source task: `CONT-P02-ONB-001`; source decision: `DEC-P02-SECURITY-TRUST-REQUIREMENTS-001`; owner: `Rauf Alizada`.
  - question: Should hook activation be encoded in a separate gate document, or remain inside the security/trust draft?
  - why it matters: Determines how hook activation provenance is recorded.
  - impact if unresolved: Hook-activation authority remains implicit.
  - no automatic resolution.
- **OQ-P02-S-003** — `GIT_SAFETY.md`.
  - status: `Open`; source task: `CONT-P02-ONB-001`; source decisions: `DEC-P02-SECURITY-TRUST-REQUIREMENTS-001`, `DEC-P02-DATA-CLASSIFICATION-001`; owner: `Rauf Alizada`.
  - question: Should Git destructive-command approval be encoded as a standalone `GIT_SAFETY.md`, or remain inside `.claude/rules/06-git-workflow.md` and `TRUST_BOUNDARIES.md`?
  - why it matters: Affects whether destructive-command rules are governance-canonical or adapter-canonical.
  - impact if unresolved: Destructive-command authority remains split.
  - no automatic resolution.
- **OQ-P02-S-004** — `SECRETS_POLICY.md`.
  - status: `Open`; source task: `CONT-P02-ONB-001`; source decisions: `DEC-P02-SECURITY-TRUST-REQUIREMENTS-001`, `DEC-P02-DATA-CLASSIFICATION-001`; owner: `Rauf Alizada`.
  - question: Should a dedicated `SECRETS_POLICY.md` be created, or should secret-handling remain in `TRUST_BOUNDARIES.md` / the security-trust draft / the data-classification draft?
  - why it matters: Affects whether secrets are governed by a single canonical document.
  - impact if unresolved: Secret-handling authority remains distributed.
  - no automatic resolution.
- **OQ-P02-S-005** — Agent behavior split between governance and adapter rules.
  - status: `Open`; source task: `CONT-P02-ONB-001`; source decision: `DEC-P02-SECURITY-TRUST-REQUIREMENTS-001`; owner: `Rauf Alizada`.
  - question: How should agent-behavior requirements be split between governance documents and adapter rules (`CLAUDE.md`, `AGENTS.md`, `.claude/rules/`)?
  - why it matters: Affects which behaviors are agent-agnostic vs adapter-specific.
  - impact if unresolved: Agent-behavior authority remains overloaded.
  - no automatic resolution.
- **OQ-P02-S-006** — Multi-client privacy/isolation at v1.
  - status: `Disposed for P04-readiness`; source task: `CONT-P02-ONB-001`; source decisions: `DEC-P02-SECURITY-TRUST-REQUIREMENTS-001`, `DEC-P02-DATA-CLASSIFICATION-001`; owner: `Rauf Alizada`.
  - question: How should multi-client privacy/isolation be expressed at v1, given no multi-tenant runtime exists?
  - why it matters: Defines whether multi-client isolation is a governance posture or only a future-architecture concern.
  - impact if unresolved: Cross-client expectations remain undefined.
  - P04-readiness disposition: accepted as explicitly deferred future-architecture work under `DEC-P04-DISP-002` (ratified 2026-07-02) — no multi-tenant runtime exists to isolate yet; the underlying scope/isolation-model question (`P02-ROAD-007`) remains scheduled. This does not resolve `OQ-P02-D-001`, `OQ-P02-C-003`, or `OQ-P02-D-006`, which remain open/deferred-with-acceptance unchanged.
- **OQ-P02-S-007** — `EVIDENCE_POLICY.md`.
  - status: `Open`; source task: `CONT-P02-ONB-001`; source decision: `DEC-P02-SECURITY-TRUST-REQUIREMENTS-001`; owner: `Rauf Alizada`.
  - question: Should a dedicated `EVIDENCE_POLICY.md` be created, or should evidence rules remain distributed across `CHANGE_PROTOCOL.md`, `TRUST_BOUNDARIES.md`, and task records?
  - why it matters: Affects whether evidence rules are single-sourced.
  - impact if unresolved: Evidence authority remains distributed.
  - no automatic resolution.
- **OQ-P02-S-008** — Misuse scenarios as risk rows.
  - status: `Open`; source task: `CONT-P02-ONB-001`; source decision: `DEC-P02-SECURITY-TRUST-REQUIREMENTS-001`; owner: `Rauf Alizada`.
  - question: Which candidate misuse/failure scenarios should be promoted into `RISK_REGISTER.md` rows under a separately approved update?
  - why it matters: Determines which scenarios become tracked risks vs candidate-only.
  - impact if unresolved: Misuse scenarios remain candidate-only.
  - no automatic resolution.
- **OQ-P02-S-009** — Governance-level validation before hook activation.
  - status: `Open`; source task: `CONT-P02-ONB-001`; source decision: `DEC-P02-SECURITY-TRUST-REQUIREMENTS-001`; owner: `Rauf Alizada`.
  - question: How are candidate security/trust requirements measured/validated at the governance level before any hooks are activated?
  - why it matters: Defines the governance-level acceptance check that precedes any future hook activation.
  - impact if unresolved: Hook activation lacks a governance-level acceptance contract.
  - no automatic resolution.

### From DEC-P02-DATA-CLASSIFICATION-001

- **OQ-P02-C-001** — Canonical data classes / sensitivity levels.
  - status: `Open`; source task: `CONT-P02-ONB-001`; source decision: `DEC-P02-DATA-CLASSIFICATION-001`; owner: `Rauf Alizada`.
  - question: Which of the candidate data classes (Class-1..14) and candidate sensitivity levels (Level-Public / Level-Authority / Level-Evidence / Level-Untrusted / Level-Restricted / Level-Boundary) should be ratified as canonical classification labels in P02, and which should be deferred to P03/P04?
  - why it matters: Determines binding classification labels for future hook activation and policy work.
  - impact if unresolved: All classes/levels remain candidate-only.
  - no automatic resolution.
- **OQ-P02-C-002** — `SENSITIVITY_LEVELS.md`.
  - status: `Open`; source task: `CONT-P02-ONB-001`; source decision: `DEC-P02-DATA-CLASSIFICATION-001`; owner: `Rauf Alizada`.
  - question: Should sensitivity levels become a standalone `SENSITIVITY_LEVELS.md` document, or remain inside the data-classification draft?
  - why it matters: Affects document boundaries and ratification surface.
  - impact if unresolved: Sensitivity-level authority remains co-located with classification.
  - no automatic resolution.
- **OQ-P02-C-003** — Secret-handling boundary location.
  - status: `Open`; source task: `CONT-P02-ONB-001`; source decisions: `DEC-P02-DATA-CLASSIFICATION-001`, `DEC-P02-SECURITY-TRUST-REQUIREMENTS-001`; owner: `Rauf Alizada`.
  - question: Where should secret-handling boundaries (Secret-Bound-1..5) live — dedicated `SECRETS_POLICY.md`, `TRUST_BOUNDARIES.md`, security-trust draft, or data-classification draft?
  - why it matters: Avoids duplication and authority conflict across documents.
  - impact if unresolved: Secret-handling rules remain duplicated.
  - no automatic resolution.
- **OQ-P02-C-004** — Generated-context boundaries integration.
  - status: `Open`; source task: `CONT-P02-ONB-001`; source decision: `DEC-P02-DATA-CLASSIFICATION-001`; owner: `Rauf Alizada`.
  - question: Should generated-context boundaries (Context-Bound-1..5) be folded into ratified `CONTEXT_POLICY.md` / `CONTEXT_RETRIEVAL_PROTOCOL.md`, or remain a separate classification concern?
  - why it matters: Determines where context-trust rules are canonical.
  - impact if unresolved: Context-trust authority remains split.
  - no automatic resolution.
- **OQ-P02-C-005** — Client / external / private data isolation at v1.
  - status: `Disposed for P04-readiness`; source task: `CONT-P02-ONB-001`; source decision: `DEC-P02-DATA-CLASSIFICATION-001`; owner: `Rauf Alizada`.
  - question: How should client / external / private data isolation be expressed at v1, given no multi-tenant runtime exists yet?
  - why it matters: Defines governance posture toward external/private data before any runtime exists.
  - impact if unresolved: External-data handling expectations remain undefined.
  - P04-readiness disposition: accepted as explicitly deferred future-architecture work under `DEC-P04-DISP-002` (ratified 2026-07-02) — no multi-tenant runtime exists to isolate yet; the underlying scope/isolation-model question (`P02-ROAD-007`) remains scheduled. This does not resolve `OQ-P02-D-001`, `OQ-P02-C-003`, or `OQ-P02-D-006`, which remain open/deferred-with-acceptance unchanged.
- **OQ-P02-C-006** — Destructive-command evidence location.
  - status: `Open`; source task: `CONT-P02-ONB-001`; source decision: `DEC-P02-DATA-CLASSIFICATION-001`; owner: `Rauf Alizada`.
  - question: Should destructive-command evidence (Class-13) be encoded as a standalone `GIT_SAFETY.md` / destructive-command log, or remain inside the data-classification draft and `TRUST_BOUNDARIES.md`?
  - why it matters: Affects where destructive-action provenance lives.
  - impact if unresolved: Destructive-command evidence remains distributed.
  - no automatic resolution.
- **OQ-P02-C-007** — Path-leak / local-environment redaction policy.
  - status: `Open`; source task: `CONT-P02-ONB-001`; source decision: `DEC-P02-DATA-CLASSIFICATION-001`; owner: `Rauf Alizada`.
  - question: Should path-leak and local-environment-metadata boundaries (External-Bound-3) become an explicit redaction policy, or remain a candidate handling requirement?
  - why it matters: Determines whether redaction is governance-binding.
  - impact if unresolved: Path-leak handling remains candidate-only.
  - no automatic resolution.
- **OQ-P02-C-008** — Data classes as risk rows.
  - status: `Open`; source task: `CONT-P02-ONB-001`; source decision: `DEC-P02-DATA-CLASSIFICATION-001`; owner: `Rauf Alizada`.
  - question: Which candidate data classes should produce `RISK_REGISTER.md` rows under a separately approved update, and which remain candidate-only?
  - why it matters: Determines tracked risks vs candidate-only classes.
  - impact if unresolved: Data-class risks remain candidate-only.
  - no automatic resolution.
- **OQ-P02-C-009** — Governance-level validation of handling requirements.
  - status: `Open`; source task: `CONT-P02-ONB-001`; source decision: `DEC-P02-DATA-CLASSIFICATION-001`; owner: `Rauf Alizada`.
  - question: How are candidate handling requirements measured/validated at the governance level before any hooks are activated?
  - why it matters: Defines the governance-level acceptance check that precedes any future enforcement.
  - impact if unresolved: Handling requirements lack a governance-level acceptance contract.
  - no automatic resolution.
- **OQ-P02-C-010** — Class-to-sensitivity mapping table.
  - status: `Open`; source task: `CONT-P02-ONB-001`; source decision: `DEC-P02-DATA-CLASSIFICATION-001`; owner: `Rauf Alizada`.
  - question: Should the mapping from data class to sensitivity level be encoded as a normative table in a future ratified document, or remain a candidate mapping in the data-classification draft?
  - why it matters: Determines whether class→level mapping is binding policy.
  - impact if unresolved: Class→level mapping remains candidate-only.
  - no automatic resolution.
