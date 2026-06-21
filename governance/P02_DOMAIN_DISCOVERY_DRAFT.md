---
document_status: PROPOSED_INACTIVE
ratification_status: NOT_RATIFIED
source_task: CONT-P02-ONB-001
source_plan: P02-DOMAIN-DISCOVERY-DRAFT-PLAN-001
source_decision: DEC-P02-DOMAIN-DISCOVERY-DRAFT-PLAN-001
product_owner: Rauf Alizada
---

# P02 Domain Discovery Draft

## Status and Authority

- document_status: `PROPOSED_INACTIVE`.
- ratification_status: `NOT_RATIFIED`.
- This draft is a Product Owner-review candidate. It does not ratify, define, or amend any domain concept, glossary term, decision, risk, roadmap entry, registry entry, or open question.
- Authority remains with the Product Owner `Rauf Alizada` as sole ratification authority. The spellings `Raauf Alizada` and the identity `Tural Rahmanli` are not valid project authorities.
- Source basis is the approved `P02 Domain Discovery Draft Plan 001` under `DEC-P02-DOMAIN-DISCOVERY-DRAFT-PLAN-001`, drafted within `CONT-P02-ONB-001`.
- No content in this draft selects architecture, schema, storage, implementation stack, dependencies, settings, hooks, adapter rules, or license.

## Purpose

- Surface a candidate list of domain-level concepts, entity groups, relationship groups, lifecycle/state concepts, authority-sensitive concepts, and source-of-truth concepts that exist inside the Continuum OS governance and operating model today.
- Provide a structured input for Product Owner review so that subsequent governance work (glossary refinement, open-questions projection, future domain ratification) has an explicit, scoped starting point.
- Keep all output at the domain-conceptual level. No data model, schema, file layout, runtime interface, or implementation is proposed.

## Source Basis

Read-only inputs consulted while drafting:

- `governance/PRODUCT_CHARTER.md` — product scope, non-scope, authority, and v1 boundaries.
- `governance/GLOSSARY.md` — ratified terminology in use.
- `governance/CHANGE_PROTOCOL.md` — lifecycle and gate vocabulary.
- `governance/TRUST_BOUNDARIES.md` — authority and trust separation.
- `governance/NEVER_AUTOMATIC.md` — non-automatic actions and explicit-approval surface.
- `governance/ROADMAP.md` — phase sequence (P00–P05) and gating.
- `governance/DECISION_LOG.md` — ratified decisions and provenance pattern.
- `governance/tasks/CONT-P02-ONB-001.md` — single active task, approved plans, gate scope.
- `governance/HANDOFF.md` — current handoff state and constraints.

The draft does not add to or modify these sources.

## Domain Boundary

- In scope (domain-conceptual only): governance objects, lifecycle states, authority relationships, evidence and provenance concepts, context-authority concepts, and ambiguity concepts that already appear in ratified governance or are clearly implied by it.
- Out of scope (this draft): any architecture, schema, storage layout, retrieval implementation, runtime pack format, agent prompt design, hook design, adapter design, dependency choice, language choice, or license choice.
- Out of scope (this draft): naming finality. Any names used below are candidate labels for Product Owner review, not ratified terms.

## Candidate Domain Concepts

The following are **candidate** concepts surfaced from existing ratified governance. They are not ratified by this draft and require Product Owner review:

- candidate: `Project` / `Workspace` — the overall Continuum OS instance under a single Product Owner authority.
- candidate: `Phase` — a coarse lifecycle band (P00–P05) defined in `ROADMAP.md`.
- candidate: `Gate` — a phase-internal checkpoint with an activation/closeout decision (e.g. `P02_DOMAIN_GOVERNANCE_SECURITY_DISCOVERY`).
- candidate: `Task` — a unit of governed work with `lifecycle_status`, `gate_status`, `active`, and `execution_authorized` attributes; subject to the single-active-task invariant.
- candidate: `Plan` — a Product Owner-approvable scoping artifact recorded inside a task file (e.g. discovery plans, deliverable draft plans).
- candidate: `Deliverable Draft` — a `PROPOSED_INACTIVE` / `NOT_RATIFIED` governance artifact awaiting Product Owner review.
- candidate: `Decision` — a Product Owner-ratified record in `DECISION_LOG.md` with `decision_id`, `status`, `ratified_by`, `ratified_at`, `source_task`, `evidence`, and `scope_note`.
- candidate: `Ratification` — the act by which the Product Owner converts a proposal into authority.
- candidate: `Handoff` — a state-transfer record (`HANDOFF.md`) describing current authority state and the next expected Product Owner action.
- candidate: `Session Log Entry` — a chronological evidence record (`SESSION_LOG.md`).
- candidate: `Evidence` — provenance pointers such as commit SHAs, file paths, and decision identifiers.
- candidate: `Approval Verb` — the strict-lane Git approval vocabulary (`prepare diff` / `commit only` / `commit and push`).
- candidate: `Authority` — the Product Owner role as sole ratifier; subordinate agent advisory roles.
- candidate: `Trust Boundary` — separation between Product Owner authority, governance documents, adapter rules, hooks, and runtime/generated content.
- candidate: `Context Authority` — the ratified `CONTEXT_POLICY.md` / `CONTEXT_BUDGET.md` / `CONTEXT_RETRIEVAL_PROTOCOL.md` triad governing context use.
- candidate: `Canonical Source` — ratified governance files in `governance/`.
- candidate: `Generated Context` — non-canonical, derived runtime context (e.g. a future runtime context pack) explicitly subordinate to canonical sources.
- candidate: `Open Question` — an unratified ambiguity awaiting Product Owner resolution.
- candidate: `Risk` — an entry in `RISK_REGISTER.md` requiring tracking.

