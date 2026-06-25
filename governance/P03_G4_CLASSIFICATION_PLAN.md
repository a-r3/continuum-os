---
document_id: P03_G4_CLASSIFICATION_PLAN
title: P03 G-4 Classification Planning Artifact
document_type: Governance (Proposed)
document_status: PROPOSED_INACTIVE
ratification_status: NOT_RATIFIED
ratification_decision: none
proposed_by: Claude Code (advisory; under task `CONT-P03-ARCH-001`)
proposed_at: 2026-06-24
source_task: CONT-P03-ARCH-001
source_activation: DEC-P03-ACTIVATION-001
source_package: P03_ARCHITECTURE_EVALUATION_PACKAGE
source_plan: P03_ARCHITECTURE_RATIFICATION_PLAN
product_owner: Rauf Alizada
related_inputs:
  - DEC-P03-ACTIVATION-001
  - DEC-P02-DOMAIN-DISCOVERY-001
  - DEC-P02-SECURITY-TRUST-REQUIREMENTS-001
  - DEC-P02-DATA-CLASSIFICATION-001
  - DEC-P02-CONTEXT-POLICY-001
  - DEC-P02-CONTEXT-BUDGET-001
  - DEC-P02-CONTEXT-RETRIEVAL-001
---

# P03 G-4 Classification Planning Artifact

## 1. Authority and Status Notice

- document_status: `PROPOSED_INACTIVE`.
- ratification_status: `NOT_RATIFIED`.
- This document is a **proposed** G-4 classification planning artifact prepared under active task `CONT-P03-ARCH-001` and activation decision `DEC-P03-ACTIVATION-001`. It is **not ratified**.
- This document is **not a `governance/DECISION_LOG.md` entry**. It adds no row to `governance/DECISION_LOG.md`.
- This document is **not a ratification**. It does not ratify any classification choice. Each row carries a *proposed* classification only.
- This document **does not mutate** `governance/OPEN_QUESTIONS.md`, `governance/RISK_REGISTER.md`, or `governance/ROADMAP.md`. Source-register row status and content remain unchanged.
- This document **does not resolve** any `OQ-P02-*` row. Resolution requires a separately approved Product Owner gate per `governance/CHANGE_PROTOCOL.md` that records the resolution in `governance/DECISION_LOG.md` and (if appropriate) updates `governance/OPEN_QUESTIONS.md`.
- This document **does not accept** any `P02-RISK-*` row. Risk disposition (accepted-with-mitigation / transferred / mitigated) requires a separately approved Product Owner gate.
- This document **does not schedule** any `P02-ROAD-*` item. Roadmap scheduling requires a separately approved Product Owner gate.
- This document **does not authorize** implementation, code changes, dependency installation, lockfile or manifest changes, license selection, hook registration/activation, settings changes, adapter-rule changes (`CLAUDE.md`, `AGENTS.md`, `.claude/rules/**`), runtime context pack generation (`.continuum/RUNTIME_CONTEXT.md`, `.continuum/context-index.yaml`, `.continuum/context-budget.yaml`, `.continuum/context-freshness.yaml`, `.continuum/token-audit.md`), or P04/P05 activation.
- This document **does not modify** any ratified P02 artifact, the ratified context-policy set, the P03 evaluation package, the P03 architecture ratification plan, or `governance/PRODUCT_OWNER.md` (absent).
- This document **does not create** any P03-specific projection rows inside `governance/OPEN_QUESTIONS.md`, `governance/RISK_REGISTER.md`, or `governance/ROADMAP.md`. Such projections, if desired, require their own separately approved Product Owner gates.
- The sole Product Owner / sole project authority / sole ratification authority for v1 is `Rauf Alizada`. No other identity is valid for project governance, participation, approval, ratification, or authority. The spelling `Raauf Alizada` is invalid. The identity `Tural Rahmanli` does not participate in this project in any form and must not be encoded as a project identity; any incidental appearance of that name in Git committer metadata or environment metadata is not project authority. Only `Rauf Alizada` may ratify classification choices proposed by this artifact.
- P03 remains architecture-only under `DEC-P03-ACTIVATION-001`. P04 and P05 remain not active. No P04 or P05 task is proposed or activated by this artifact.

## 2. Source Inputs

Read-only inputs enumerated by this artifact:

- `governance/OPEN_QUESTIONS.md` — 28 `OQ-P02-*` rows (`OQ-P02-D-001..009`, `OQ-P02-S-001..009`, `OQ-P02-C-001..010`), all `Open`. Pre-existing `OQ-P01-*` rows are out of scope of this G-4 planning artifact and remain unchanged in the source register.
- `governance/RISK_REGISTER.md` — 19 `P02-RISK-*` rows (`P02-RISK-001..019`), all `Proposed; open`.
- `governance/ROADMAP.md` — 15 `P02-ROAD-*` rows (`P02-ROAD-001..015`), all `Proposed; not started`.

