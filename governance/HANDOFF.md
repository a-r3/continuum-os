---
handoff_status: P03_ADR_006_RATIFIED_AWAITING_PRODUCT_OWNER_SELECTION_OF_NEXT_P03_STEP
current_gate: P03_ARCHITECTURE_EVALUATION
gate_status: ACTIVATED
next_action: PRODUCT_OWNER_SELECTION_OF_NEXT_P03_STEP_AFTER_ADR_006_RATIFICATION
known_blockers: []
---

# Handoff

## Current Handoff State

P01 — Founder Discovery and Product Definition is **closed/completed** under `DEC-P01-CLOSEOUT-001`. P01 closeout commit `a7d77ce457e33326ea413223b8f27996b084a403`.

P02 — Domain, Governance, and Security Discovery is **closed/completed** under `DEC-P02-CLOSEOUT-001`. P02 closeout commit `f0662cef096890bbb5e333793442e567cb9b0321`. `CONT-P02-ONB-001` is **closed/completed** under the same closeout decision.

P03 — Architecture Evaluation is **active (architecture-only)** under `DEC-P03-ACTIVATION-001`. Single active task: `CONT-P03-ARCH-001` — P03 Architecture Evaluation and Decision Framework. Current gate: `P03_ARCHITECTURE_EVALUATION` (`gate_status: ACTIVATED`). P04 and P05 are **not active**. No P04 or P05 task is proposed or activated by this P03 activation.

The proposed P03 Architecture Evaluation Package (`governance/P03_ARCHITECTURE_EVALUATION_PACKAGE.md`) has been **prepared as a proposed P03 architecture evaluation package** under `CONT-P03-ARCH-001` and `DEC-P03-ACTIVATION-001`. Document status: `PROPOSED_INACTIVE`. Ratification status: `NOT_RATIFIED`. No architecture decision is ratified by this package. No row was added to `governance/DECISION_LOG.md`. No `OQ-P02-*` / `P02-RISK-*` / `P02-ROAD-*` status was changed. No hooks, adapter rules, settings, dependencies, license, project code, or runtime context packs were changed. The package remains the review surface for P03.

The proposed P03 Architecture Ratification Plan (`governance/P03_ARCHITECTURE_RATIFICATION_PLAN.md`) has additionally been **prepared as a proposed sequencing and readiness plan** under the same active task and activation decision. Document status: `PROPOSED_INACTIVE`. Ratification status: `NOT_RATIFIED`. The plan defines ratification principles (P-1..P-10), a recommended ratification sequence (Steps A..G), items ready for ratification planning (R-1, R-3, R-5, R-6, ADR-DRAFT-P03-001, ADR-DRAFT-P03-003, ADR-DRAFT-P03-005, ADR-DRAFT-P03-006, I-1, I-2, I-7, I-8), items requiring source-package revision before ratification (R-2 / ADR-DRAFT-P03-002 threshold-wording and Security/Trust requirement mapping; R-4 / ADR-DRAFT-P03-004 runtime-context-pack acceptance criteria; I-3 / I-4 / I-5 dependent on G-4 classification; I-6 link-into-every-ratification), required pre-ratification evidence (E-1..E-9), the G-4 classification plan for `OQ-P02-*` / `P02-RISK-*` / `P02-ROAD-*`, proposed decision-id families (`DEC-P03-ARCH-RECO-NNN`, `DEC-P03-ARCH-ADR-NNN`, `DEC-P03-ARCH-CRIT-NNN`, `DEC-P03-ARCH-CLASS-NNN`, `DEC-P03-ARCH-REVISION-NNN`, `DEC-P03-CLOSEOUT-NNN`), non-scope (NS-1..NS-11), and stop conditions (SC-1..SC-8). The plan ratifies nothing, adds no row to `governance/DECISION_LOG.md`, does not modify the evaluation package, does not modify `governance/OPEN_QUESTIONS.md` / `governance/RISK_REGISTER.md` / `governance/ROADMAP.md` or any ratified P02 artifact, does not modify adapter rules / hooks / settings / dependencies / license / project code, does not generate any runtime context pack, and does not authorize P04 or P05. The plan remains proposed and not ratified.