## Candidate Entity Groups

Proposed groupings, candidate only, for Product Owner review:

- candidate group: **Governance Authority Entities** — Product Owner, Authority Role, Adapter Identity, Agent Identity.
- candidate group: **Lifecycle Entities** — Project, Phase, Gate, Task, Plan, Deliverable Draft.
- candidate group: **Decision Entities** — Proposal, Decision, Ratification Event, Approval Verb Invocation.
- candidate group: **Evidence Entities** — Commit, Diff Bundle, Validation Result, Handoff Snapshot, Session Log Entry.
- candidate group: **Context Entities** — Canonical Source Document, Generated Context Artifact, Context Mode, Context Budget Allocation, Retrieval Event.
- candidate group: **Open-Ambiguity Entities** — Open Question, Risk, Deferred Scope Item.
- candidate group: **Boundary Entities** — Trust Boundary, Non-Automatic Action, Reserved Directory.

These groups are descriptive only. No relational structure, schema, or storage shape is proposed.

## Candidate Relationship Groups

Proposed relationship themes, candidate only, for Product Owner review:

- candidate: `Authority → Ratification` — only the Product Owner ratifies; agents propose.
- candidate: `Phase ⊃ Gate ⊃ Task ⊃ Plan ⊃ Deliverable Draft` — nesting of lifecycle scope.
- candidate: `Task ↔ Active-Task Invariant` — zero or one task is active; execution requires exactly one.
- candidate: `Proposal → Decision → Evidence` — proposals become decisions via ratification, leaving evidence trail.
- candidate: `Canonical Source ⟂ Generated Context` — generated content is subordinate to canonical sources on conflict.
- candidate: `Decision → Handoff Update → Session Log Entry` — every ratification produces handoff and session log evidence.
- candidate: `Open Question → Decision` — open questions resolve only through Product Owner ratification.
- candidate: `Approval Verb → Git State Transition` — strict-lane verbs gate `prepare`, `commit`, and `push`.

No multiplicity, cardinality, optionality, or implementation semantics is asserted.

## Lifecycle and State Concepts

Candidate lifecycle vocabulary already in use, surfaced for Product Owner review:

- document lifecycle: `PROPOSED_INACTIVE` → `APPROVED_FOR_DRAFTING` / `APPROVED` → `RATIFIED` (per existing governance pattern).
- task lifecycle: `PROPOSED_INACTIVE` → `ACTIVATED` (`active: true`, `execution_authorized: true`) → `IN_PROGRESS` → `CLOSED`.
- gate lifecycle: `PROPOSED` → `ACTIVATED` → `CLOSED`.
- decision lifecycle: `PROPOSED` → `RATIFIED`; ratification is terminal for authority but not for evolution under `ratified_evolving`.
- evidence lifecycle: an entry is durable once committed and referenced by a decision.
- context lifecycle (already ratified in the context-policy set): mode selection, generation, staleness, supersession.

This section catalogues existing patterns. It does not introduce new states.

## Authority-Sensitive Concepts

Concepts where authority and trust separation matter, surfaced as candidates for Product Owner review:

- candidate: Product Owner identity encoding and spelling authority.
- candidate: agent advisory boundary — agents may draft and recommend, never ratify.
- candidate: strict-lane Git approval verbs as the only authorized state transitions for repository history.
- candidate: hook activation as a separate authority surface (hooks remain advisory until Product Owner activation).
- candidate: adapter-rule boundary (`CLAUDE.md`, `AGENTS.md`, `.claude/rules/`) versus governance authority.
- candidate: settings and `.claude/settings.local.example.json` boundary versus operational secrets.
- candidate: `NEVER_AUTOMATIC.md` action surface — actions that must not occur without explicit approval.

These concepts already exist in ratified governance; this draft only names them as a domain-discovery surface.

