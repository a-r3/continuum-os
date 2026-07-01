---
doc_status: ratified_evolving
owner: Product Owner
ratification_status: RATIFIED
last_ratified_by: Rauf Alizada
last_ratified_at: 2026-06-20
source_task: CONT-P01-BUNDLE-002
supersedes:
superseded_by:
---

# Glossary

## Status Notice

This Glossary is **ratified** Continuum OS governance terminology. It was ratified by the Product Owner (`Rauf Alizada`) under task `CONT-P01-BUNDLE-002` (P01 Bundle 2 — Terminology and Knowledge Model). Its document status is `ratified_evolving`.

This Glossary defines the canonical Continuum OS terminology and knowledge-model vocabulary for P01. Its terms are binding ratified governance terminology for the project. Future changes to this Glossary require a separately approved Product Owner-ratified governance change.

This Glossary remains consistent with the ratified `governance/PRODUCT_CHARTER.md` and the ratified Product Owner identity encoding in `governance/PROJECT_STATE.md`. Where this Glossary repeats already-ratified governance state, that underlying state remains governed by its canonical file; this Glossary does not re-ratify it.

This Glossary alone does not authorize any Bundle 3, Bundle 4, or Bundle 5 work, nor any architecture evaluation or selection, implementation, implementation-stack selection, license selection or creation, dependency installation, hook registration or activation, ADR creation, or modification of adapter rules (`CLAUDE.md`, `AGENTS.md`, `.claude/rules/`).

## Purpose

This Glossary defines the canonical terminology and knowledge-model vocabulary that Continuum OS governance, tasks, evidence records, decisions, and handoffs use. It exists to:

- give every Continuum OS document, agent, and reviewer a shared, precise vocabulary;
- distinguish facts, assumptions, proposals, ratified decisions, and open questions so they are never silently collapsed;
- preserve the active-task invariant and the ratification-authority invariant in everyday language;
- prevent terminology from creating premature architectural, implementation, schema, or product-shape obligations during P01.

This Glossary is a governance artifact, not an architectural or implementation specification.

## Term Status Rules

The Glossary distinguishes term entries by their status under governance:

- **Ratified term** — a term whose definition has been ratified by the Product Owner and is binding on the project.
- **Proposed term** — a term whose definition is drafted for review but is not binding. Proposed terms become ratified only after a separately approved Product Owner-ratified governance change.
- **Superseded term** — a term whose former definition has been replaced by a ratified update.

The term entries in this Glossary are ratified as P01 governance terminology by Product Owner ratification under `CONT-P01-BUNDLE-002`. Future term changes begin as proposals and become ratified only after a separately approved Product Owner-ratified governance change. References to ratified governance artifacts inside definitions (for example, the ratified Product Charter or the ratified Product Owner identity encoding) remain governed by their own canonical files; this Glossary does not re-ratify them.

## Knowledge Model Overview

Continuum OS treats project knowledge as a small set of explicitly-typed claims rather than free-form notes. Each claim carries an explicit status and is associated with evidence and an authority boundary.

The five claim types are:

- **Fact** — supported by a canonical governance file or explicit evidence.
- **Assumption** — an unratified working premise.
- **Proposal** — a candidate change, claim, task, or decision that is not yet ratified.
- **Decision** — a Product Owner-ratified semantic choice recorded in the appropriate canonical file.
- **Open question** — an unresolved issue requiring later Product Owner clarification or governance handling.

Facts, assumptions, proposals, ratified decisions, and open questions must not be collapsed into a single category. A proposal does not become a decision by being repeated. An assumption does not become a fact by being convenient. An open question does not become a decision by being deferred.

Knowledge is held in canonical governance files. Chat memory, hidden assistant memory, and conversational context are not canonical authority. A newer message in a session does not override a canonical file unless the Product Owner explicitly approves the corresponding governance change.

## Core Terms

- **memory** — Persisted project-relevant information intended to support continuation of work across sessions and agents. Memory is not automatically authoritative; it is authoritative only when it is backed by canonical status and evidence in a governance file. Chat history and hidden agent memory are not canonical memory.
- **context** — The currently relevant subset of project state, evidence, decisions, tasks, constraints, and files needed to continue work safely. Context is derived from canonical sources; it is not itself a substitute for them.
- **knowledge** — Structured claims about the project that carry an explicit status (fact, assumption, proposal, decision, open question), an explicit source, supporting evidence, and explicit authority boundaries. Knowledge in Continuum OS is typed; untyped narrative is not knowledge.

