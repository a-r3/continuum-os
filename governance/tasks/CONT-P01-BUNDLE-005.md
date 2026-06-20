---
task_id: CONT-P01-BUNDLE-005
title: P01 Bundle 5 - Reference Structure, Roadmap, Adapter Alignment, and P01 Closeout
lane: Strict
lifecycle_status: PROPOSED
current_gate: NONE
gate_status: NOT_REQUESTED
ratification_status: NOT_RATIFIED
active: false
execution_authorized: false
predecessor_task: CONT-P01-BUNDLE-004
product_owner: Rauf Alizada
---

# CONT-P01-BUNDLE-005 - P01 Bundle 5 - Reference Structure, Roadmap, Adapter Alignment, and P01 Closeout

## Authority Notice

The only valid Product Owner / project authority / ratification authority for v1 is `Rauf Alizada`. No other identity is valid for project governance, participation, approval, ratification, or authority. The spelling `Raauf Alizada` is invalid. The identity `Tural Rahmanli` does not participate in this project in any form and must not be encoded as a project identity; any incidental appearance of that name in Git committer metadata or environment metadata is not project authority.

This task does not delegate ratification authority. Only the Product Owner ratifies any decision or deliverable. Hooks, adapter rules, skills, subagents, agents, tools, and chat memory are not authority and cannot ratify.

## Proposal Notice

This task is **proposed only** and **inactive**. It has no execution authority. It does not authorize any file creation, file modification, staging, commit, push, hook activation, adapter-rule modification, architecture work, implementation work, license selection, dependency installation, settings change, or project-code change.

This task does not modify `governance/ACTIVE_TASK.md`, `governance/CURRENT_PHASE.md`, or `governance/PROJECT_STATE.md`. It does not close the currently active task `CONT-P01-BUNDLE-004`.

Activation of this task requires a separate explicit Product Owner approval that simultaneously closes `CONT-P01-BUNDLE-004` and activates `CONT-P01-BUNDLE-005` in a single diff preserving the active-task invariant.

## Status

- `lifecycle_status`: `PROPOSED`
- `current_gate`: `NONE`
- `gate_status`: `NOT_REQUESTED`
- `ratification_status`: `NOT_RATIFIED`
- `active`: `false`
- `execution_authorized`: `false`
- `predecessor_task`: `CONT-P01-BUNDLE-004`
- The currently active task remains `CONT-P01-BUNDLE-004`. The active-task invariant holds: exactly one active task.

## Objective

Prepare the final P01 deliverables for Product Owner review under an activated Bundle 5 task. Upon activation (separate approval), this task will produce reviewable diffs for:

- `docs/REFERENCE_STRUCTURE.md` (new canonical reference-structure document for cold-start orientation);
- a cold-start acceptance / reference checklist;
- a `governance/ROADMAP.md` update reflecting completed P01 bundles and next-phase readiness;
- a `governance/DOCUMENT_REGISTRY.md` update including ratified P01 documents and their statuses;
- an adapter-rule alignment review of `CLAUDE.md`, `AGENTS.md`, and `.claude/rules/` against ratified P01 governance, and — only if separately approved after activation — adapter-rule alignment diffs;
- P01 closeout readiness evidence.

All deliverables remain `proposed` until explicit Product Owner ratification.

## Scope

When this task is later activated, the in-scope work is:

- defining the canonical reading/reference structure for future sessions and agents;
- documenting how a cold-start agent should locate canonical state, active task, decisions, risks, handoff, and reference material;
- updating the roadmap to reflect completed P01 bundles and next-phase readiness;
- updating the document registry to include ratified P01 documents and their statuses;
- reviewing adapter rules (`CLAUDE.md`, `AGENTS.md`, `.claude/rules/`) for alignment with ratified P01 governance, without changing them unless separately approved after activation;
- preparing P01 closeout readiness evidence;
- preparing reviewable diffs under approval-verb discipline (`prepare diff` / `commit only` / `commit and push`);
- recording validation outcomes and evidence in the task record, `governance/HANDOFF.md`, and `governance/SESSION_LOG.md`.

## Non-Scope

This task explicitly does not cover:

- activating this task now;
- closing `CONT-P01-BUNDLE-004`;
- modifying `governance/ACTIVE_TASK.md`;
- modifying `governance/CURRENT_PHASE.md`;
- modifying `governance/PROJECT_STATE.md`;
- creating or modifying `docs/REFERENCE_STRUCTURE.md` before activation;
- modifying `governance/ROADMAP.md` before activation;
- modifying `governance/DOCUMENT_REGISTRY.md` before activation;
- modifying `CLAUDE.md`, `AGENTS.md`, or `.claude/rules/` before activation and separate Product Owner approval;
- ratifying Bundle 5 deliverables without Product Owner approval;
- P01 closeout without Product Owner approval;
- P02 activation;
- architecture selection;
- implementation or implementation-stack selection;
- license selection or creation;
- dependency installation;
- hook registration, modification, or activation;
- settings changes;
- project-code changes;
- ADR creation;
- changing Product Owner identity;
- creating `governance/PRODUCT_OWNER.md`;
- encoding any identity other than `Rauf Alizada` as valid project identity.

