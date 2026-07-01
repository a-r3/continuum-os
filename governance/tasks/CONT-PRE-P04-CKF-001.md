---
task_id: CONT-PRE-P04-CKF-001
title: Pre-P04 CKF (Canonical Knowledge Format) Term Definition
lane: Strict
phase: Pre-P04 Transition
mode: terminology-definition-only
lifecycle_status: DONE
current_gate: PRE_P04_CKF_DEFINITION
gate_status: COMPLETED
ratification_status: RATIFIED
active: false
execution_authorized: false
predecessor_task: CONT-P03-ARCH-001
source_decision: DEC-PRE-P04-CKF-DEF-001
closeout_decision: DEC-PRE-P04-CKF-DEF-001
product_owner: Rauf Alizada
---

# CONT-PRE-P04-CKF-001 — Pre-P04 CKF (Canonical Knowledge Format) Term Definition

## Authority Notice

The sole Product Owner / sole project authority / sole ratification authority for v1 is `Rauf Alizada`. No other identity is valid for project governance, participation, approval, ratification, or authority. The spelling `Raauf Alizada` is invalid. The identity `Tural Rahmanli` does not participate in this project in any form and must not be encoded as a project identity; any incidental appearance of that name in Git committer metadata or environment metadata is not project authority. Only `Rauf Alizada` may approve, ratify, or close this task's deliverable.

## Status

- Repository state entering this task: P01, P02, and P03 closed/completed; zero-active-task state awaiting a separately approved Product Owner P04 activation decision (`DEC-P03-CLOSEOUT-001`).
- This task is created and closed within a single Product Owner-approved diff. It is a bounded, zero-active-task transition task, not a phase activation.
- P04 and P05 remain not active before, during, and after this task.

## Objective

Define and canonicalize the term `CKF` as `Canonical Knowledge Format` in `governance/GLOSSARY.md`, as a planned specification layer (not an implementation), and register this task and the glossary addition in `governance/DOCUMENT_REGISTRY.md`. This task performs a terminology definition only; it does not design, schema, or implement CKF.

## Scope

- Create this task file (`governance/tasks/CONT-PRE-P04-CKF-001.md`) and close it within the same diff.
- Record ratification decision `DEC-PRE-P04-CKF-DEF-001` in `governance/DECISION_LOG.md`, defining `CKF` as `Canonical Knowledge Format`.
- Add a ratified `CKF` term entry to `governance/GLOSSARY.md`, stating that CKF is a planned specification layer, not implementation, without rewriting the Glossary's original Bundle 2 frontmatter provenance stamp.
- `governance/DOCUMENT_REGISTRY.md` is updated only with CKF-scoped registry updates: the existing Glossary row is updated, the new CKF task row is added, and the `DEC-PRE-P04-CKF-DEF-001` decision-reference bullet is added; no unrelated registry row is altered.
- Update `governance/ACTIVE_TASK.md`, `governance/CURRENT_PHASE.md`, `governance/PROJECT_STATE.md`, and `governance/HANDOFF.md` to reflect this task as the new closed/completed predecessor task, while the repository remains in zero-active-task state.
- Resolve the internal wording inconsistency in `governance/CURRENT_PHASE.md` between an unconditional and a qualified `governance/DOCUMENT_REGISTRY.md`-modification prohibition, so that only `governance/OPEN_QUESTIONS.md`, `governance/RISK_REGISTER.md`, and `governance/ROADMAP.md` remain unconditionally prohibited, consistent with `governance/DOCUMENT_REGISTRY.md`'s treatment elsewhere as modifiable only within a separately approved gate (which this task is).
- Append a new session entry to `governance/SESSION_LOG.md`.

## Non-Scope

- Does not activate P04 or P05.
- Does not authorize implementation, project code, dependencies, hooks, hook activation, adapter-rule changes (`CLAUDE.md`, `AGENTS.md`, `.claude/rules/`), settings changes, license selection or creation, or runtime context pack generation.
- Does not create any CKF schema, file format specification, or CKF artifact beyond the glossary term itself.
- Does not modify `governance/OPEN_QUESTIONS.md`, `governance/RISK_REGISTER.md`, or `governance/ROADMAP.md`.
- Does not modify any other ratified governance document (`PRODUCT_CHARTER.md`, `CHANGE_PROTOCOL.md`, `NEVER_AUTOMATIC.md`, `TRUST_BOUNDARIES.md`, `docs/REFERENCE_STRUCTURE.md`, the ratified context-policy set, or the ratified P02 discovery drafts).
- Does not rewrite the Glossary's original ratification frontmatter (`last_ratified_by`, `last_ratified_at`, `source_task` remain `CONT-P01-BUNDLE-002` / `2026-06-20`); the new term is separately provenance-stamped inline.
- Does not resolve, reclassify, or dispose any `OQ-P02-*`, `P02-RISK-*`, or `P02-ROAD-*` row.
- Does not create a P04 or P05 task.
- Does not change Product Owner identity or create `governance/PRODUCT_OWNER.md`.