The P03 G-4 Classification record (`governance/P03_G4_CLASSIFICATION_PLAN.md`) has been **ratified** by the Product Owner (`Rauf Alizada`) on 2026-06-24 under `DEC-P03-ARCH-CLASS-001`. Document status: `Ratified`. Ratification status: `RATIFIED`. Ratification decision: `DEC-P03-ARCH-CLASS-001` (recorded in `governance/DECISION_LOG.md`). The G-4 ratification classifies every `OQ-P02-*` open question (28 rows: `OQ-P02-D-001..009`, `OQ-P02-S-001..009`, `OQ-P02-C-001..010`), every `P02-RISK-*` risk (19 rows: `P02-RISK-001..019`), and every `P02-ROAD-*` roadmap item (15 rows: `P02-ROAD-001..015`) into the three-value G-4 vocabulary with the ratified distribution: 27 `P03-blocking`, 14 `P04-blocking`, 21 `deferred-with-acceptance` (62 rows total). Forward application per `DEC-P03-ARCH-CLASS-001`: `P03-blocking` rows must be resolved, disposed, or explicitly deferred-with-acceptance before P03 closeout; `P04-blocking` rows must be resolved or explicitly accepted before P04 GO (source-package Gate G-8); `deferred-with-acceptance` rows may remain open unless reclassified by a later Product Owner decision. **Source registers (`governance/OPEN_QUESTIONS.md`, `governance/RISK_REGISTER.md`, `governance/ROADMAP.md`) remain unchanged by this ratification — no `OQ-P02-*`, `P02-RISK-*`, or `P02-ROAD-*` row status or content was mutated.** The G-4 ratification does **not** ratify any architecture recommendation `R-1..R-6`, any `ADR-DRAFT-P03-001..006`, or any criterion `I-1..I-8`; the proposed P03 Architecture Evaluation Package (`governance/P03_ARCHITECTURE_EVALUATION_PACKAGE.md`) and the proposed P03 Architecture Ratification Plan (`governance/P03_ARCHITECTURE_RATIFICATION_PLAN.md`) both remain `PROPOSED_INACTIVE` / `NOT_RATIFIED`. The G-4 ratification does **not** authorize implementation, project code, dependencies, hooks, adapter rules, settings, license, runtime context packs, or P04/P05 activation. P04 and P05 remain not active. Reclassification of any row requires a separately approved Product Owner decision per the reclassification clause of `DEC-P03-ARCH-CLASS-001`.

## Ratified P02 Discovery Package (carried forward)

- `governance/CONTEXT_POLICY.md` — ratified under `DEC-P02-CONTEXT-POLICY-001`; canonical governance authority for context policy.
- `governance/CONTEXT_BUDGET.md` — ratified under `DEC-P02-CONTEXT-BUDGET-001`; canonical governance authority for context-budget rules, subordinate to ratified Context Policy.
- `governance/CONTEXT_RETRIEVAL_PROTOCOL.md` — ratified under `DEC-P02-CONTEXT-RETRIEVAL-001`; canonical governance authority for retrieval-mode and source-authority rules, subordinate to ratified Context Policy and ratified Context Budget.
- Context-policy set closed under `DEC-P02-CONTEXT-SET-CLOSEOUT-001`.
- `governance/P02_DOMAIN_DISCOVERY_DRAFT.md` — ratified under `DEC-P02-DOMAIN-DISCOVERY-001`.
- `governance/P02_SECURITY_TRUST_REQUIREMENTS_DRAFT.md` — ratified under `DEC-P02-SECURITY-TRUST-REQUIREMENTS-001` (ratification commit `cbcb04ca439da89d2f6e783efc36e8ef62e750b4`).
- `governance/P02_DATA_CLASSIFICATION_SENSITIVE_BOUNDARY_DRAFT.md` — ratified under `DEC-P02-DATA-CLASSIFICATION-001` (ratification commit `53a00f7abd137277dcdace18bd700861935ebcbe`).

Candidate concepts recorded inside the ratified P02 discovery documents remain candidate concepts unless separately converted into binding policy, controls, hooks, settings, adapter rules, or implementation work via a future Product Owner-approved gate.

