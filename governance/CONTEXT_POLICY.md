---
document_id: CONTEXT_POLICY
title: Context Policy
document_type: Governance
lifecycle_status: RATIFIED
ratification_status: RATIFIED
ratified_by: Rauf Alizada
ratified_at: 2026-06-21
ratification_decision: DEC-P02-CONTEXT-POLICY-001
source_task: CONT-P02-ONB-001
source_plan: P02 Context-Policy Deliverable Draft Plan 001
product_owner: Rauf Alizada
created_at: 2026-06-21
---

# Context Policy

## Ratification Status

This document is **ratified** under `DEC-P02-CONTEXT-POLICY-001` and is **canonical governance authority** for context policy in Continuum OS. The Product Owner (`Rauf Alizada`) is the sole ratification authority.

Generated summaries, runtime context packs, indexes, and token-audit artifacts remain **derived evidence only** and are never governance authority unless separately and explicitly ratified as governance documents by the Product Owner.

Ratification of this document does **not**:

- create or generate any runtime context pack;
- modify the Claude cold-start reading order;
- implement any generator, indexer, or token-audit tool;
- modify hooks, `.claude/hooks/**`, `.claude/settings.json`, `.claude/settings.local.example.json`, or adapter rules (`CLAUDE.md`, `AGENTS.md`, `.claude/rules/`);
- authorize architecture evaluation, implementation, dependency installation, license selection, settings changes, or project-code changes;
- activate P03, P04, or P05.

This document was prepared and ratified under approved plan chain `DEC-P02-DISCOVERY-PLAN-001` → `DEC-P02-CONTEXT-DRAFT-PLAN-001` → `DEC-P02-CONTEXT-POLICY-001` within active task `CONT-P02-ONB-001`. Each subsequent revision, sibling deliverable (e.g. `governance/CONTEXT_BUDGET.md`, `governance/CONTEXT_RETRIEVAL_PROTOCOL.md`), or runtime pack generation requires a separate Product Owner approval verb (`prepare diff` / `commit only` / `commit and push`).

## Purpose

Define how Continuum OS prevents token waste while preserving governance safety, Product Owner authority, local-first Git-native operation, and the invariant that generated summaries are never canonical authority.

The Context Policy describes how agents (Claude Code and any future adapter) should load context across session modes, how derived/generated context relates to canonical governance, how staleness halts execution, and when to escalate to the Product Owner.

## Core Principle

Continuum OS must separate canonical authority from auto-loaded runtime context.

The system does not have a token problem because governance exists. It has a token problem if agents treat every canonical file as mandatory runtime context for every session.

Canonical governance is the source of authority; runtime context is a convenience layer that helps agents act quickly without re-reading every canonical file. Convenience must never override authority.

## Authority Model

- Canonical governance files (the documents registered under `governance/DOCUMENT_REGISTRY.md` with category `Governance` or `Reference` and status `Ratified`, `RATIFIED`, or `Active-state`) remain the sole authority for project rules, decisions, and state.
- Generated summaries, runtime context packs, indexes, and token-audit artifacts are **never** authority. They are derived evidence only.
- A runtime context layer is a convenience cache; it must reference canonical sources and must yield to them on any conflict.
- Any conflict between generated context and canonical governance **must stop execution and escalate** to the Product Owner.
- The Product Owner (`Rauf Alizada`) remains the **only** ratification authority. No agent, derived document, or generated pack may ratify governance content.

## Context Layers

Continuum OS context is organized into four explicit layers:

1. **Runtime Context** — minimal information needed to operate a normal warm-start session.
2. **Task Context** — information needed to make progress on the current active task.
3. **Audit Context** — full canonical reading required for verification, conflict resolution, ratification review, phase closeout, or governance migration.
4. **Emergency Context** — fallback when context state is stale, missing, conflicting, or corrupted.

Agents select the lowest-cost layer sufficient for the current operation and escalate explicitly when more context is required.

## Runtime Context Mode

- Intended target size for a future Runtime Context Pack: **1k–2k tokens**.
- Hard cap recommendation: **2.5k tokens**.
- The Runtime Context Pack may summarize current project state (phase, active task, latest handoff status, key open questions) but **cannot override** any canonical governance file.
- Runtime Context Pack must record source references so freshness can be verified against canonical files.
- **Stale runtime context must halt execution**: if pack references do not match current canonical state, the agent stops and escalates rather than acting on stale context.
- This document does not create the runtime pack. Pack generation requires a separately approved future plan and a separately ratified policy.

## Task Context Mode

- Reads only the current active task file (under `governance/tasks/`) and directly relevant decisions, risks, and open questions referenced by that task.
- Does not auto-read closed task bodies unless an explicit conflict or audit need is recorded.
- Mutating work still requires the active-task invariant (exactly one active task) and an approval verb from the Product Owner. Task Context Mode is not a license to bypass approval discipline.
- Task Context Mode may include a short reference to the Runtime Context Pack but must rely on canonical files for any rule the agent enforces.

## Audit Context Mode

- Used for phase closeout, ratification review, conflicting state resolution, registry/decision inconsistency investigation, or safety verification.
- May read full canonical files in any order required to verify correctness.
- Must record justification in session evidence (`governance/SESSION_LOG.md` entry or task evidence subsection) explaining why the broader read was needed.
- Audit Context Mode does not relax approval discipline; ratification still requires the Product Owner.

## Emergency Context Mode

Triggered by, at minimum:

