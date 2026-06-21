---
document_id: CONTEXT_BUDGET
title: Context Budget
document_type: Governance
lifecycle_status: RATIFIED
ratification_status: RATIFIED
ratified_by: Rauf Alizada
ratified_at: 2026-06-21
ratification_decision: DEC-P02-CONTEXT-BUDGET-001
source_task: CONT-P02-ONB-001
source_policy: DEC-P02-CONTEXT-POLICY-001
product_owner: Rauf Alizada
created_at: 2026-06-21
---

# Context Budget

## Ratification Status

This document is **ratified** under `DEC-P02-CONTEXT-BUDGET-001` and is **canonical governance authority** for context-budget rules in Continuum OS. The Product Owner (`Rauf Alizada`) is the sole ratification authority. This document remains **subordinate** to ratified `governance/CONTEXT_POLICY.md` (`DEC-P02-CONTEXT-POLICY-001`): on any conflict, the Context Policy wins.

Generated summaries, runtime context packs, indexes, and token-audit artifacts remain **derived evidence only** and are never governance authority unless separately and explicitly ratified as governance documents by the Product Owner.

Ratification of this document does **not**:

- create or generate any runtime context pack;
- implement token-measurement tooling, indexers, or generators;
- modify the Claude cold-start reading order;
- modify hooks, `.claude/hooks/**`, `.claude/settings.json`, `.claude/settings.local.example.json`, or adapter rules (`CLAUDE.md`, `AGENTS.md`, `.claude/rules/`);
- authorize architecture evaluation, implementation, dependency installation, license selection, settings changes, or project-code changes;
- activate P03, P04, or P05.

## Purpose

Define token-budget rules for Continuum OS context loading so agents avoid token waste while preserving canonical authority, the active-task invariant, Product Owner authority, local-first Git-native operation, and auditability.

The Context Budget complements the ratified Context Policy by quantifying per-mode and per-file budget targets, warning thresholds, audit-mode triggers, and waste-warning conditions.

## Relationship to Context Policy

- `governance/CONTEXT_POLICY.md` is **ratified** under `DEC-P02-CONTEXT-POLICY-001` and is canonical governance authority for context policy.
- This document is **subordinate** to the ratified Context Policy.
- If this draft conflicts with the ratified Context Policy in any way, the **Context Policy wins** and execution must stop and escalate.
- Generated summaries, runtime context packs, indexes, and token-audit artifacts remain **derived evidence only**; budget targets in this document do not elevate any derived artifact to governance authority.

## Budget Principles

- Load the **smallest sufficient context layer** for the current operation.
- Do **not** auto-read full canonical files by default.
- Use **Runtime Context** for normal warm starts.
- Use **Task Context** for active-task work.
- Use **Audit Context** only with recorded justification.
- Use **Emergency Context** when canonical state is stale, missing, conflicting, or unsafe.
- Token savings are **never** permission to bypass Product Owner approval or canonical governance. Convenience must never override authority.

## Context Mode Budgets

Budget targets (preliminary; ratification required before any enforcement):

- Runtime Context target: **1k–2k tokens**.
- Runtime Context hard cap: **2.5k tokens**.
- Task Context target: **3k–6k tokens**.
- Task Context soft cap: **8k tokens**.
- Audit Context: **no fixed cap**, but the agent must justify each full canonical read in session evidence.
- Emergency Context: **no fixed cap**; execution must stop and the agent must resolve the safety trigger before continuing.

## Runtime Context Budget

Runtime Context should include **only**:

- Product Owner identity (`Rauf Alizada`);
- current phase;
- active task id;
- active gate;
- latest handoff state;
- latest ratified decisions needed for safe continuation;
- explicit prohibited actions;
- next action.

Runtime Context **must not** include full historical logs, full closed task bodies, the full decision log, or the full document registry unless Audit Context Mode is required.

## Task Context Budget

Task Context may include:

- the current active task file;
- directly relevant ratified decisions;
- directly relevant risks;
- directly relevant open questions;
- directly relevant handoff excerpts.

Task Context **must not** automatically load all previous task files. Closed task bodies are read only with audit justification.

## Audit Context Budget

Audit Context Mode may read full canonical governance when needed for:

- phase closeout;
- ratification review;
- conflicting state resolution;
- registry/decision mismatch investigation;
- active-task invariant verification;
- Product Owner identity conflict;
- stale generated context resolution.

Audit Context Mode **must record** in session evidence (`governance/SESSION_LOG.md` or task evidence) why the broader read was necessary.

## Emergency Context Budget

Emergency Context Mode is triggered by, at minimum:

- multiple active tasks;
- a missing active task during execution work;
- a stale runtime pack (source references that no longer match canonical state);
- generated context conflicting with canonical governance;
- Product Owner identity ambiguity (only `Rauf Alizada` is valid);
- unauthorized file changes outside an approved task scope.

Emergency Context Mode **stops execution** until canonical state is reviewed and the trigger is resolved by the Product Owner.