## Projected P02 Artifacts Carried Forward Unchanged

- `governance/OPEN_QUESTIONS.md` — 28 P02 questions (`OQ-P02-D-001..009`, `OQ-P02-S-001..009`, `OQ-P02-C-001..010`), all `Open`. Projection commit `e0dba07e759bfded5e4f7bc1222f2b79c8a50a7f`. Existing `OQ-P01-*` rows remain unchanged; their disposition is deferred to a separate future Product Owner-approved diff.
- `governance/RISK_REGISTER.md` — 19 P02 risks (`P02-RISK-001..019`), all `Proposed; open`. Projection commit `e0b18ac125e8a03b5f445040d44a9145821d5be9`.
- `governance/ROADMAP.md` — 15 P02 roadmap items (`P02-ROAD-001..015`), all `Proposed; not started`. Projection commit `fdfeeddff01589467ec251c68adf616c0eb813ad`.
- P02 closeout readiness audit commit: `7eee4f956844ae3cd7409f04f7c531c4c5bb2936`. P02 closeout commit: `f0662cef096890bbb5e333793442e567cb9b0321`.

No `OQ-P02-*` question, `P02-RISK-*` risk, or `P02-ROAD-*` roadmap item is triaged or status-changed by P03 activation.

## Deferred Beyond P02 Closeout

- Reading Policy Table.
- Tag vocabulary.
- Baseline token-cost measurement method.
- Existing `OQ-P01-*` row disposition.

Each deferred item requires a separately approved Product Owner plan and approval verb to address.

## P03 Activation Invariants Asserted

`DEC-P03-ACTIVATION-001` explicitly asserts:

- Exactly one active task during P03: `CONT-P03-ARCH-001` (active-task invariant preserved).
- Product Owner identity `Rauf Alizada` preserved as sole project authority and sole ratification authority for v1.
- P03 is architecture-only: no implementation, code, dependency, hook, adapter-rule, settings, license, or runtime-context-pack change is authorized under P03.
- No runtime context pack generated under P03 (`.continuum/RUNTIME_CONTEXT.md`, `.continuum/context-index.yaml`, `.continuum/context-budget.yaml`, `.continuum/context-freshness.yaml`, `.continuum/token-audit.md` absent).
- P04 and P05 remain not active. No P04 or P05 task is proposed or activated by this P03 activation.
- Ratified context-policy set remains canonical and is not superseded by P03 activation.
- Projected P02 artifacts (open questions, risk register, roadmap, document registry) are unchanged by this P03 activation.
- Invalid identities `Raauf Alizada` and `Tural Rahmanli` are not introduced as project authority.

## Next Action