- stale source-reference hashes between a derived pack and canonical files;
- missing or unreadable active-task data;
- contradictory phase state across canonical files;
- the appearance of more than one active task;
- Product Owner identity ambiguity (only `Rauf Alizada` is valid for v1; `Raauf Alizada` and `Tural Rahmanli` are invalid);
- a generated-context vs. canonical-governance conflict.

When triggered:

- execution must **stop**;
- the agent must read canonical files (cold-start reading order) and surface the conflict;
- the agent must not act on derived context until the Product Owner resolves the trigger.

## Summary and Generated-Pack Rule

Generated context packs, summaries, indexes, and token-audit artifacts are derived evidence only. They are never ratified governance authority unless separately and explicitly ratified by the Product Owner as governance documents.

Agents must not quote a generated summary as the basis for any rule, decision, or refusal that contradicts a canonical governance file.

## Freshness and Staleness Rule

Future derived packs and indexes must obey the following expectations:

- each derived pack carries source references to the canonical files it summarizes (path plus content hash or commit reference);
- if a source reference does not match current governance state, the pack is **stale**;
- a stale pack must not be used to authorize execution;
- a stale pack must either be regenerated under an approved plan or the agent must fall back to canonical files and escalate;
- no automatic regeneration is authorized by this draft. Regeneration tooling requires a separately approved plan.

## Escalation Rules

Agents must escalate to the Product Owner (`Rauf Alizada`) when:

- the active-task state is unclear or appears empty during execution work;
- more than one active task appears in the repository;
- Product Owner identity is ambiguous or appears in an invalid form;
- generated context conflicts with canonical files;
- the agent needs to read beyond its currently approved context mode;
- the requested work would cross into architecture evaluation, implementation, hook activation, adapter-rule changes, dependency installation, settings changes, or project-code changes;
- a derived pack appears stale and no separately approved regeneration plan exists.

Escalation is not optional; it is the normal mechanism for preserving Product Owner authority.

## Non-Scope

This draft explicitly does **not**:

- generate any runtime context pack now;
- create `.continuum/RUNTIME_CONTEXT.md`;
- create `.continuum/context-index.yaml`;
- create `.continuum/context-budget.yaml`;
- create `.continuum/context-freshness.yaml`;
- create `.continuum/token-audit.md`;
- modify the Claude cold-start reading order;
- modify `CLAUDE.md`, `AGENTS.md`, or `.claude/rules/`;
- create or activate hooks;
- modify `.claude/hooks/**`;
- modify `.claude/settings.json` or `.claude/settings.local.example.json`;
- select architecture;
- implement generators;
- install dependencies;
- modify project code;
- ratify this document.

## Future Work

Separate future proposed drafts, each requiring its own Product Owner approval, may include:

- `governance/CONTEXT_BUDGET.md` — token budgets per context layer, per-file budgets, size thresholds for high-traffic files, audit-mode triggers, token-waste warning thresholds.
- `governance/CONTEXT_RETRIEVAL_PROTOCOL.md` — when agents may read full canonical files, when filtered task context is sufficient, audit-mode justification requirements, emergency-mode triggers, source-hash and freshness expectations for future derived packs.
- Reading Policy Table — per-file classification (always-read, runtime-read, task-only, conflict-only, audit-only, never-auto-read) with escalation conditions and stale-risk levels.
- Tag vocabulary proposal — tags for `DECISION_LOG.md`, `RISK_REGISTER.md`, and `OPEN_QUESTIONS.md` enabling filtered retrieval.
- Baseline token-cost measurement method — how to measure current cold-start context cost and what counts toward each layer.

## Acceptance Criteria for Ratification

Before this document may be ratified by the Product Owner, the following must hold:

- Product Owner review of the proposed draft;
- no contradiction with `governance/CHANGE_PROTOCOL.md`, `governance/NEVER_AUTOMATIC.md`, `governance/TRUST_BOUNDARIES.md`, `governance/RISK_REGISTER.md`, `governance/ROADMAP.md`, or `governance/DOCUMENT_REGISTRY.md`;
- no weakening of the active-task invariant (exactly zero or one active task);
- no generated context, summary, index, or runtime pack is treated as governance authority;
- a clear stale-context halt rule is preserved;
- clear mode escalation rules are preserved (Runtime / Task / Audit / Emergency);
- ratification recorded as a separate decision in `governance/DECISION_LOG.md` with full provenance fields;
- registry entry in `governance/DOCUMENT_REGISTRY.md` updated from `Proposed Draft / Not Ratified` to `Ratified` under the same separately approved governance change.

## Ratification Evidence

- proposed draft commit: `7176ddf6d7b94ad8cfb2f46377fb2d649a01eadd`.
- ratification decision: `DEC-P02-CONTEXT-POLICY-001`.
- ratified by: `Rauf Alizada`.
- source task: `CONT-P02-ONB-001`.
- P02 remains active under `DEC-P02-ACTIVATION-001`.
- `CONT-P02-ONB-001` remains the single active task.
- No `governance/CONTEXT_BUDGET.md` created.
- No `governance/CONTEXT_RETRIEVAL_PROTOCOL.md` created.
- No runtime context pack generated (`.continuum/RUNTIME_CONTEXT.md`, `.continuum/context-index.yaml`, `.continuum/context-budget.yaml`, `.continuum/context-freshness.yaml`, `.continuum/token-audit.md` absent).
- No hooks, adapter-rule, architecture, implementation, dependency, settings, or project-code changes.