Architecture inputs treated as read-only by this artifact:

- `governance/P03_ARCHITECTURE_EVALUATION_PACKAGE.md` (`PROPOSED_INACTIVE`, `NOT_RATIFIED`). Recommendations R-1..R-6 and ADR-DRAFT-P03-001..006 used solely as reference framing.
- `governance/P03_ARCHITECTURE_RATIFICATION_PLAN.md` (`PROPOSED_INACTIVE`, `NOT_RATIFIED`). Step B of that plan motivates this artifact.
- `governance/CONTEXT_POLICY.md`, `governance/CONTEXT_BUDGET.md`, `governance/CONTEXT_RETRIEVAL_PROTOCOL.md` (ratified).
- `governance/P02_DOMAIN_DISCOVERY_DRAFT.md`, `governance/P02_SECURITY_TRUST_REQUIREMENTS_DRAFT.md`, `governance/P02_DATA_CLASSIFICATION_SENSITIVE_BOUNDARY_DRAFT.md` (ratified).
- `governance/DECISION_LOG.md` (ratified through `DEC-P03-ACTIVATION-001`).

No source outside the above is treated as authority by this artifact. Hidden agent memory, chat history, and external statements are not canonical inputs.

## 3. Classification Vocabulary

Each row in §5..§7 carries exactly one of the three values below. The vocabulary is **proposed**; it becomes binding only when a future ratified `DEC-P03-ARCH-CLASS-NNN` decision adopts it.

- **`P03-blocking`** — The row affects whether a P03 architecture ratification can safely proceed. The Product Owner is expected to resolve, dispose, or explicitly defer-with-acceptance the row before any architecture decision that depends on it is ratified. P03 closeout (source-package Gate G-7) may not proceed while any `P03-blocking` row remains unresolved.
- **`P04-blocking`** — The row does not need to be resolved for safe P03 architecture ratification, but does need to be resolved before P04 implementation-readiness (source-package Gate G-8) is granted. P03 closeout may proceed with `P04-blocking` rows remaining open, provided the dependency is explicitly recorded in each ratified P03 decision that touches the row.
- **`deferred-with-acceptance`** — The row may remain open into P04 and possibly P05 with explicit Product Owner acceptance of the deferral. The row is neither resolved nor scheduled; the Product Owner accepts the residual ambiguity or the deferred work. A `deferred-with-acceptance` choice is itself a proposed Product Owner posture and requires ratification under the G-4 gate to become binding.

A row may be reclassified by a future separately approved Product Owner diff; reclassification is itself a governance edit and is not authorized by this artifact.

## 4. Classification Method

- Each row appears exactly once with its source id and a short title or description.
- Each row carries exactly one proposed classification from §3.
- Each row carries a short rationale tied to ratified P02 inputs and (where applicable) to the P03 evaluation package dimensions:
  - **Domain** (R-1 / ADR-DRAFT-P03-001).
  - **Security/Trust** (R-2 / ADR-DRAFT-P03-002).
  - **Data Classification** (R-3 / ADR-DRAFT-P03-003).
  - **Context** (R-4 / ADR-DRAFT-P03-004).
  - **Governance-Code Boundary** (R-5 / ADR-DRAFT-P03-005).
  - **Agent-Adapter Boundary** (R-6 / ADR-DRAFT-P03-006).
  - **Cross-cutting** when the row spans multiple dimensions.
- Each row indicates the next gate required to act on the classification, if any.
- Where source-row content is ambiguous, the proposed classification is made conservatively (favoring `P04-blocking` over `deferred-with-acceptance` when implementation-readiness might be affected, and favoring `P03-blocking` when architecture-ratification safety might be affected) and the rationale records that the choice requires Product Owner confirmation.
- Where a row appears to require implementation work, it is classified `P04-blocking` unless safe architecture ratification cannot proceed without it, in which case it is `P03-blocking`.
- Candidate P03-specific projection rows in the source registers are mentioned only as future options; no projection row is created by this artifact.

## 5. OQ-P02 Classification Table