- Product Owner selection of the next safe P03 step under `CONT-P03-ARCH-001` / `DEC-P03-ACTIVATION-001`. The P03 ADR `ADR-DRAFT-P03-006` (Agent-Adapter Boundary) is ratified under `DEC-P03-ARCH-ADR-004` (fourth row in the `DEC-P03-ARCH-ADR-NNN` family, sequenced after `DEC-P03-ARCH-ADR-001`, `DEC-P03-ARCH-ADR-002`, and `DEC-P03-ARCH-ADR-003`) as the canonical Agent-Adapter Boundary ADR per the `I-2` ADR-canonicalization rule ratified under `DEC-P03-ARCH-CRIT-004`, consistent with already-ratified `DEC-P03-ARCH-RECO-004` and preserving Option `A-C` (adapter abstraction via a future `ADAPTER_CONTRACT.md`-like artifact). The ADR row states canonical ADR content (context, decision, consequences, alternatives considered) verbatim from `governance/P03_ARCHITECTURE_EVALUATION_PACKAGE.md` §7 without modifying the package. `DEC-P03-ARCH-ADR-004` is consistent with `DEC-P03-ARCH-RECO-001` (`R-5` / Option `B-B`), `DEC-P03-ARCH-ADR-001` (`ADR-DRAFT-P03-005` canonicalization), `DEC-P03-ARCH-RECO-002` (`R-1` / Option `D-B`), `DEC-P03-ARCH-ADR-002` (`ADR-DRAFT-P03-001` canonicalization), `DEC-P03-ARCH-RECO-003` (`R-3` / Option `C-C`), `DEC-P03-ARCH-ADR-003` (`ADR-DRAFT-P03-003` canonicalization), and `DEC-P03-ARCH-RECO-004` (`R-6` / Option `A-C`). `R-6` remains ratified under `DEC-P03-ARCH-RECO-004` with selected option `A-C`; `R-3` remains ratified under `DEC-P03-ARCH-RECO-003` with selected option `C-C`; `ADR-DRAFT-P03-003` remains canonicalized under `DEC-P03-ARCH-ADR-003`; `R-1` remains ratified under `DEC-P03-ARCH-RECO-002` with selected option `D-B`; `ADR-DRAFT-P03-001` remains canonicalized under `DEC-P03-ARCH-ADR-002`; `R-5` remains ratified under `DEC-P03-ARCH-RECO-001` with selected option `B-B`; `ADR-DRAFT-P03-005` remains canonicalized under `DEC-P03-ARCH-ADR-001`. `DEC-P03-ARCH-ADR-004` does not re-ratify `R-1`, `R-3`, `R-5`, `R-6`, `ADR-DRAFT-P03-001`, `ADR-DRAFT-P03-003`, or `ADR-DRAFT-P03-005`, and does not modify or supersede `DEC-P03-ARCH-RECO-001`, `DEC-P03-ARCH-ADR-001`, `DEC-P03-ARCH-RECO-002`, `DEC-P03-ARCH-ADR-002`, `DEC-P03-ARCH-RECO-003`, `DEC-P03-ARCH-ADR-003`, or `DEC-P03-ARCH-RECO-004`. `OQ-P02-D-007` (`Agent` as domain concept vs adapter/runtime concern — the directly-conditioning `P03-blocking` open question for `R-6` per `governance/P03_G4_CLASSIFICATION_PLAN.md` §5), `OQ-P02-S-005` (Agent-behavior split between governance and adapter rules — per §5), and `P02-ROAD-009` (Decide Adapter-Rule vs Governance Split for Agent Behavior — per §7) remain architecture-posture-**bounded** by `DEC-P03-ARCH-RECO-004` and are reinforced by `DEC-P03-ARCH-ADR-004` at the canonical realization surface (a future separately ratified vendor-neutral adapter contract document); `governance/OPEN_QUESTIONS.md` and `governance/ROADMAP.md` remain unchanged and final per-row disposition / scheduling remains a separately approved Product Owner gate. `P02-RISK-007` (Hook / Adapter / Settings Drift Before Ratified Gate — per §6) remains architecture-posture-**partially bounded** by `DEC-P03-ARCH-RECO-004` for the Agent-Adapter Boundary dimension only because the row is `R-2` / `R-6` cross-coupled per the G-4 plan ("Resolved jointly with R-2 / R-6 ratifications") and is partially reinforced by `DEC-P03-ARCH-ADR-004` for the same dimension only; final disposition of `P02-RISK-007` remains coupled to a separately approved `R-2` ratification gate, and `governance/RISK_REGISTER.md` remains unchanged. `P02-ROAD-001` (Resolve Domain-Model Open Questions — per §7) is architecture-posture-**reinforced-for-the-Agent-Adapter-dependency-surface-only** by `DEC-P03-ARCH-ADR-004`; the Domain-dimension bound already established by `DEC-P03-ARCH-RECO-002` and reinforced by `DEC-P03-ARCH-ADR-002` under Option `D-B` is unchanged; the Agent-Adapter-dependency-surface bound established by `DEC-P03-ARCH-RECO-004` is reaffirmed; `governance/ROADMAP.md` remains unchanged. Structural cross-cutting `P03-blocking` risks `P02-RISK-001`, `P02-RISK-002`, `P02-RISK-005`, `P02-RISK-006`, `P02-RISK-018` are reaffirmed without mutation. `OQ-P02-C-001`, `OQ-P02-C-010`, `P02-RISK-016`, and `P02-ROAD-002` remain architecture-posture-**bounded** by `DEC-P03-ARCH-RECO-003` and reinforced by `DEC-P03-ARCH-ADR-003`; `OQ-P02-C-009` remains architecture-posture-**partially bounded** by `DEC-P03-ARCH-RECO-003` and partially reinforced by `DEC-P03-ARCH-ADR-003` for the Data Classification dimension only; `OQ-P02-D-001`, `P02-RISK-017`, and `P02-ROAD-001` (Domain dimension) remain architecture-posture-**bounded** by `DEC-P03-ARCH-RECO-002` and reinforced by `DEC-P03-ARCH-ADR-002`; `OQ-P02-D-008` remains architecture-posture-**bounded** by `DEC-P03-ARCH-RECO-001` and reinforced by `DEC-P03-ARCH-ADR-001`; none of these rows is mutated. The P03 `I-1` implementation-readiness criterion remains ratified under `DEC-P03-ARCH-CRIT-001` and is satisfied by `DEC-P03-ARCH-ADR-004` (unique row in the `DEC-P03-ARCH-ADR-NNN` family). The P03 `I-2` implementation-readiness criterion remains ratified under `DEC-P03-ARCH-CRIT-004` and is satisfied by `DEC-P03-ARCH-ADR-004` (canonical ADR row for `ADR-DRAFT-P03-006`). The P03 `I-7` implementation-readiness criterion remains ratified under `DEC-P03-ARCH-CRIT-002` and is satisfied by `DEC-P03-ARCH-ADR-004` (explicit non-authorization block). The P03 `I-8` implementation-readiness criterion remains ratified under `DEC-P03-ARCH-CRIT-003` and is preserved by `DEC-P03-ARCH-ADR-004`: P03 closeout requires a separately approved Product Owner P03 closeout decision (anticipated under the `DEC-P03-CLOSEOUT-NNN` family) which flips `CONT-P03-ARCH-001` frontmatter to `lifecycle_status: DONE`, `gate_status: COMPLETED`, `ratification_status: RATIFIED`, `active: false`, `execution_authorized: false`, and records `closeout_decision`; closing P03 does not by itself activate P04; P04 activation requires its own separately approved Product Owner P04 activation decision, single-active-task gate, and task creation. All four ratified criteria remain procedural only. `DEC-P03-ARCH-ADR-004` does **not** authorize creation, generation, or population of the future vendor-neutral adapter contract document (`ADAPTER_CONTRACT.md`-like artifact) — such creation requires a separately approved Product Owner gate that defines the canonical adapter-behavior clauses, the agent-identity / agent-authority-order / agent-approval-verb / agent-never-automatic-surface content, the subordination clause, and the document-registry registration; does **not** authorize creation, registration, or activation of any additional vendor adapter (Option `A-B` is not adopted, and even Option `A-C`'s second-adapter step is gated on the future contract's ratification); does **not** modify the existing Claude Code adapter surface (`CLAUDE.md`, `AGENTS.md`, `.claude/rules/**`, `.claude/skills/**`, `.claude/agents/**`, `.claude/hooks/**`, `.claude/settings.json`, `.claude/settings.local.example.json`); does **not** authorize hook registration, hook activation, settings changes, or adapter-rule changes. P03 remains active under `CONT-P03-ARCH-001` / `DEC-P03-ACTIVATION-001`. P03 closeout remains not open and requires a separately approved Product Owner closeout decision; closing P03 does not activate P04. P04 and P05 remain inactive. Source registers (`governance/OPEN_QUESTIONS.md`, `governance/RISK_REGISTER.md`, `governance/ROADMAP.md`) remain unchanged. No implementation, project code, dependency, hook, adapter-rule, settings, license, or runtime-context-pack authorization exists. Governance documents are contract / policy authority only; project code remains separate and requires later explicit implementation authorization.
- The next safe P03 step is Product Owner selection between: (a) a revision path for items requiring source-package revision — `R-2` / `ADR-DRAFT-P03-002` (threshold-wording and Security/Trust requirement mapping) under the `DEC-P03-ARCH-REVISION-NNN` family; (b) a revision path for `R-4` / `ADR-DRAFT-P03-004` (runtime-context-pack acceptance criteria) under the `DEC-P03-ARCH-REVISION-NNN` family; (c) a revision path for `I-3` / `I-4` / `I-5` (dependent on G-4 classification) and `I-6` (link-into-every-ratification) under the `DEC-P03-ARCH-REVISION-NNN` family; (d) per-row follow-up — resolution, disposition, or scheduling — for `P03-blocking` rows under `DEC-P03-ARCH-CLASS-001`, including final disposition of `OQ-P02-D-007`, `OQ-P02-S-005`, `P02-RISK-007` (cross-coupled with `R-2`), `P02-ROAD-001` (cross-coupled across Domain / Governance-Code / Agent-Adapter dimensions), `P02-ROAD-009`, `OQ-P02-C-001`, `OQ-P02-C-009` (cross-coupled with `R-2`), `OQ-P02-C-010`, `P02-RISK-016`, `P02-ROAD-002`, `OQ-P02-D-001`, `OQ-P02-D-008`, and `P02-RISK-017`; or (e) a P03 closeout-readiness review once prerequisites are complete (closeout itself requires a separately approved Product Owner P03 closeout decision under the `DEC-P03-CLOSEOUT-NNN` family). Each selection requires its own separately approved Product Owner approval verb; this handoff opens no such gate.
- Product Owner review of the proposed P03 Architecture Ratification Plan `governance/P03_ARCHITECTURE_RATIFICATION_PLAN.md` under `CONT-P03-ARCH-001` / `DEC-P03-ACTIVATION-001` remains an open review surface. Review surface covers §1 Authority and Status Notice, §2 Source Package, §3 Ratification Principles (P-1..P-10), §4 Recommended Ratification Sequence (Steps A..G), §5 Items Ready for Ratification Planning (R-1, R-3, R-5, R-6, ADR-DRAFT-P03-001, ADR-DRAFT-P03-003, ADR-DRAFT-P03-005, ADR-DRAFT-P03-006, I-1, I-2, I-7, I-8), §6 Items Requiring Revision Before Ratification (R-2, ADR-DRAFT-P03-002, R-4, ADR-DRAFT-P03-004, I-3, I-4, I-5, I-6), §7 Required Pre-Ratification Evidence (E-1..E-9), §8 G-4 Classification Plan (G4-1..G4-6), §9 Proposed Decision ID Families, §10 Non-Scope and Stop Conditions (NS-1..NS-11, SC-1..SC-8), §11 Product Owner Review Checklist. The plan ratifies nothing; the underlying evaluation package remains the canonical content review surface.
- Product Owner review of the proposed P03 architecture-evaluation package `governance/P03_ARCHITECTURE_EVALUATION_PACKAGE.md` remains the underlying content review surface. Sections: §1 Authority and Status Notice, §2 Canonical Inputs, §3 Evaluation Dimensions, §4 Candidate Architecture Options (D-A/B/C, S-A/B/C, C-A/B/C, X-A/B/C, B-A/B/C, A-A/B/C), §5 Tradeoff Comparison, §6 Architecture Recommendations (R-1..R-6), §7 ADR-Ready Drafts (ADR-DRAFT-P03-001..006), §8 Implementation-Readiness Criteria (I-1..I-8), §9 Unresolved Architecture Questions and Risks (candidate `OQ-P03-ARCH-001..010`, candidate `P03-ARCH-RISK-001..007`; not registered), §10 Required Product Owner Review Gates (G-1..G-8). All recommendations, ADR drafts, and criteria remain `status: proposed`; nothing is ratified by either document.
- After Product Owner review, separately approved Product Owner gates may (per §10) (a) ratify one or more recommendations as `DEC-P03-ARCH-RECO-*` rows in `governance/DECISION_LOG.md`, (b) ratify one or more ADR drafts as `DEC-P03-ARCH-ADR-*` (or equivalent), (c) project a small set of P03-specific rows into source registers where appropriate, based on the already-ratified G-4 classification set under `DEC-P03-ARCH-CLASS-001`, (d) authorize hook activation per ratified fixture-evidence and activation discipline, (e) authorize runtime context pack generation, and (f) approve P03 closeout. None of these is authorized by this package.
- The Product Owner may also separately approve diffs to (a) dispose `OQ-P01-*` rows, or (b) plan deferred token-efficiency sibling work (Reading Policy Table, tag vocabulary, baseline token-cost measurement method). These are independent of P03 and require their own approval verbs.

