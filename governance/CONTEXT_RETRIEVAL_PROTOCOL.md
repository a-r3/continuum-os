---
document_id: CONTEXT_RETRIEVAL_PROTOCOL
title: Context Retrieval Protocol
document_type: Governance
lifecycle_status: PROPOSED_DRAFT
ratification_status: NOT_RATIFIED
source_task: CONT-P02-ONB-001
source_policy: DEC-P02-CONTEXT-POLICY-001
source_budget: DEC-P02-CONTEXT-BUDGET-001
product_owner: Rauf Alizada
created_at: 2026-06-21
---

# Context Retrieval Protocol

## Draft Status

This document is a **proposed draft only**. It is **not ratified**. It is **not canonical authority** until the Product Owner (`Rauf Alizada`) ratifies it under a separately recorded decision in `governance/DECISION_LOG.md` with a registry update in `governance/DOCUMENT_REGISTRY.md` from `Proposed Draft / Not Ratified` to `Ratified`.

This draft follows ratified `governance/CONTEXT_POLICY.md` (`DEC-P02-CONTEXT-POLICY-001`) and ratified `governance/CONTEXT_BUDGET.md` (`DEC-P02-CONTEXT-BUDGET-001`). It does **not**:

- create any runtime context pack;
- create `.continuum/RUNTIME_CONTEXT.md`, `.continuum/context-index.yaml`, `.continuum/context-budget.yaml`, `.continuum/context-freshness.yaml`, or `.continuum/token-audit.md`;
- implement any retrieval, indexing, freshness, or token-audit tooling;
- modify the Claude cold-start reading order;
- modify hooks, `.claude/hooks/**`, `.claude/settings.json`, `.claude/settings.local.example.json`, or adapter rules (`CLAUDE.md`, `AGENTS.md`, `.claude/rules/`);
- authorize architecture evaluation, implementation, dependency installation, license selection, settings changes, or project-code changes;
- activate P03, P04, or P05.

## Purpose

Define when agents may read full canonical files, when filtered reads are sufficient, when audit-mode reads are required, and when execution must stop because retrieval state is unsafe.

The Context Retrieval Protocol operationalizes the ratified Context Policy and Context Budget by specifying retrieval-mode selection, source authority order, file-category rules, freshness checks, generated-context handling, and escalation rules.

## Relationship to Context Policy and Context Budget

- `governance/CONTEXT_POLICY.md` is **ratified** under `DEC-P02-CONTEXT-POLICY-001` and is canonical governance authority for context policy.
- `governance/CONTEXT_BUDGET.md` is **ratified** under `DEC-P02-CONTEXT-BUDGET-001` and is canonical governance authority for context-budget rules, subordinate to the Context Policy.
- This draft is **subordinate to both**.
- On any conflict, **`CONTEXT_POLICY.md` wins first**, then **`CONTEXT_BUDGET.md`**, then this Context Retrieval Protocol; execution must stop and escalate if a conflict is detected.
- Generated summaries, runtime context packs, indexes, and token-audit artifacts remain **derived evidence only**; retrieval rules in this document do not elevate any derived artifact to governance authority.

## Retrieval Principles

- Read the **smallest sufficient source set** for the current operation.
- Prefer **current-state files** (active task, handoff, current phase, project state) over historical logs for normal continuation.
- **Never** use generated context as authority.
- **Never** bypass Product Owner approval because retrieval is cheaper.
- Use **Audit Retrieval** only with recorded justification.
- Use **Emergency Retrieval** when state is stale, contradictory, missing, or unsafe.

## Source Authority Order

In order of decreasing authority:

1. Product Owner explicit instruction in the current session (highest);
2. ratified decisions in `governance/DECISION_LOG.md`;
3. ratified governance documents registered in `governance/DOCUMENT_REGISTRY.md`;
4. current active task file under `governance/tasks/`;
5. current `governance/HANDOFF.md`;
6. `governance/SESSION_LOG.md` as **evidence**, not authority;
7. generated summaries and runtime context packs as **derived evidence only**, never authority.

A lower-authority source may not override a higher-authority source. On conflict the agent must stop and escalate to the Product Owner.

## Context Mode Selection

- **Runtime Retrieval** — normal warm-start sessions: compact current state only.
- **Task Retrieval** — active-task work: the current active task file and its directly referenced governance.
- **Audit Retrieval** — ratification review, phase closeout, conflict, registry/decision mismatch, active-task invariant verification, Product Owner identity conflict, stale generated context, suspected unauthorized file changes, or safety verification.
- **Emergency Retrieval** — unsafe, missing, or contradictory canonical state; execution stops until resolved.

The agent must select the lowest-cost mode sufficient for the operation and escalate explicitly when a broader mode is required.

## Always-Read Minimum

For ordinary continuation, the agent must establish:

- Product Owner identity (`Rauf Alizada`);
- current active task id;
- current handoff status;
- current gate;
- next action;
- prohibited actions;
- latest relevant ratified decision ids.

The Always-Read Minimum is the floor for any session that intends to take action; it is not authority by itself.

## Runtime Retrieval

Runtime Retrieval **must not** automatically load full historical logs or full closed task bodies. It may use a compact handoff summary and the current active task summary, but it **cannot override** canonical governance. Any rule the agent enforces must trace back to a ratified canonical source.