| Source ID | Short description | Proposed classification | Rationale | P03 dimension | Required next gate |
|---|---|---|---|---|---|
| `OQ-P02-D-001` | Project vs Workspace as distinct domain concepts | `P03-blocking` | Affects scoping of tasks, decisions, evidence, generated context; directly conditions R-1 / ADR-DRAFT-P03-001 wording on domain projection scope. | Domain | Per-row resolution gate (`DEC-P03-ARCH-CLASS-NNN` adopts classification; later `DEC-P03-*` resolves the question itself). |
| `OQ-P02-D-002` | `Plan` as task-internal vs first-class artifact | `deferred-with-acceptance` | Lifecycle wording can remain task-internal without blocking architecture ratification; promotion to first-class is a future Product Owner posture. Requires Product Owner confirmation. | Domain | Optional later Product Owner posture gate. |
| `OQ-P02-D-003` | `Deliverable Draft` as distinct concept | `deferred-with-acceptance` | Draft-vs-document boundary remains workable per-task convention; no architecture ratification depends on it. Requires Product Owner confirmation. | Domain | Optional later Product Owner posture gate. |
| `OQ-P02-D-004` | Canonical granularity of `Evidence` | `P04-blocking` | Uniform evidence granularity is an implementation-discipline concern more than an architecture-ratification concern; should be resolved before P04 GO. | Cross-cutting (Domain + Security/Trust) | Pre-P04 resolution gate. |
| `OQ-P02-D-005` | `Generated Context Pack` naming/scope/boundary | `P03-blocking` | Directly conditions R-4 / ADR-DRAFT-P03-004 acceptance criteria (Step E of the ratification plan); architecture ratification of context realization cannot safely proceed without canonical naming/scope. | Context | Resolved jointly with R-4 / ADR-DRAFT-P03-004 revision. |
| `OQ-P02-D-006` | `Approval Verb` as domain vs procedure | `deferred-with-acceptance` | Approval-verb procedure already lives in `governance/CHANGE_PROTOCOL.md`; promotion to first-class domain is optional. | Domain | Optional later Product Owner posture gate. |
| `OQ-P02-D-007` | `Agent` as domain concept vs adapter/runtime concern | `P03-blocking` | Directly conditions R-6 / ADR-DRAFT-P03-006 (Agent-Adapter Boundary) and whether agent identity is governance-canonical. | Agent-Adapter Boundary | Resolved jointly with R-6 / ADR-DRAFT-P03-006 ratification. |
| `OQ-P02-D-008` | `Reserved Directory` as domain vs repository-mechanics | `P03-blocking` | Directly conditions R-5 / ADR-DRAFT-P03-005 (Governance-Code Boundary) on what surfaces are addressable contract surfaces. | Governance-Code Boundary | Resolved jointly with R-5 / ADR-DRAFT-P03-005 ratification. |
| `OQ-P02-D-009` | Deferred token-efficiency sibling work | `deferred-with-acceptance` | Reading-policy table, tag vocabulary, and baseline token-cost method are deferred per ratified context-policy set; deferral is already a Product Owner posture and can remain open with acceptance. | Context | Optional later Product Owner posture gate. |
| `OQ-P02-S-001` | Which candidate security/trust requirements become canonical vs deferred | `P03-blocking` | Drives R-2 / ADR-DRAFT-P03-002 staging (S-A → S-B → S-C); the Security/Trust enforcement path cannot be ratified without an explicit canonical/deferred split. | Security/Trust | Resolved jointly with R-2 / ADR-DRAFT-P03-002 revision (Step D of ratification plan). |
| `OQ-P02-S-002` | Hook activation gate document | `P04-blocking` | Hook activation provenance affects Gate G-5 (hook activation); not required for safe P03 architecture ratification. | Security/Trust | Pre-P04 / Gate G-5 preparation. |
| `OQ-P02-S-003` | `GIT_SAFETY.md` standalone vs distributed | `deferred-with-acceptance` | Destructive-command rules are already advisory under `.claude/rules/06-git-workflow.md` and `governance/TRUST_BOUNDARIES.md`; standalone document is optional. | Cross-cutting (Security/Trust + Data Classification) | Optional later Product Owner posture gate. |
| `OQ-P02-S-004` | `SECRETS_POLICY.md` standalone vs distributed | `deferred-with-acceptance` | Secret-handling already covered by `governance/TRUST_BOUNDARIES.md` and ratified P02 security/trust + data-classification drafts; single-sourced document is optional. | Cross-cutting (Security/Trust + Data Classification) | Optional later Product Owner posture gate. |
| `OQ-P02-S-005` | Agent-behavior split between governance and adapter rules | `P03-blocking` | Directly conditions R-6 / ADR-DRAFT-P03-006 (Agent-Adapter Boundary); ratification cannot safely proceed without an agreed split. | Agent-Adapter Boundary | Resolved jointly with R-6 / ADR-DRAFT-P03-006 ratification. |
| `OQ-P02-S-006` | Multi-client privacy/isolation at v1 | `P04-blocking` | No multi-tenant runtime exists yet; isolation expression is implementation-readiness work that should precede P04 GO but not P03 ratification. | Cross-cutting (Security/Trust + Data Classification) | Pre-P04 resolution gate. |
| `OQ-P02-S-007` | `EVIDENCE_POLICY.md` standalone vs distributed | `deferred-with-acceptance` | Evidence rules remain workable distributed across `governance/CHANGE_PROTOCOL.md` and `governance/TRUST_BOUNDARIES.md`; single-sourced document is optional. | Security/Trust | Optional later Product Owner posture gate. |
| `OQ-P02-S-008` | Misuse scenarios as risk rows | `deferred-with-acceptance` | Promotion of additional scenarios to `governance/RISK_REGISTER.md` is a separate diff at Product Owner discretion. | Security/Trust | Optional later risk-projection gate. |
| `OQ-P02-S-009` | Governance-level validation before hook activation | `P03-blocking` | Drives the evidence threshold wording in R-2 / ADR-DRAFT-P03-002 (Step D revision); architecture ratification of the enforcement path cannot proceed without a governance-level acceptance contract. | Security/Trust | Resolved jointly with R-2 / ADR-DRAFT-P03-002 revision. |
| `OQ-P02-C-001` | Canonical data classes / sensitivity levels vs deferred | `P03-blocking` | Drives R-3 / ADR-DRAFT-P03-003 (Data Classification realization); registry shape depends on which classes/levels are canonical. | Data Classification | Resolved jointly with R-3 / ADR-DRAFT-P03-003 ratification. |
| `OQ-P02-C-002` | `SENSITIVITY_LEVELS.md` standalone vs in-draft | `deferred-with-acceptance` | Document-boundary choice does not block architecture ratification of the classification realization. | Data Classification | Optional later Product Owner posture gate. |
| `OQ-P02-C-003` | Secret-handling boundary location | `deferred-with-acceptance` | Authority location can remain distributed during P03; consolidation is optional. | Cross-cutting (Data Classification + Security/Trust) | Optional later Product Owner posture gate. |
| `OQ-P02-C-004` | Context-Bound integration into ratified context-policy set | `P03-blocking` | Directly conditions R-4 / ADR-DRAFT-P03-004 acceptance criteria and the subordination clause for any future runtime context pack. | Context | Resolved jointly with R-4 / ADR-DRAFT-P03-004 revision. |
| `OQ-P02-C-005` | Client/external/private data isolation at v1 | `P04-blocking` | No multi-tenant runtime exists yet; isolation expression is pre-P04 implementation-readiness work. | Cross-cutting (Data Classification + Security/Trust) | Pre-P04 resolution gate. |
| `OQ-P02-C-006` | Destructive-command evidence location | `deferred-with-acceptance` | Existing distributed authority (data-classification draft + `governance/TRUST_BOUNDARIES.md`) remains workable; consolidation is optional. | Cross-cutting (Data Classification + Security/Trust) | Optional later Product Owner posture gate. |
| `OQ-P02-C-007` | Path-leak / local-environment redaction policy | `P04-blocking` | Explicit redaction policy is implementation-readiness work; required before P04 GO but not for P03 architecture ratification. | Data Classification | Pre-P04 resolution gate. |
| `OQ-P02-C-008` | Data classes promoted to risk rows | `deferred-with-acceptance` | Risk-row promotion is an optional later projection at Product Owner discretion. | Data Classification | Optional later risk-projection gate. |
| `OQ-P02-C-009` | Governance-level validation of handling requirements | `P03-blocking` | Mirrors `OQ-P02-S-009` for handling requirements; drives R-3 and the Security/Trust evidence threshold under R-2. | Cross-cutting (Data Classification + Security/Trust) | Resolved jointly with R-2 / R-3 revisions and ratifications. |
| `OQ-P02-C-010` | Class-to-sensitivity mapping table | `P03-blocking` | Directly conditions the registry shape proposed by R-3 / ADR-DRAFT-P03-003. | Data Classification | Resolved jointly with R-3 / ADR-DRAFT-P03-003 ratification. |