## Claim and Decision Terms

- **evidence** — An artifact, reference, command output, diff, commit SHA, validation result, or recorded Product Owner approval used to support a claim or decision. Evidence must be inspectable and traceable to a canonical file or commit.
- **decision** — A Product Owner-ratified semantic choice recorded in the appropriate canonical governance file (in particular `governance/DECISION_LOG.md` when applicable, and the relevant target document). A choice that is not Product Owner-ratified is not a decision; it is a proposal.
- **proposal** — A candidate change, claim, task, or decision that is not ratified and has no binding authority until Product Owner approval or ratification. Drafting a proposal does not confer authority to act on it.
- **fact** — A claim supported by canonical governance files or explicit evidence. Facts are not created by assertion; they are created by canonical record.
- **assumption** — An unratified working premise. Assumptions must be labeled as assumptions and must not be treated as facts or decisions. Acting on an assumption without governance approval is out of scope.
- **open question** — An unresolved issue that requires Product Owner clarification or later governance handling. Open questions remain open until explicitly resolved; silence does not close them.

## Governance and Workflow Terms

- **state** — The current canonical snapshot of project condition, including active phase, active task, ratified status of governance documents, and the next safe action. Authoritative state lives in `governance/PROJECT_STATE.md`, `governance/CURRENT_PHASE.md`, `governance/ACTIVE_TASK.md`, and the active task file.
- **phase** — A broad lifecycle stage of the project (for example, P00 bootstrap, P01 founder discovery and product definition, P02 domain, P03 architecture, P04 implementation-readiness, P05 implementation). Phase boundaries are governed by the current canonical phase/state files and by any Product Owner-ratified change protocol or roadmap entries when those become ratified.
- **gate** — A controlled review/approval point within a phase or task. A gate is opened, reviewed, and either passed or held by explicit Product Owner action; it is not passed implicitly.
- **task** — A bounded unit of work with explicit objective, scope, non-scope, lifecycle status, authority, evidence requirements, and stop conditions. Tasks are recorded under `governance/tasks/`.
- **active task** — The single task currently authorized for execution under the active-task invariant. The repository may have zero or one active task, never more than one; mutating execution requires exactly one active task and `execution_authorized: true`.
- **execution authorization** — Permission to perform bounded work under an active task within its declared scope. Execution authorization is delegable only within task scope; it is not the same as ratification authority. Holding execution authorization does not allow scope expansion, ratification, or governance changes outside the task.
- **handoff** — The canonical continuation summary (recorded in `governance/HANDOFF.md` and the active task record) that tells the next session or agent the current state, ratified facts, open questions, blockers, prohibited actions, and the single next safe action.

## Authority Terms

- **authority** — The right to approve, authorize, or ratify a project artifact, claim, or decision. Authority in Continuum OS is layered: execution authority is delegable within an approved task; ratification authority is not.
- **ratification** — Explicit Product Owner approval that turns a proposed semantic decision or artifact into ratified project authority. Ratification is recorded in the appropriate canonical file (the target document plus `governance/DECISION_LOG.md` where applicable) with provenance fields. Nothing is ratified by repetition, by inference, or by an agent on the Product Owner's behalf.

Ratification authority for v1 belongs solely to `Rauf Alizada`. It is non-delegable. No other identity is a valid Product Owner, project authority, approver, ratifier, owner, or participant for v1. Invalid identities (`Raauf Alizada`, `Tural Rahmanli`, or any other) may appear in governance documents only as explicit invalidation or stop-condition references, never as a valid project identity or authority.

## Planned Specification Terms

This section holds terms ratified after the original Bundle 2 Glossary ratification, via a separately approved Product Owner-ratified governance change. Adding a term here does not amend the Glossary's original Bundle 2 frontmatter provenance (`last_ratified_by: Rauf Alizada`, `last_ratified_at: 2026-06-20`, `source_task: CONT-P01-BUNDLE-002`); each term entry carries its own provenance instead.

- **CKF (Canonical Knowledge Format)** — *Ratified under `DEC-PRE-P04-CKF-DEF-001` / `CONT-PRE-P04-CKF-001` on 2026-07-01.* A planned future specification layer for representing Continuum OS canonical knowledge (claims, decisions, evidence, and their statuses) in a defined, non-narrative format. CKF is **not yet designed, schematized, or implemented**. This term definition does not create, authorize, or imply any file format, schema, storage mechanism, database, or implementation for CKF; it records only that the name and expansion are canonical. Any future CKF specification, schema, or implementation requires its own separately approved Product Owner-ratified governance change and, where implementation is involved, a Product Owner-ratified P04 GO decision. CKF does not supersede or modify the knowledge-model terms (`fact`, `assumption`, `proposal`, `decision`, `open question`) defined above; it is a candidate future representation of them, not a redefinition.