The Product Owner / sole project authority / sole ratification authority for v1 is **Rauf Alizada**. No other identity is valid for project governance, participation, approval, ratification, or authority. The spelling `Raauf Alizada` is invalid. The identity `Tural Rahmanli` does not participate in this project in any form and must not be encoded as a project identity; any incidental appearance of that name in Git committer metadata or environment metadata is not project authority.

## Actions Not Yet Authorized

- Activating P04 or P05.
- Creating any P04 or P05 task.
- Ratifying any architecture decision (the Product Owner is the sole ratifier).
- Generating any runtime context pack.
- Ratifying or modifying any ratified P02 document.
- Modifying `governance/OPEN_QUESTIONS.md`, `governance/RISK_REGISTER.md`, `governance/ROADMAP.md`, or `governance/DOCUMENT_REGISTRY.md` outside a separately approved gate.
- Modifying adapter rules (`CLAUDE.md`, `AGENTS.md`, `.claude/rules/`).
- Modifying hooks (`.claude/hooks/**`).
- Modifying `.claude/settings.json` or `.claude/settings.local.example.json`.
- Modifying ratified governance documents (`PRODUCT_CHARTER.md`, `GLOSSARY.md`, `CHANGE_PROTOCOL.md`, `NEVER_AUTOMATIC.md`, `TRUST_BOUNDARIES.md`, `RISK_REGISTER.md`, `ROADMAP.md`, `DOCUMENT_REGISTRY.md`, `CONTEXT_POLICY.md`, `CONTEXT_BUDGET.md`, `CONTEXT_RETRIEVAL_PROTOCOL.md`, `docs/REFERENCE_STRUCTURE.md`, `P02_DOMAIN_DISCOVERY_DRAFT.md`, `P02_SECURITY_TRUST_REQUIREMENTS_DRAFT.md`, `P02_DATA_CLASSIFICATION_SENSITIVE_BOUNDARY_DRAFT.md`) outside a separately approved gate.
- Modifying P02 artifacts or P02 task files.
- Creating `governance/PRODUCT_OWNER.md`.
- License creation or selection.
- Implementation stack selection without a separately approved Product Owner-ratified architecture decision.
- Implementation work.
- Dependency installation.
- Hook registration or activation.
- Settings changes.
- Project-code changes.
- Any staging, commit, or push not explicitly approved per the Git approval verb vocabulary (`prepare diff` / `commit only` / `commit and push`).