## 6. P02-RISK Classification Table

| Source ID | Short description | Proposed classification | Rationale | P03 dimension | Required next gate |
|---|---|---|---|---|---|
| `P02-RISK-001` | Product Owner Authority Confusion / Invalid Identity | `P03-blocking` | Identity discipline (`Rauf Alizada` only) must be reaffirmed in every ratified P03 architecture decision per principle P-6 of the ratification plan; the risk is structurally blocking for architecture ratification. | Cross-cutting | Each P03 ratification row restates identity discipline; risk disposition gate is itself separate. |
| `P02-RISK-002` | Active-Task Invariant Violation in P02 | `P03-blocking` | Active-task invariant must be preserved across every ratification step per principle P-7; structurally blocking. | Cross-cutting | Each P03 ratification row preserves invariant; risk disposition gate is itself separate. |
| `P02-RISK-003` | Generated Context Treated as Canonical | `P03-blocking` | Directly affects R-4 / ADR-DRAFT-P03-004 subordination clause and Step E acceptance criteria for any runtime context pack. | Context | Resolved jointly with R-4 / ADR-DRAFT-P03-004 revision; risk disposition gate is itself separate. |
| `P02-RISK-004` | Stale Generated Context | `P03-blocking` | Freshness check / staleness halt is an explicit Step E acceptance criterion for R-4; ratification of the context realization cannot safely proceed without addressing it. | Context | Resolved jointly with R-4 / ADR-DRAFT-P03-004 revision; risk disposition gate is itself separate. |
| `P02-RISK-005` | Unauthorized Commit/Push or Approval-Verb Violation | `P03-blocking` | Approval-verb discipline applies now and must be reaffirmed by every P03 ratification gate per principles P-2 and P-3; structurally blocking. | Cross-cutting | Each P03 ratification row restates approval-verb discipline; risk disposition gate is itself separate. |
| `P02-RISK-006` | Destructive Git Command Without Explicit Approval | `P03-blocking` | Same discipline as `P02-RISK-005`; applies to every prepared diff in the ratification chain. | Cross-cutting | Each P03 ratification row restates discipline; risk disposition gate is itself separate. |
| `P02-RISK-007` | Hook / Adapter / Settings Drift Before Ratified Gate | `P03-blocking` | Directly affects R-2 / ADR-DRAFT-P03-002 staging and R-6 / ADR-DRAFT-P03-006 adapter-rule subordination; ratification cannot safely proceed without explicit non-authorization. | Cross-cutting (Security/Trust + Agent-Adapter Boundary) | Resolved jointly with R-2 / R-6 ratifications; risk disposition gate is itself separate. |
| `P02-RISK-008` | Secret or Credential Leakage Into Repo/Governance/Session Logs | `P04-blocking` | Ongoing operational risk handled by `.claude/rules/04-security.md` and `governance/TRUST_BOUNDARIES.md`; required for P04 GO but not for safe P03 architecture ratification. | Security/Trust | Pre-P04 disposition gate. |
| `P02-RISK-009` | `.env` / Local Settings / `secrets/**` Read or Committed | `P04-blocking` | Operational risk; advisory baseline is already in place; required for P04 GO. | Security/Trust | Pre-P04 disposition gate. |
| `P02-RISK-010` | Client / External / Private Data Leakage | `P04-blocking` | Operational risk; no multi-tenant runtime yet; required for P04 GO. | Cross-cutting (Security/Trust + Data Classification) | Pre-P04 disposition gate. |
| `P02-RISK-011` | Cross-Client Context Contamination | `P04-blocking` | Operational risk; no multi-tenant runtime yet; required for P04 GO. | Cross-cutting (Context + Data Classification) | Pre-P04 disposition gate. |
| `P02-RISK-012` | Path Leak / Local Environment Metadata Persistence | `P04-blocking` | Operational risk; required for P04 GO; not blocking P03 architecture ratification. | Data Classification | Pre-P04 disposition gate. |
| `P02-RISK-013` | Evidence Granularity Ambiguity | `deferred-with-acceptance` | Mirrors `OQ-P02-D-004` posture; can remain open with explicit Product Owner acceptance of the ambiguity. | Cross-cutting (Domain + Security/Trust) | Optional later disposition gate. |
| `P02-RISK-014` | Distributed Evidence Authority / Lack of `EVIDENCE_POLICY.md` | `deferred-with-acceptance` | Mirrors `OQ-P02-S-007`; distributed authority remains workable. | Security/Trust | Optional later disposition gate. |
| `P02-RISK-015` | Distributed Secret-Handling Authority / Lack of `SECRETS_POLICY.md` | `deferred-with-acceptance` | Mirrors `OQ-P02-S-004`; distributed authority remains workable. | Cross-cutting (Security/Trust + Data Classification) | Optional later disposition gate. |
| `P02-RISK-016` | Undefined Canonical Data Classes / Sensitivity Levels | `P03-blocking` | Directly affects R-3 / ADR-DRAFT-P03-003 (Data Classification realization); ratification requires defined canonical labels. | Data Classification | Resolved jointly with R-3 / ADR-DRAFT-P03-003 ratification; risk disposition gate is itself separate. |
| `P02-RISK-017` | Ambiguous Project / Workspace Scoping | `P03-blocking` | Directly affects R-1 / ADR-DRAFT-P03-001 (Domain projection scope); ratification cannot safely proceed without scoping clarity. | Domain | Resolved jointly with R-1 / ADR-DRAFT-P03-001 ratification and `OQ-P02-D-001`; risk disposition gate is itself separate. |
| `P02-RISK-018` | P02 Open Questions Remaining Unresolved Before P03/P04 | `P03-blocking` | This G-4 planning artifact is itself the structural response to this risk; classification choices in §5 directly address it. | Cross-cutting | Resolved by G-4 ratification (`DEC-P03-ARCH-CLASS-001`) plus per-question follow-up. |
| `P02-RISK-019` | Deferred Token-Efficiency Sibling Work Becoming Unanchored | `deferred-with-acceptance` | Mirrors `OQ-P02-D-009`; ratified context-policy set already establishes deferral with acceptance. | Context | Optional later disposition gate. |