## File Reading Budget Rules

Preliminary file categories:

- **Always-read minimum**: Product Owner identity, active task id, handoff state.
- **Runtime-read**: compact current-state snapshot only.
- **Task-only**: current task file and directly linked references.
- **Audit-only**: full `governance/DECISION_LOG.md`, full `governance/DOCUMENT_REGISTRY.md`, full `governance/ROADMAP.md`, full `governance/SESSION_LOG.md`.
- **Never-auto-read**: generated packs, old logs, closed task bodies unless audit-justified.

## High-Traffic File Size Thresholds

Preliminary warning thresholds:

- `governance/HANDOFF.md`: warn above **2k tokens**.
- `governance/PROJECT_STATE.md`: warn above **3k tokens**.
- `governance/SESSION_LOG.md`: **audit-only** once it grows large.
- `governance/DECISION_LOG.md`: **filtered read preferred** after growth.
- `governance/DOCUMENT_REGISTRY.md`: **filtered read preferred** after growth.

## Token-Waste Warning Thresholds

Warn when:

- an agent reads full canonical history for a simple next-action task;
- closed task bodies are read without justification;
- generated context is used without a freshness check;
- the same large file is repeatedly read without need;
- context exceeds the current mode budget without audit justification.

## Audit Mode Trigger Conditions

Audit Context Mode is triggered by:

- ratification work;
- phase closeout;
- conflict between canonical files;
- active-task invariant uncertainty;
- stale generated context;
- Product Owner identity uncertainty;
- a requested operation that touches hooks, adapter rules, architecture, implementation, settings, dependencies, or project code.

## Non-Scope

This draft explicitly does **not**:

- generate any runtime context pack now;
- create `.continuum/RUNTIME_CONTEXT.md`;
- create `.continuum/context-index.yaml`;
- create `.continuum/context-budget.yaml`;
- create `.continuum/context-freshness.yaml`;
- create `.continuum/token-audit.md`;
- implement token-measurement tooling;
- modify the Claude cold-start reading order;
- modify `CLAUDE.md`, `AGENTS.md`, or `.claude/rules/`;
- create or activate hooks;
- modify `.claude/hooks/**`;
- modify `.claude/settings.json` or `.claude/settings.local.example.json`;
- select architecture;
- install dependencies;
- modify project code;
- ratify this document.

## Future Work

Separate future proposed drafts, each requiring its own Product Owner approval, may include:

- `governance/CONTEXT_RETRIEVAL_PROTOCOL.md` — when agents may read full canonical files, filtered-read rules, audit-mode justification requirements, emergency-mode triggers, and source-hash/freshness expectations for derived packs.
- Reading Policy Table — per-file classification (always-read / runtime-read / task-only / conflict-only / audit-only / never-auto-read) with escalation conditions and stale-risk levels.
- Tag vocabulary proposal — tags for `DECISION_LOG.md`, `RISK_REGISTER.md`, and `OPEN_QUESTIONS.md` enabling filtered retrieval.
- Baseline token-cost measurement method — how to measure current cold-start cost and what counts toward each layer.
- Future generated runtime context pack — only after a separately ratified policy and a separately approved generator plan.

## Acceptance Criteria for Ratification

Before this document may be ratified by the Product Owner, the following must hold:

- Product Owner review of the proposed draft;
- no contradiction with ratified `governance/CONTEXT_POLICY.md`;
- no weakening of the active-task invariant (exactly zero or one active task);
- no generated context, summary, index, or runtime pack is treated as governance authority;
- clear budget targets defined per context mode (Runtime / Task / Audit / Emergency);
- a clear audit-mode justification rule is preserved;
- a clear emergency-stop rule is preserved;
- ratification recorded as a separate decision in `governance/DECISION_LOG.md` with full provenance fields;
- registry entry in `governance/DOCUMENT_REGISTRY.md` updated from `Proposed Draft / Not Ratified` to `Ratified` under the same separately approved governance change.

## Ratification Evidence

- proposed draft commit: `520775728d1fa8521fb4f7badc68f8ac5855b9af`.
- ratification decision: `DEC-P02-CONTEXT-BUDGET-001`.
- ratified by: `Rauf Alizada`.
- source task: `CONT-P02-ONB-001`.
- parent policy: `governance/CONTEXT_POLICY.md` / `DEC-P02-CONTEXT-POLICY-001`.
- P02 remains active under `DEC-P02-ACTIVATION-001`.
- `CONT-P02-ONB-001` remains the single active task.
- No `governance/CONTEXT_RETRIEVAL_PROTOCOL.md` created.
- No runtime context pack generated (`.continuum/RUNTIME_CONTEXT.md`, `.continuum/context-index.yaml`, `.continuum/context-budget.yaml`, `.continuum/context-freshness.yaml`, `.continuum/token-audit.md` absent).
- No hooks, adapter-rule, architecture, implementation, dependency, settings, or project-code changes.