## Assumptions

- `CKF` expands to `Canonical Knowledge Format`, per explicit Product Owner instruction defining this task's scope.
- A "planned specification layer" is a governance-recorded, not-yet-designed future artifact class; it does not itself require a schema, format, or storage decision at this time.

## Risks

- Risk: defining a new term without an eventual specification could create ambiguity about what CKF governs. Mitigation: the glossary entry explicitly states CKF is planned only, non-binding on implementation until a separately approved future specification is ratified.
- Risk: registry or handoff edits could drift from the CKF-only scope. Mitigation: file-allowlist verification before export, limited to the files enumerated in Scope.

## Sequence

1. Draft and ratify `DEC-PRE-P04-CKF-DEF-001` in `governance/DECISION_LOG.md`.
2. Draft this task file with closeout frontmatter already applied.
3. Add the `CKF` term to `governance/GLOSSARY.md`.
4. Register the new task and glossary addition in `governance/DOCUMENT_REGISTRY.md`.
5. Update `governance/ACTIVE_TASK.md`, `governance/CURRENT_PHASE.md`, `governance/PROJECT_STATE.md`, `governance/HANDOFF.md`.
6. Append a `governance/SESSION_LOG.md` entry.
7. Validate the diff and export it for Product Owner review.

## Acceptance Criteria

- `DEC-PRE-P04-CKF-DEF-001` is recorded in `governance/DECISION_LOG.md` with full provenance fields and defines CKF as `Canonical Knowledge Format`, a planned specification layer.
- `governance/GLOSSARY.md` contains a ratified `CKF` term entry, provenance-stamped to `DEC-PRE-P04-CKF-DEF-001` / `CONT-PRE-P04-CKF-001`, without altering the document's original frontmatter.
- `governance/DOCUMENT_REGISTRY.md` registers this task file and the glossary addition, and no other row is altered.
- `governance/ACTIVE_TASK.md` and `governance/CURRENT_PHASE.md` reflect this task as closed/completed and the repository remains in zero-active-task state.
- P04 and P05 remain not active; no P04 task is proposed or activated.
- `governance/OPEN_QUESTIONS.md`, `governance/RISK_REGISTER.md`, and `governance/ROADMAP.md` are byte-identical to pre-task HEAD.

## Validation

- `git diff --check` clean.
- File-allowlist exact-match check against the files enumerated in Scope.
- Confirm `governance/OPEN_QUESTIONS.md`, `governance/RISK_REGISTER.md`, and `governance/ROADMAP.md` are unchanged.
- Confirm no runtime context pack artifacts appear (`.continuum/RUNTIME_CONTEXT.md`, `.continuum/context-index.yaml`, `.continuum/context-budget.yaml`, `.continuum/context-freshness.yaml`, `.continuum/token-audit.md` remain absent).
- Run `.claude/hooks/tests/run-fixtures.sh` and record pass/fail counts.
- Confirm nothing is staged (`git status --porcelain`, `git diff --cached --name-only` empty).

## Evidence

Evidence is recorded in the `### 2026-07-01` entry appended to `governance/SESSION_LOG.md` and in the `DEC-PRE-P04-CKF-DEF-001` decision row in `governance/DECISION_LOG.md`.

## Rollback

- Before commit: discard the prepared diff; no governance state changes.
- After commit, before further work: a future Product Owner decision may supersede `DEC-PRE-P04-CKF-DEF-001` (or issue a `DEC-PRE-P04-CKF-REVISION-NNN` row) to revise or retract the CKF term definition. Until such a decision, the definition stands.

## Approval Gates

- Single gate: `PRE_P04_CKF_DEFINITION` / `gate_status: COMPLETED`, created and closed under `DEC-PRE-P04-CKF-DEF-001` in the same diff.

## Stop Conditions

- Any sign of scope creep into implementation, schema design, dependencies, hooks, adapter rules, settings, license, or P04/P05 activation: **stop and escalate**.
- Any attempt to modify `governance/OPEN_QUESTIONS.md`, `governance/RISK_REGISTER.md`, or `governance/ROADMAP.md`: **stop and escalate**.
- Introduction of any identity other than `Rauf Alizada` as project authority: **stop and escalate**.

## Closeout

This task is **closed/completed** under `DEC-PRE-P04-CKF-DEF-001`, ratified by the Product Owner (`Rauf Alizada`) on 2026-07-01, within the same diff that created it. Frontmatter is set to `lifecycle_status: DONE`, `gate_status: COMPLETED`, `ratification_status: RATIFIED`, `active: false`, `execution_authorized: false`, `closeout_decision: DEC-PRE-P04-CKF-DEF-001`. This closeout does not activate P04 or P05. The repository remains in zero-active-task state awaiting a separately approved Product Owner P04 activation decision.