## Cross-Reference Rules

- Facts, assumptions, proposals, ratified decisions, and open questions must not be collapsed into a single category in any governance document, task record, handoff, or decision entry.
- Chat memory and hidden assistant memory are not canonical authority. Authoritative project memory lives in canonical governance files.
- A newer message in a session does not override a canonical file. Canonical files change only through an explicit Product Owner-approved governance change.
- Execution authorization is delegable only within the scope of an active task. It does not authorize scope expansion, ratification, or work outside the active task.
- Ratification authority is non-delegable and belongs only to `Rauf Alizada`.
- Invalid identities may appear in any Continuum OS document only as explicit invalidation or stop-condition references. They must never appear as valid project identity, authority, approver, ratifier, owner, or participant.
- Terminology defined in this Glossary must not be read as creating any architecture, schema, implementation, database, retrieval system (including RAG), CLI, SaaS, deployment, or adapter obligation during P01. Such obligations may only arise from separately ratified architecture and implementation decisions in their proper phases.

## Non-Goals

This Glossary is explicitly **not**:

- a substitute for `governance/PRODUCT_CHARTER.md`, `governance/PROJECT_STATE.md`, `governance/CHANGE_PROTOCOL.md`, `governance/DECISION_LOG.md`, `governance/RISK_REGISTER.md`, `governance/ROADMAP.md`, `governance/DOCUMENT_REGISTRY.md`, or any other canonical file;
- an architecture specification, schema definition, data model, or storage design;
- an implementation specification or API contract;
- a license, dependency, or tooling selection;
- a hook, sandbox, or trust-boundary specification;
- an adapter-rule change for `CLAUDE.md`, `AGENTS.md`, or `.claude/rules/`;
- a creation or substitute for `governance/PRODUCT_OWNER.md` (out of scope for v1);
- an authorization to author Bundle 3, Bundle 4, or Bundle 5 deliverables;
- a relaxation of the active-task invariant, the never-automatic guardrails, or the Git approval-verb discipline.

## Source Inputs

This Glossary is consolidated from:

- P01 founder onboarding Group 3 (terminology and knowledge-model questions) recorded under the closed task `CONT-P01-ONB-001`;
- the ratified P01 consolidation and ratification plan recorded under the closed task `CONT-P01-CONSOL-001`;
- the ratified `governance/PRODUCT_CHARTER.md` (Bundle 1 deliverable, ratified in commit `7cfd308367adcd9aecd50994122326167f042b35`);
- the ratified Product Owner identity encoding in `governance/PROJECT_STATE.md` (Bundle 1 deliverable, ratified in commit `7cfd308367adcd9aecd50994122326167f042b35`);
- `governance/DECISION_LOG.md` entries `DEC-P01-B1-001` and `DEC-P01-B1-002`.

Where this Glossary repeats already-ratified governance state (for example, the canonical Product Owner identity or the ratified Product Charter), that underlying state remains governed by the canonical files; this Glossary does not re-ratify it.

## Ratification Evidence

The Product Owner (`Rauf Alizada`) ratified this Glossary under task `CONT-P01-BUNDLE-002` on `2026-06-20`. Ratification is recorded with provenance fields (`doc_status: ratified_evolving`, `ratification_status: RATIFIED`, `last_ratified_by: Rauf Alizada`, `last_ratified_at: 2026-06-20`, `source_task: CONT-P01-BUNDLE-002`) and a corresponding entry `DEC-P01-B2-001` in `governance/DECISION_LOG.md`.

This ratification applies to the Glossary terminology and knowledge-model vocabulary only. It does not authorize Bundle 3, Bundle 4, or Bundle 5 work. It does not authorize architecture evaluation or selection, implementation, implementation-stack selection, license selection or creation, dependency installation, hook registration or activation, ADR creation, or modification of adapter rules (`CLAUDE.md`, `AGENTS.md`, `.claude/rules/`).

Future changes to this Glossary require a separately approved Product Owner-ratified governance change.

Canonical Product Owner / sole ratification authority for v1: `Rauf Alizada`.