## Task Retrieval

Task Retrieval may read:

- the current active task file under `governance/tasks/`;
- directly referenced decision entries in `governance/DECISION_LOG.md`;
- directly relevant rows in `governance/DOCUMENT_REGISTRY.md`;
- directly relevant entries in `governance/RISK_REGISTER.md` and `governance/OPEN_QUESTIONS.md`;
- current `governance/HANDOFF.md`.

Task Retrieval **must not** automatically read all old task files. Closed task bodies are read only with audit justification.

## Audit Retrieval

Audit Retrieval may read full canonical files when justified for:

- ratification review;
- phase closeout;
- active-task invariant verification;
- Product Owner identity conflict;
- registry/decision mismatch investigation;
- stale generated context resolution;
- suspected unauthorized file changes.

Audit Retrieval **must record** the reason in session evidence (`governance/SESSION_LOG.md` or task evidence). Audit Retrieval does not relax approval discipline; ratification still requires the Product Owner.

## Emergency Retrieval

Emergency Retrieval triggers an **execution stop** until canonical state is reviewed and the trigger is resolved by the Product Owner. Triggers include, at minimum:

- more than one active task;
- a missing active task during execution work;
- Product Owner identity ambiguity (only `Rauf Alizada` is valid; `Raauf Alizada` and `Tural Rahmanli` are invalid);
- generated context conflicts with canonical governance;
- stale source references between a derived pack and canonical files;
- unapproved file modifications outside the active-task scope;
- a requested operation that crosses into hooks, adapter rules, architecture, implementation, dependencies, settings, license, or project code.

## File Category Rules

Preliminary categories:

- **Always-read minimum** — current Product Owner identity, active task id, handoff status.
- **Runtime-read** — compact current-state snapshot only.
- **Task-only** — current task file and directly linked references.
- **Audit-only** — full `governance/DECISION_LOG.md`, full `governance/DOCUMENT_REGISTRY.md`, full `governance/ROADMAP.md`, full `governance/SESSION_LOG.md`, closed task bodies.
- **Never-authority** — generated context packs, summaries, indexes, token-audit artifacts; these are derived evidence only and never authority.

## Freshness and Source-Reference Checks

Future generated packs and indexes must carry source references (path plus content hash or commit reference) to the canonical files they summarize. If any source reference does not match current governance state, the pack is **stale** and **cannot authorize execution**.

A stale pack must either be regenerated under a separately approved plan or the agent must fall back to canonical files and escalate. No automatic regeneration is authorized by this draft.

## Generated Context Handling

Generated context may help an agent **locate** canonical sources but **cannot replace** canonical review where authority, ratification, conflict resolution, or safety is involved.

Agents must not quote a generated summary as the basis for any rule, decision, refusal, or approval that contradicts or substitutes for a canonical governance file.

## Escalation and Stop Conditions

Agents must escalate to the Product Owner (`Rauf Alizada`) when:

- retrieval mode is unclear;
- canonical state conflicts;
- the active-task invariant fails (zero active tasks during execution work, or more than one active task);
- generated context is stale or conflicts with canonical files;
- the requested work needs a broader context mode than currently authorized;
- any governance authority ambiguity appears;
- requested work would cross into architecture evaluation, implementation, hook activation, adapter-rule changes, dependency installation, settings changes, license selection, or project-code changes.

Escalation is not optional; it is the normal mechanism for preserving Product Owner authority.

## Non-Scope

This draft explicitly does **not**:

- generate any runtime context pack now;
- create `.continuum/RUNTIME_CONTEXT.md`;
- create `.continuum/context-index.yaml`;
- create `.continuum/context-budget.yaml`;
- create `.continuum/context-freshness.yaml`;
- create `.continuum/token-audit.md`;
- implement any retrieval, indexing, freshness, or token-audit tooling;
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

- Reading Policy Table — per-file classification (always-read / runtime-read / task-only / conflict-only / audit-only / never-auto-read) with escalation conditions and stale-risk levels.
- Tag vocabulary proposal — tags for `governance/DECISION_LOG.md`, `governance/RISK_REGISTER.md`, and `governance/OPEN_QUESTIONS.md` enabling filtered retrieval.
- Baseline token-cost measurement method — how to measure current cold-start retrieval cost and what counts toward each context mode.
- Future runtime context pack — **only after** a separately ratified policy and a separately approved generator plan.

## Acceptance Criteria for Ratification

Before this document may be ratified by the Product Owner, the following must hold:

- Product Owner review of the proposed draft;
- no contradiction with ratified `governance/CONTEXT_POLICY.md` (`DEC-P02-CONTEXT-POLICY-001`);
- no contradiction with ratified `governance/CONTEXT_BUDGET.md` (`DEC-P02-CONTEXT-BUDGET-001`);
- no weakening of the active-task invariant (exactly zero or one active task);
- no generated context, summary, index, or runtime pack treated as governance authority;
- clear source authority order;
- clear retrieval-mode selection rules (Runtime / Task / Audit / Emergency);
- clear audit-mode justification rule;
- clear emergency-stop rule;
- ratification recorded as a separate decision in `governance/DECISION_LOG.md` with full provenance fields;
- registry entry in `governance/DOCUMENT_REGISTRY.md` updated from `Proposed Draft / Not Ratified` to `Ratified` under the same separately approved governance change.