## 7. P02-ROAD Classification Table

| Source ID | Short description | Proposed classification | Rationale | P03 dimension | Required next gate |
|---|---|---|---|---|---|
| `P02-ROAD-001` | Resolve Domain-Model Open Questions | `P03-blocking` | Covers `OQ-P02-D-*` items classified `P03-blocking` in §5; ratification of R-1 / R-5 / R-6 depends on it. | Cross-cutting (Domain + Governance-Code + Agent-Adapter) | Scheduling aligned with R-1 / R-5 / R-6 ratifications. |
| `P02-ROAD-002` | Ratify Canonical Data Classes and Sensitivity Levels | `P03-blocking` | Drives R-3 / ADR-DRAFT-P03-003 (registry shape) and addresses `P02-RISK-016`. | Data Classification | Scheduling aligned with R-3 / ADR-DRAFT-P03-003 ratification. |
| `P02-ROAD-003` | Decide Whether to Create `SECRETS_POLICY.md` | `deferred-with-acceptance` | Mirrors `OQ-P02-S-004` / `P02-RISK-015`. | Cross-cutting (Security/Trust + Data Classification) | Optional later scheduling gate. |
| `P02-ROAD-004` | Decide Whether to Create `EVIDENCE_POLICY.md` | `deferred-with-acceptance` | Mirrors `OQ-P02-S-007` / `P02-RISK-014`. | Security/Trust | Optional later scheduling gate. |
| `P02-ROAD-005` | Decide Whether to Create `GIT_SAFETY.md` / Destructive-Command Governance | `deferred-with-acceptance` | Mirrors `OQ-P02-S-003` / `OQ-P02-C-006`. | Cross-cutting (Security/Trust + Data Classification) | Optional later scheduling gate. |
| `P02-ROAD-006` | Decide Generated-Context Pack Naming, Scope, Freshness, Trust Boundary | `P03-blocking` | Directly drives R-4 / ADR-DRAFT-P03-004 acceptance criteria (Step E revision); addresses `OQ-P02-D-005` / `OQ-P02-C-004` / `P02-RISK-003` / `P02-RISK-004`. | Context | Scheduling aligned with R-4 / ADR-DRAFT-P03-004 revision and ratification. |
| `P02-ROAD-007` | Decide Project / Workspace / Client Isolation Model | `P04-blocking` | Multi-tenant isolation is implementation-readiness work; required for P04 GO. Project / workspace scoping that is *purely* a P03-domain question is addressed under `OQ-P02-D-001` / `P02-RISK-017`. | Cross-cutting (Domain + Security/Trust + Data Classification) | Pre-P04 scheduling gate. |
| `P02-ROAD-008` | Decide Hook Activation Gate Criteria | `P04-blocking` | Hook activation is source-package Gate G-5; criteria preparation is pre-P04 work. The R-2 staging itself is addressed under `OQ-P02-S-001` / `OQ-P02-S-009`. | Security/Trust | Pre-P04 / Gate G-5 scheduling. |
| `P02-ROAD-009` | Decide Adapter-Rule vs Governance Split for Agent Behavior | `P03-blocking` | Drives R-6 / ADR-DRAFT-P03-006 (Agent-Adapter Boundary); addresses `OQ-P02-D-007` / `OQ-P02-S-005`. | Agent-Adapter Boundary | Scheduling aligned with R-6 / ADR-DRAFT-P03-006 ratification. |
| `P02-ROAD-010` | Decide Path-Leak / Local-Environment Redaction Policy | `P04-blocking` | Mirrors `OQ-P02-C-007` / `P02-RISK-012`. | Data Classification | Pre-P04 scheduling gate. |
| `P02-ROAD-011` | Decide Which P02 Risks Become Future Mitigation Tasks | `deferred-with-acceptance` | Risk-task projection is at Product Owner discretion and need not block any phase. | Cross-cutting | Optional later projection gate. |
| `P02-ROAD-012` | Decide Which P02 Open Questions Block P03/P04 | `P03-blocking` | This G-4 planning artifact is the structural response to this roadmap item; classification choices in §5 are the proposed answer. | Cross-cutting | Resolved by G-4 ratification (`DEC-P03-ARCH-CLASS-001`). |
| `P02-ROAD-013` | Future P03 Architecture Prerequisites | `P03-blocking` | The P03 architecture evaluation package and ratification plan are themselves the deliverables of this roadmap item; G-4 classification supplies the dependency map. | Cross-cutting | Resolved by completing P03 ratification chain. |
| `P02-ROAD-014` | Future P04 Mechanism / Hook Prerequisites | `P04-blocking` | Implementation-readiness scheduling; required for P04 GO. | Cross-cutting (Security/Trust + Agent-Adapter Boundary) | Pre-P04 scheduling gate. |
| `P02-ROAD-015` | Future P05 Implementation-Start Prerequisites | `deferred-with-acceptance` | P05 is downstream of P04; explicit deferral with acceptance is appropriate while P03 / P04 work proceeds. | Cross-cutting | Optional later scheduling gate. |