## Current Constraints

- No hooks are activated.
- No license is selected.
- No implementation stack is selected.
- No architecture is ratified.
- Product Charter is **ratified** (`ratified_evolving`).
- Product Owner identity encoding is **ratified**.
- Glossary is **ratified** (`ratified_evolving`).
- `governance/CHANGE_PROTOCOL.md` is **ratified** (`ratified_evolving`).
- `governance/NEVER_AUTOMATIC.md` is **ratified** (`ratified_evolving`).
- `governance/TRUST_BOUNDARIES.md` is **ratified** (`ratified_evolving`).
- `governance/RISK_REGISTER.md` Bundle 4 P01 top-risk update is **ratified** (`ratified_evolving`).
- `docs/REFERENCE_STRUCTURE.md` is **ratified** (`ratified_evolving`).
- `governance/ROADMAP.md` is **ratified** (`ratified_evolving`).
- `governance/DOCUMENT_REGISTRY.md` is **ratified** (`ratified_evolving`).
- `governance/CONTEXT_POLICY.md`, `governance/CONTEXT_BUDGET.md`, and `governance/CONTEXT_RETRIEVAL_PROTOCOL.md` are **ratified** as canonical governance authority for context loading, context budgets, and context retrieval respectively.
- `governance/P02_DOMAIN_DISCOVERY_DRAFT.md`, `governance/P02_SECURITY_TRUST_REQUIREMENTS_DRAFT.md`, and `governance/P02_DATA_CLASSIFICATION_SENSITIVE_BOUNDARY_DRAFT.md` are **ratified** as P02 discovery artifacts.
- Bundle 1, Bundle 2, Bundle 3, Bundle 4, and Bundle 5 are closed/completed.
- P01 is **closed/completed** under `DEC-P01-CLOSEOUT-001`.
- P02 is **closed/completed** under `DEC-P02-CLOSEOUT-001`.
- `CONT-P02-ONB-001` is **closed/completed** under `DEC-P02-CLOSEOUT-001`.
- P03 is **active (architecture-only)** under `DEC-P03-ACTIVATION-001`. Single active task: `CONT-P03-ARCH-001`.
- `governance/DECISION_LOG.md` records `DEC-P01-B1-001`, `DEC-P01-B1-002`, `DEC-P01-B2-001`, `DEC-P01-B3-001`, `DEC-P01-B3-002`, `DEC-P01-B4-001`, `DEC-P01-B4-002`, `DEC-P01-B5-001`, `DEC-P01-B5-002`, `DEC-P01-B5-003`, `DEC-P01-CLOSEOUT-001`, `DEC-P02-ACTIVATION-001`, `DEC-P02-DISCOVERY-PLAN-001`, `DEC-P02-CONTEXT-DRAFT-PLAN-001`, `DEC-P02-CONTEXT-POLICY-001`, `DEC-P02-CONTEXT-BUDGET-001`, `DEC-P02-CONTEXT-RETRIEVAL-001`, `DEC-P02-CONTEXT-SET-CLOSEOUT-001`, `DEC-P02-DISCOVERY-PLAN-002`, `DEC-P02-DOMAIN-DISCOVERY-DRAFT-PLAN-001`, `DEC-P02-DOMAIN-DISCOVERY-001`, `DEC-P02-SECURITY-TRUST-REQUIREMENTS-001`, `DEC-P02-DATA-CLASSIFICATION-001`, `DEC-P02-CLOSEOUT-001`, `DEC-P03-ACTIVATION-001`, `DEC-P03-ARCH-CLASS-001`, `DEC-P03-ARCH-CRIT-001`, `DEC-P03-ARCH-CRIT-002`, `DEC-P03-ARCH-CRIT-003`, `DEC-P03-ARCH-CRIT-004`, `DEC-P03-ARCH-RECO-001`, `DEC-P03-ARCH-ADR-001`, `DEC-P03-ARCH-RECO-002`, `DEC-P03-ARCH-ADR-002`, `DEC-P03-ARCH-RECO-003`, `DEC-P03-ARCH-ADR-003`, `DEC-P03-ARCH-RECO-004`, and `DEC-P03-ARCH-ADR-004`.
- Exactly one active task: `CONT-P03-ARCH-001`. Active-task invariant preserved.
- No runtime context pack has been generated.
- Adapter rules (`CLAUDE.md`, `AGENTS.md`, `.claude/rules/`) have not been modified.
- Product Owner remains sole ratification authority. The Product Owner is `Rauf Alizada`.

## Claude Cold Start Reading Order

Claude Code must read:

1. `CLAUDE.md`
2. `governance/PROJECT_STATE.md`
3. `governance/CURRENT_PHASE.md`
4. `governance/ACTIVE_TASK.md`
5. `governance/HANDOFF.md`
6. `governance/tasks/CONT-P03-ARCH-001.md` (active task)
7. `governance/tasks/CONT-P02-ONB-001.md` (closed/completed; carried for closeout evidence reference)
8. `governance/CHANGE_PROTOCOL.md`
9. `governance/DECISION_LOG.md`
10. `governance/RISK_REGISTER.md`
11. `governance/OPEN_QUESTIONS.md`
12. `governance/ROADMAP.md`
13. `governance/DOCUMENT_REGISTRY.md`
14. `docs/REFERENCE_STRUCTURE.md`
15. `.continuum/manifest.yaml`
16. `.continuum/index.md`