## Evidence and Source-of-Truth Concepts

Candidate evidence concepts, for Product Owner review:

- candidate: `Commit SHA` as durable evidence pointer.
- candidate: `Decision ID` as canonical authority pointer.
- candidate: `Handoff Snapshot` as latest authority-state pointer.
- candidate: `Session Log Entry` as chronological evidence pointer.
- candidate: `Validation Output` (e.g. fixture pass/fail counts) as evidence supporting a Product Owner decision.
- candidate: `Diff Bundle` (exported review diff) as a transient review artifact, not canonical authority by itself.
- candidate: provenance chain — proposal commit → approval decision → ratification commit → handoff update → session log entry.

No source-of-truth ranking is asserted beyond what existing ratified governance already establishes.

## Generated vs Canonical Context Concepts

Candidate distinctions, for Product Owner review, subordinate to the ratified context-policy set (`DEC-P02-CONTEXT-POLICY-001`, `DEC-P02-CONTEXT-BUDGET-001`, `DEC-P02-CONTEXT-RETRIEVAL-001`):

- candidate: `Canonical Context` — ratified governance documents.
- candidate: `Generated Context Pack` — future, non-canonical, derived artifact (e.g. `.continuum/RUNTIME_CONTEXT.md`) used only as a retrieval aid.
- candidate: `Context Mode` — Runtime / Task / Audit / Emergency, already ratified.
- candidate: `Staleness` — generated context can become stale; canonical context is the authority on conflict.
- candidate: `Budget Allocation` — generated context is bounded by the ratified Context Budget.
- candidate: `Conflict Resolution` — on any conflict, canonical wins, then policy, then budget, then retrieval protocol, as already ratified.

No new context-authority claims are proposed.

## Ambiguities for Product Owner Review

The following ambiguities are surfaced for Product Owner review only. They are not resolved here, and no `OPEN_QUESTIONS.md` rows are created in this draft.

- ambiguity: Should `Project` and `Workspace` be ratified as a single concept or two concepts?
- ambiguity: Should `Plan` be promoted from a task-internal section to a first-class governance artifact with its own lifecycle entry?
- ambiguity: Should `Deliverable Draft` be ratified as a distinct domain concept separate from `Plan`?
- ambiguity: How granular should `Evidence` be — commit-level only, or also diff-bundle-level and validation-output-level?
- ambiguity: How is `Generated Context Pack` named, scoped, and bounded relative to canonical governance once it is allowed to exist?
- ambiguity: Should `Approval Verb` be ratified as a domain concept or remain a governance-procedure rule only?
- ambiguity: Should `Agent` be a domain concept, or remain purely an adapter/runtime concern outside the domain?
- ambiguity: Should `Reserved Directory` (e.g. `.continuum/`, `services/`, future runtime areas) be modeled as a domain concept?
- ambiguity: How should deferred sibling work (Reading Policy Table, tag vocabulary, baseline token-cost method) relate to the domain model?

These ambiguities require Product Owner review. No resolution is implied by this draft.

## Non-Scope

This draft does **not**:

- ratify any candidate concept, entity, relationship, or lifecycle term;
- define any database schema, storage layout, file format, or runtime interface;
- select any architecture, language, framework, dependency, or deployment posture;
- propose any implementation task, agent prompt, hook, adapter rule, or settings change;
- modify any glossary term, decision, risk, roadmap entry, document-registry entry, or open-question row;
- create, update, or generate any runtime context pack;
- close any phase, gate, or task;
- change the single-active-task invariant;
- introduce any new authority, role, or identity;
- create license, dependency, or project-code content.

## Review Checklist

For Product Owner review:

- [ ] Candidate domain concept list is complete enough for P02 domain discovery purposes.
- [ ] Candidate entity groups are at the correct conceptual altitude (no schema leakage).
- [ ] Candidate relationship groups capture the authority and lifecycle topology already present in ratified governance.
- [ ] Lifecycle and state concepts reflect existing governance accurately and add nothing unratified.
- [ ] Authority-sensitive concepts list does not miss a known sensitive boundary.
- [ ] Evidence and source-of-truth concepts align with the strict-lane approval vocabulary.
- [ ] Generated-vs-canonical context concepts remain subordinate to the ratified context-policy set.
- [ ] Ambiguities for Product Owner review are stated as ambiguities, not as resolutions.
- [ ] Non-Scope correctly excludes architecture, schema, implementation, hooks, adapter rules, settings, dependencies, license, and project code.
- [ ] No change is requested to `OPEN_QUESTIONS.md`, `RISK_REGISTER.md`, `ROADMAP.md`, or `DOCUMENT_REGISTRY.md` by this draft.
- [ ] P02 remains active and `CONT-P02-ONB-001` remains the single active task.
- [ ] No runtime context pack has been generated.