## 8. P03-Blocking Summary

Rows proposed as `P03-blocking` (must be resolved, disposed, or explicitly deferred-with-acceptance under a separately approved Product Owner gate before P03 closeout):

- Open questions (11): `OQ-P02-D-001`, `OQ-P02-D-005`, `OQ-P02-D-007`, `OQ-P02-D-008`, `OQ-P02-S-001`, `OQ-P02-S-005`, `OQ-P02-S-009`, `OQ-P02-C-001`, `OQ-P02-C-004`, `OQ-P02-C-009`, `OQ-P02-C-010`.
- Risks (10): `P02-RISK-001`, `P02-RISK-002`, `P02-RISK-003`, `P02-RISK-004`, `P02-RISK-005`, `P02-RISK-006`, `P02-RISK-007`, `P02-RISK-016`, `P02-RISK-017`, `P02-RISK-018`.
- Roadmap items (6): `P02-ROAD-001`, `P02-ROAD-002`, `P02-ROAD-006`, `P02-ROAD-009`, `P02-ROAD-012`, `P02-ROAD-013`.

(Counts reflect the rows enumerated in this summary; per-row classifications in §5..§7 are authoritative.)

## 9. P04-Blocking Summary

Rows proposed as `P04-blocking` (need not be resolved for P03 closeout but must be resolved or explicitly accepted before P04 GO under source-package Gate G-8):