## Target Outputs

Upon activation and under separate Product Owner approvals per gate, the prospective target outputs are:

- `docs/REFERENCE_STRUCTURE.md` — new canonical reference-structure document covering cold-start reading order, location of canonical state, active-task discovery, decisions/risks/handoff lookup, and reference material; ratified status established only by Product Owner approval.
- Cold-start acceptance / reference checklist — embedded in `docs/REFERENCE_STRUCTURE.md` or a sibling section, validating that an agent or session can locate canonical sources without relying on chat memory.
- `governance/ROADMAP.md` update — reflects completed P01 bundles (1–4) and P01 closeout readiness; identifies P02 as the next gated phase.
- `governance/DOCUMENT_REGISTRY.md` update — lists ratified P01 documents (`PRODUCT_CHARTER.md`, `GLOSSARY.md`, `CHANGE_PROTOCOL.md`, `NEVER_AUTOMATIC.md`, `TRUST_BOUNDARIES.md`, `RISK_REGISTER.md`) with current statuses and source tasks.
- Adapter-rule alignment review — read-only assessment recorded in this task file; any adapter-rule diff requires a separate Product Owner approval after activation.
- P01 closeout readiness evidence — recorded in this task file and `governance/HANDOFF.md`; closeout itself requires a separate Product Owner approval.

## Acceptance Criteria

When this task is later activated and executed, acceptance requires:

- all in-scope deliverables proposed as reviewable diffs under approval-verb discipline;
- ratified Product Owner identity `Rauf Alizada` cited consistently; no invalid identity introduced;
- active-task invariant preserved throughout (exactly one active task during execution);
- no Bundle 5 deliverable ratified without explicit Product Owner approval;
- no P01 closeout without explicit Product Owner approval;
- no architecture, implementation, license, dependency, hook, settings, or project-code change;
- validation outcomes recorded (path-leak scan, pycache scan, JSON validation, `bash -n`, hook helper AST, hook fixture suite `54 pass / 0 fail`);
- evidence captured in this task file, `governance/HANDOFF.md`, and `governance/SESSION_LOG.md`.

## Stop Conditions

Stop and escalate to the Product Owner on any of:

- any attempt to treat the proposed Bundle 5 task as active before explicit Product Owner activation approval;
- any attempt to author Bundle 5 deliverables before activation;
- any attempt to close P01 or activate P02 before explicit Product Owner approval;
- any attempt to modify adapter rules (`CLAUDE.md`, `AGENTS.md`, `.claude/rules/`) before separately approved authorization;
- any authority contradiction (e.g., a hook, skill, subagent, agent, or chat-memory claim treated as ratification);
- any attempt to delegate ratification authority;
- any attempt to bypass approval-verb discipline (`prepare diff` / `commit only` / `commit and push`);
- any attempt to bypass the active-task invariant (zero or one active task);
- any scope expansion into architecture, implementation, license, dependencies, hooks, settings, or project code;
- any reintroduction of invalid identities (`Raauf Alizada`, `Tural Rahmanli`) as valid project identity, authority, approver, ratifier, owner, or participant, outside explicit invalidation, stop-condition, or historical-error reference context.

## Evidence Requirements

Upon activation, the task will require, per gate:

- pre-action `git status --short --branch`, `git diff --check`, and authorized-file allowlist verification (`git diff --cached --name-status`);
- path-leak scan over the working tree;
- pycache scan;
- JSON validation of `.claude/settings.json` and `.claude/settings.local.example.json`;
- `bash -n` over hook scripts and `run-fixtures.sh`;
- AST parse of `.claude/hooks/lib/hook_common.py`;
- hook fixture suite remaining `54 pass / 0 fail`;
- exported review diff under `/tmp/` for Product Owner inspection;
- commit SHA, post-push remote SHA equality, and final branch status when the Git approval verb authorizes commit/push;
- explicit Product Owner approval verb recorded in `governance/SESSION_LOG.md` for every Git mutation.

## Activation Requirement

This task is **not activated** by this proposal. Activation requires a separate explicit Product Owner approval that:

- closes `CONT-P01-BUNDLE-004` (`lifecycle_status: DONE`, `gate_status: COMPLETED`, `ratification_status: RATIFIED`, `active: false`, `execution_authorized: false`);
- activates `CONT-P01-BUNDLE-005` (`lifecycle_status: IN_PROGRESS`, sets `current_gate` and `gate_status: ACTIVATED`, `ratification_status: APPROVED_FOR_EXECUTION`, `active: true`, `execution_authorized: true`);
- performs both transitions in a single diff preserving the active-task invariant;
- records the activation in `governance/ACTIVE_TASK.md`, `governance/CURRENT_PHASE.md`, `governance/PROJECT_STATE.md`, `governance/HANDOFF.md`, and `governance/SESSION_LOG.md`.

Until that separate approval, this task remains proposed and inactive, and authorizes no work.