- Open questions (5): `OQ-P02-D-004`, `OQ-P02-S-002`, `OQ-P02-S-006`, `OQ-P02-C-005`, `OQ-P02-C-007`.
- Risks (5): `P02-RISK-008`, `P02-RISK-009`, `P02-RISK-010`, `P02-RISK-011`, `P02-RISK-012`.
- Roadmap items (4): `P02-ROAD-007`, `P02-ROAD-008`, `P02-ROAD-010`, `P02-ROAD-014`.

(Counts reflect the rows enumerated in this summary; per-row classifications in §5..§7 are authoritative.)

## 10. Deferred-With-Acceptance Summary

Rows proposed as `deferred-with-acceptance` (Product Owner accepts the deferral; no scheduled resolution required by P03 closeout or P04 GO unless reclassified):

- Open questions (12): `OQ-P02-D-002`, `OQ-P02-D-003`, `OQ-P02-D-006`, `OQ-P02-D-009`, `OQ-P02-S-003`, `OQ-P02-S-004`, `OQ-P02-S-007`, `OQ-P02-S-008`, `OQ-P02-C-002`, `OQ-P02-C-003`, `OQ-P02-C-006`, `OQ-P02-C-008`.
- Risks (4): `P02-RISK-013`, `P02-RISK-014`, `P02-RISK-015`, `P02-RISK-019`.
- Roadmap items (5): `P02-ROAD-003`, `P02-ROAD-004`, `P02-ROAD-005`, `P02-ROAD-011`, `P02-ROAD-015`.

(Counts reflect the rows enumerated in this summary; per-row classifications in §5..§7 are authoritative.)

## 11. Required Product Owner Review Gates

The gates below are **required** before any classification choice becomes binding. None is opened by this artifact.

- **Gate CG-1: Product Owner review of this G-4 planning artifact.** Outcome: accept-as-is, accept-with-modifications, or reject-and-resubmit. Acceptance does not by itself ratify the classification set.
- **Gate CG-2: G-4 ratification.** Adopts the (possibly modified) classification set as canonical under a single new `governance/DECISION_LOG.md` row. Proposed decision id for naming purposes only (not allocated by this artifact): `DEC-P03-ARCH-CLASS-001`. Allocation occurs at the time of the gate; this artifact adds no row to `governance/DECISION_LOG.md`.
- **Gate CG-3: Optional P03-specific projection diff.** If the Product Owner desires, a separately approved diff may project a small set of P03-specific rows tagged with their G-4 classification into `governance/OPEN_QUESTIONS.md`, `governance/RISK_REGISTER.md`, and/or `governance/ROADMAP.md`, using the existing schemas. This artifact does not project any such rows.
- **Gate CG-4: Per-row follow-up resolution / disposition / scheduling gates.** Each P03-blocking row needs a follow-up gate that resolves the question, disposes the risk, or schedules the roadmap item before P03 closeout. P04-blocking rows have analogous follow-up gates before P04 GO. Deferred-with-acceptance rows do not require follow-up unless reclassified.
- **Gate CG-5: Reclassification.** Any later change to a row's proposed classification requires a separately approved Product Owner diff and either supersedes `DEC-P03-ARCH-CLASS-001` or amends it under a new decision id; this artifact does not authorize reclassification.

Future ratification of this classification plan may use the decision id `DEC-P03-ARCH-CLASS-001`. It is **not allocated** and **not added to `governance/DECISION_LOG.md`** by this artifact.

A future Product Owner decision may also introduce a separate decision-id family for formal rejection/disposition of architecture items, such as `DEC-P03-ARCH-REJECT-NNN`. This is only a future naming consideration and is not allocated or used by this artifact. No row in this artifact is presently classified as rejected.

## 12. Non-Scope and Stop Conditions

Explicit non-scope of this artifact:

- **NS-1.** Ratifying any classification choice (this artifact ratifies nothing).
- **NS-2.** Adding any row to `governance/DECISION_LOG.md` (this artifact adds none).
- **NS-3.** Mutating `governance/OPEN_QUESTIONS.md`, `governance/RISK_REGISTER.md`, or `governance/ROADMAP.md` row content or status.
- **NS-4.** Resolving any `OQ-P02-*` question, disposing any `P02-RISK-*` risk, or scheduling any `P02-ROAD-*` roadmap item.
- **NS-5.** Modifying `governance/P03_ARCHITECTURE_EVALUATION_PACKAGE.md` or `governance/P03_ARCHITECTURE_RATIFICATION_PLAN.md`.
- **NS-6.** Modifying any ratified P02 artifact, the ratified context-policy set, `governance/PRODUCT_CHARTER.md`, `governance/GLOSSARY.md`, `governance/CHANGE_PROTOCOL.md`, `governance/NEVER_AUTOMATIC.md`, `governance/TRUST_BOUNDARIES.md`, `docs/REFERENCE_STRUCTURE.md`, or any other ratified governance document.
- **NS-7.** Modifying adapter rules (`CLAUDE.md`, `AGENTS.md`, `.claude/rules/**`), hooks (`.claude/hooks/**`), or settings (`.claude/settings.json`, `.claude/settings.local.example.json`).
- **NS-8.** Modifying or creating dependencies, lockfiles, manifests, license files, or project code.
- **NS-9.** Generating, scaffolding, or validating any runtime context pack (`.continuum/RUNTIME_CONTEXT.md`, `.continuum/context-index.yaml`, `.continuum/context-budget.yaml`, `.continuum/context-freshness.yaml`, `.continuum/token-audit.md`).
- **NS-10.** Creating any P04 or P05 task; activating P04 or P05; granting P04 GO.
- **NS-11.** Creating `governance/PRODUCT_OWNER.md`.
- **NS-12.** Encoding any identity other than `Rauf Alizada` as valid project authority.

Stop conditions:

- **SC-1.** Any wording in a future prepared diff that ratifies the classification set without an explicit Product Owner-approved Gate CG-2: **stop and escalate**.
- **SC-2.** Any wording that mutates `governance/OPEN_QUESTIONS.md`, `governance/RISK_REGISTER.md`, or `governance/ROADMAP.md` row status or content without a separately approved gate (e.g. Gate CG-3): **stop and escalate**.
- **SC-3.** Any wording that activates P04 or P05, or that creates a P04 or P05 task, from a G-4 classification diff: **stop and escalate**.
- **SC-4.** Any wording that authorizes hook activation, settings changes, adapter-rule changes, dependency installation, license selection, or project-code changes from a G-4 classification diff: **stop and escalate**.
- **SC-5.** Any wording that authorizes runtime context pack generation from a G-4 classification diff: **stop and escalate**.
- **SC-6.** Any introduction of `Raauf Alizada` or `Tural Rahmanli` as valid project authority anywhere in the classification chain: **stop and escalate**.
- **SC-7.** Any conflict between this artifact and ratified governance (e.g. `governance/CHANGE_PROTOCOL.md`, `governance/NEVER_AUTOMATIC.md`, `governance/TRUST_BOUNDARIES.md`, the ratified context-policy set, or ratified P02 artifacts): **stop and escalate**; ratified governance wins per `CLAUDE.md` authority order.
