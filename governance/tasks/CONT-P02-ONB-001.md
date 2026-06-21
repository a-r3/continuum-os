---
task_id: CONT-P02-ONB-001
title: P02 Domain, Governance, and Security Discovery
lane: Strict
lifecycle_status: IN_PROGRESS
current_gate: P02_DOMAIN_GOVERNANCE_SECURITY_DISCOVERY
gate_status: ACTIVATED
ratification_status: APPROVED_FOR_EXECUTION
active: true
execution_authorized: true
predecessor_task: CONT-P01-BUNDLE-005
source_decision: DEC-P01-CLOSEOUT-001
product_owner: Rauf Alizada
---

# CONT-P02-ONB-001 - P02 Domain, Governance, and Security Discovery

## Authority Notice

The sole Product Owner / sole project authority / sole ratification authority for v1 is `Rauf Alizada`. No other identity is valid for project governance, participation, approval, ratification, or authority. The spelling `Raauf Alizada` is invalid. The identity `Tural Rahmanli` does not participate in this project in any form and must not be encoded as a project identity; any incidental appearance of that name in Git committer metadata or environment metadata is not project authority. Only `Rauf Alizada` may activate, ratify, or close P02 work. This task does not change Product Owner identity and does not delegate ratification authority.

## Activation Notice

This task is **active**. It was proposed and inactive in commit `120a20d10387d83e0e0dc425903f97108c84c4ad` and is activated under `DEC-P02-ACTIVATION-001`. Frontmatter records `lifecycle_status: IN_PROGRESS`, `current_gate: P02_DOMAIN_GOVERNANCE_SECURITY_DISCOVERY`, `gate_status: ACTIVATED`, `ratification_status: APPROVED_FOR_EXECUTION`, `active: true`, `execution_authorized: true`. Execution is authorized **only within the scope boundaries defined below**. Drafting and ratifying any P02 deliverable still requires a separately approved Product Owner deliverable plan and approval-verb invocation.

## Status

- Repository state: P01 closed/completed under `DEC-P01-CLOSEOUT-001`; P02 active under `DEC-P02-ACTIVATION-001`.
- This task: active and authorized as the single active task under gate `P02_DOMAIN_GOVERNANCE_SECURITY_DISCOVERY`. No P02 deliverables are ratified yet. No deliverable drafts exist yet. No context-policy files exist. No runtime context pack exists.
- Predecessor `CONT-P01-BUNDLE-005` is closed/completed (`lifecycle_status: DONE`, `gate_status: COMPLETED`, `ratification_status: RATIFIED`, `active: false`, `execution_authorized: false`).
- Active-task invariant: preserved as exactly one active task (`CONT-P02-ONB-001`).

## Objective

Conduct P02 discovery work after P01 closeout, covering:

- domain model discovery;
- governance model refinement;
- security and trust requirements;
- data classification and sensitive-boundary analysis;
- open questions for Product Owner review;
- P02 evidence and validation expectations.

This task carries the P02 discovery surface under explicit Product Owner approval. Each individual deliverable still requires a separately approved Product Owner deliverable plan before drafting begins.

## Scope

P02 discovery work authorized under this task, executed only under separately approved Product Owner deliverable plans and approval verbs, includes:

- identifying core product/domain entities and their relationships;
- refining governance concepts that must remain enforceable across future phases;
- identifying security boundaries, sensitive data classes, and trust assumptions;
- defining open questions that must be resolved before architecture evaluation;
- preparing reviewable P02 deliverable drafts;
- updating handoff/session evidence under the active-task invariant;
- preserving the approval-verb discipline (`prepare diff` / `commit only` / `commit and push`).

Each scope item above requires a separately approved Product Owner deliverable plan before any drafting begins. Activation of this task does not by itself authorize any specific deliverable.

## Non-Scope

This active P02 discovery task explicitly does not authorize:

- drafting any P02 deliverable without a separately approved Product Owner deliverable plan;
- ratifying any P02 deliverable without explicit Product Owner ratification;
- creating context-policy files (`CONTEXT_POLICY.md`, `CONTEXT_BUDGET.md`, `CONTEXT_RETRIEVAL_PROTOCOL.md`, or equivalents) without a separately approved Product Owner deliverable plan;
- generating any runtime context pack;
- architecture evaluation or selection;
- implementation or implementation-stack selection;
- license selection or creation;
- ADR creation;
- dependency installation;
- hook registration, modification, or activation;
- settings changes;
- project-code changes;
- adapter-rule changes (`CLAUDE.md`, `AGENTS.md`, `.claude/rules/`);
- P03/P04/P05 activation;
- changing Product Owner identity;
- creating `governance/PRODUCT_OWNER.md`;
- encoding any identity other than `Rauf Alizada` as valid project identity.

## Target Outputs

Target outputs for this active P02 discovery task, each produced only under a separately approved Product Owner deliverable plan:

- a domain-model discovery surface covering entities, relationships, and lifecycle concepts;
- a governance-model refinement surface covering authority, change protocol, never-automatic guardrail, and trust boundaries as they evolve from P01;
- a security and trust-requirements surface covering data classes, sensitive boundaries, and threat assumptions;
- a data-classification and sensitive-boundary analysis suitable for downstream architecture work;
- an updated `governance/OPEN_QUESTIONS.md` projection of unresolved questions blocking architecture evaluation;
- P02 evidence and validation expectations encoded into the task record and session log per deliverable.

Each target output requires a separately approved drafting plan and a separate ratification transition. No target output is authorized by activation alone.

## Acceptance Criteria

Acceptance criteria for this active P02 task:

- P02 deliverables drafted and ratified under explicit Product Owner approval verbs;
- each ratified deliverable recorded as a distinct decision in `governance/DECISION_LOG.md`;
- `governance/HANDOFF.md`, `governance/SESSION_LOG.md`, and task evidence updated on each gate;
- the active-task invariant preserved across every transition;
- no architecture, implementation, license, dependency, hook, settings, adapter-rule, or project-code change occurs without separate explicit Product Owner approval;
- Product Owner identity `Rauf Alizada` preserved as sole authority throughout.

Closeout of this task requires a separately approved Product Owner closeout decision after all approved P02 deliverables are ratified.

## Stop Conditions

Stop and escalate to the Product Owner on any of:

- any attempt to treat `CONT-P02-ONB-001` as active before explicit Product Owner activation approval;
- any attempt to modify active-task/phase/project-state files before a separately approved P02 activation transition;
- any attempt to start architecture, implementation, license, dependency, hook, settings, adapter-rule, or project-code work;
- any attempt to create P03/P04/P05 work;
- any authority contradiction;
- any attempt to delegate ratification authority;
- any attempt to bypass approval-verb discipline;
- any attempt to bypass the active-task invariant;
- any reintroduction of invalid identities as valid project identity or authority.

## Evidence Requirements

For this active P02 discovery task:

- task file `governance/tasks/CONT-P02-ONB-001.md` reflects activated frontmatter and sections consistent with the activated state;
- `governance/ACTIVE_TASK.md` records `CONT-P02-ONB-001` as the single active task with `execution_authorized: true`;
- `governance/CURRENT_PHASE.md` reflects P02 as the active phase under gate `P02_DOMAIN_GOVERNANCE_SECURITY_DISCOVERY`;
- `governance/PROJECT_STATE.md` reflects the active P02 state and the activation decision `DEC-P02-ACTIVATION-001`;
- `governance/HANDOFF.md` reflects `P02_ACTIVE_AWAITING_FIRST_DISCOVERY_PLAN`;
- `governance/SESSION_LOG.md` contains a dated entry recording P02 activation;
- `governance/DECISION_LOG.md` records `DEC-P02-ACTIVATION-001`;
- the active-task invariant holds with exactly one active task;
- validation suite passes (`git diff --check` clean; no path leakage; no pycache; JSON OK; bash syntax OK; AST OK; hook fixture suite `54 pass / 0 fail`).

Evidence requirements for each subsequent P02 deliverable are defined per the Change Protocol and appended to this task record on the deliverable's approval transition.

## Activation Status

This task is **active** under `DEC-P02-ACTIVATION-001`. Activation:

- flipped frontmatter to `lifecycle_status: IN_PROGRESS`, `current_gate: P02_DOMAIN_GOVERNANCE_SECURITY_DISCOVERY`, `gate_status: ACTIVATED`, `ratification_status: APPROVED_FOR_EXECUTION`, `active: true`, `execution_authorized: true`;
- recorded `CONT-P02-ONB-001` as the single active task in `governance/ACTIVE_TASK.md`;
- updated `governance/CURRENT_PHASE.md`, `governance/PROJECT_STATE.md`, `governance/HANDOFF.md`, `governance/ROADMAP.md`, `governance/DOCUMENT_REGISTRY.md`, and `governance/SESSION_LOG.md` to the activated state;
- preserved the active-task invariant (zero → one);
- did **not** authorize drafting any P02 deliverable, creating context-policy files (`CONTEXT_POLICY.md`, `CONTEXT_BUDGET.md`, `CONTEXT_RETRIEVAL_PROTOCOL.md`, or any equivalent), generating any runtime context pack, modifying adapter rules (`CLAUDE.md`, `AGENTS.md`, `.claude/rules/`), modifying hooks, modifying `.claude/settings.json`, changing architecture, implementation, license, dependencies, settings, or project code, or starting P03/P04/P05.

Each subsequent P02 deliverable requires a separately approved Product Owner deliverable plan and approval-verb invocation. Closeout of this task requires a separately approved Product Owner closeout decision.

## P02 Activation Diff Evidence

- P01 is closed/completed under `DEC-P01-CLOSEOUT-001`.
- The proposed inactive `CONT-P02-ONB-001` task was committed in `120a20d10387d83e0e0dc425903f97108c84c4ad`.
- This diff activates `CONT-P02-ONB-001`: frontmatter flipped to `lifecycle_status: IN_PROGRESS`, `current_gate: P02_DOMAIN_GOVERNANCE_SECURITY_DISCOVERY`, `gate_status: ACTIVATED`, `ratification_status: APPROVED_FOR_EXECUTION`, `active: true`, `execution_authorized: true`.
- `CONT-P02-ONB-001` becomes the single active task. The active-task invariant transitions from zero active tasks to exactly one active task.
- P02 becomes active. P01 remains closed/completed. P03, P04, and P05 remain not active.
- No P02 deliverables are ratified under this diff.
- No context-policy files (`CONTEXT_POLICY.md`, `CONTEXT_BUDGET.md`, `CONTEXT_RETRIEVAL_PROTOCOL.md`, or any equivalent) are created under this diff.
- No runtime context pack is generated under this diff.
- No architecture, implementation, hooks, adapter-rule, license, dependency, settings, or project-code changes occur under this diff.
- Decision recorded by this activation: `DEC-P02-ACTIVATION-001`.
- Product Owner / sole ratification authority for v1: `Rauf Alizada`.

## P02 Discovery Plan 001 - Token-Efficiency and Context Policy Discovery

- status: `APPROVED_FOR_DRAFTING`.
- This plan was proposed in commit `4a66193344e4151d411964ec047ad7ba3f181536` and is approved under `DEC-P02-DISCOVERY-PLAN-001`.
- Approval authorizes future preparation of proposed context-policy deliverable drafts under `CONT-P02-ONB-001`.
- Each actual drafting step still requires explicit Product Owner approval using the approval-verb vocabulary (`prepare diff` / `commit only` / `commit and push`).
- This approval does **not** ratify any P02 deliverable.
- This approval diff does **not** create any context-policy file.
- This approval does **not** generate any runtime context pack.
- This approval does **not** authorize architecture, implementation, hooks, adapter-rule changes, license, dependency, settings, or project-code changes.

### Plan Objective

Define the first P02 discovery workstream for making Continuum OS token-efficient by design while preserving governance safety, Product Owner authority, local-first Git-native operation, and the rule that generated summaries are never canonical authority.

### Research Basis

Continuum OS does not have a token problem because it has too much governance. It has a token problem because it treats canonical files as if they must be auto-read every time.

### Plan Scope

Discovery and drafting preparation only, for:

- context-efficiency governance principles;
- layered context architecture;
- Runtime Context Pack policy;
- Task / Audit / Emergency context modes;
- reading policy table;
- token-budget rules;
- freshness and staleness guards;
- summary-vs-authority rule (generated summaries never become canonical authority);
- derived/generated context rules;
- token-waste risk register;
- future proposed canonical files:
  - `governance/CONTEXT_POLICY.md`;
  - `governance/CONTEXT_BUDGET.md`;
  - `governance/CONTEXT_RETRIEVAL_PROTOCOL.md`;
- future derived/generated files:
  - `.continuum/RUNTIME_CONTEXT.md`;
  - `.continuum/context-index.yaml`;
  - `.continuum/context-budget.yaml`;
  - `.continuum/context-freshness.yaml`;
  - `.continuum/token-audit.md`.

### Plan Non-Scope

This plan explicitly prohibits:

- creating the context-policy files now;
- creating runtime context packs now;
- changing the Claude cold-start reading order now;
- modifying `CLAUDE.md`, `AGENTS.md`, or `.claude/rules/`;
- implementing a generator;
- selecting implementation language or architecture;
- creating hooks;
- activating hooks;
- modifying `.claude/hooks/**`;
- ratifying context policy;
- ratifying context budget;
- ratifying retrieval protocol;
- ratifying any P02 deliverable;
- modifying project code;
- modifying dependencies;
- modifying settings;
- activating P03/P04/P05.

### Planned Future Deliverables

After separate Product Owner approval, future deliverables under this discovery workstream may include:

1. proposed `governance/CONTEXT_POLICY.md`;
2. proposed `governance/CONTEXT_BUDGET.md`;
3. proposed `governance/CONTEXT_RETRIEVAL_PROTOCOL.md`;
4. proposed Reading Policy Table;
5. proposed tag vocabulary for decisions, risks, and open questions;
6. baseline token-cost measurement method.

### Approval Requirement

This discovery plan has been **approved** under `DEC-P02-DISCOVERY-PLAN-001`. The next step requires a separate Product Owner approval to prepare the first proposed context-policy deliverable draft. No drafting begins until that separately approved plan is recorded.

### Plan Approval Evidence

- proposed-plan commit: `4a66193344e4151d411964ec047ad7ba3f181536`.
- approval decision: `DEC-P02-DISCOVERY-PLAN-001`.
- P02 remains active under `DEC-P02-ACTIVATION-001`.
- `CONT-P02-ONB-001` remains the single active task.
- No P02 deliverable ratified under this approval.
- No context-policy files (`CONTEXT_POLICY.md`, `CONTEXT_BUDGET.md`, `CONTEXT_RETRIEVAL_PROTOCOL.md`, or any equivalent) created under this approval.
- No runtime context pack generated under this approval.
- No architecture, implementation, hooks, adapter-rule, license, dependency, settings, or project-code changes occur under this approval.

## P02 Context-Policy Deliverable Draft Plan 001

- status: `APPROVED_FOR_DRAFTING`.
- This draft plan was proposed in commit `0d0d44b5cec57e0d61941e660349da27613c30cc` and is approved under `DEC-P02-CONTEXT-DRAFT-PLAN-001`.
- Approval authorizes future preparation of proposed context-policy deliverable draft files under `CONT-P02-ONB-001`.
- Each actual file-creation or drafting step still requires explicit Product Owner approval using the approval-verb vocabulary (`prepare diff` / `commit only` / `commit and push`).
- This approval does **not** ratify any P02 deliverable.
- This approval diff does **not** create any context-policy file.
- This approval does **not** generate any runtime context pack.
- This approval does **not** authorize architecture, implementation, hooks, adapter-rule changes, license, dependency, settings, or project-code changes.

### Plan Objective

Prepare a reviewable drafting plan for the first P02 context-policy deliverables that will later define how Continuum OS prevents token waste while preserving governance safety, Product Owner authority, local-first Git-native operation, and the rule that generated summaries are never canonical authority.

### Planned Deliverable Set

After separate Product Owner approval, the planned deliverable set may include proposed drafts of:

1. `governance/CONTEXT_POLICY.md`;
2. `governance/CONTEXT_BUDGET.md`;
3. `governance/CONTEXT_RETRIEVAL_PROTOCOL.md`;
4. a Reading Policy Table;
5. a tag vocabulary proposal for decisions, risks, and open questions;
6. a baseline token-cost measurement method.

### Intended Role of Each Future Draft

#### Future `governance/CONTEXT_POLICY.md`

Purpose:

- define layered context architecture;
- separate canonical authority from auto-loaded runtime context;
- define Runtime / Task / Audit / Emergency context modes;
- state that summaries and generated packs are never authority;
- define stale-context halt behavior;
- define escalation rules.

Must not:

- implement generator logic;
- modify Claude startup rules directly;
- ratify generated context packs;
- authorize architecture or implementation.

#### Future `governance/CONTEXT_BUDGET.md`

Purpose:

- define token budgets per context layer;
- define per-file reading budget rules;
- define size thresholds for `HANDOFF`, `PROJECT_STATE`, `SESSION_LOG`;
- define when audit mode is required;
- define token-waste warning thresholds.

Must not:

- collect conversation content;
- create telemetry files;
- implement token-audit tooling.

#### Future `governance/CONTEXT_RETRIEVAL_PROTOCOL.md`

Purpose:

- define when agents may read full canonical files;
- define when agents may load only filtered task context;
- define audit-mode justification requirements;
- define emergency-mode triggers;
- define source-hash and freshness expectations for future derived packs.

Must not:

- implement source-hash validation;
- create `.continuum/RUNTIME_CONTEXT.md`;
- activate hooks;
- change adapter rules.

#### Future Reading Policy Table

Purpose:

- classify current governance files as always-read, runtime-read, task-only, conflict-only, audit-only, or never-auto-read;
- define escalation conditions for each file;
- define stale-risk level for each file.

#### Future Tag Vocabulary Proposal

Purpose:

- propose tags for `DECISION_LOG.md`, `RISK_REGISTER.md`, and `OPEN_QUESTIONS.md`;
- enable future filtered retrieval;
- prevent full-file reads when only task-specific decisions or risks are needed.

#### Future Baseline Token-Cost Measurement Method

Purpose:

- define how to measure current cold-start context cost;
- define what counts as runtime, task, audit, and emergency context cost;
- define evidence expectations before any optimization is ratified.

### Plan Non-Scope

This plan explicitly prohibits:

- creating any of the future deliverable files now;
- editing `governance/DOCUMENT_REGISTRY.md` now;
- editing `governance/DECISION_LOG.md` now;
- ratifying any context-policy deliverable now;
- generating runtime context packs;
- changing the Claude cold-start reading order;
- modifying `CLAUDE.md`, `AGENTS.md`, or `.claude/rules/`;
- implementing a generator;
- selecting implementation language or architecture;
- creating or activating hooks;
- modifying `.claude/hooks/**`;
- modifying project code;
- modifying dependencies;
- modifying settings;
- activating P03/P04/P05.

### Approval Requirement

This draft plan has been **approved** under `DEC-P02-CONTEXT-DRAFT-PLAN-001`. The next step requires a separate Product Owner approval to prepare the first proposed context-policy deliverable file draft. No file-creation or drafting begins until that separately approved plan is recorded.

### Draft Plan Approval Evidence

- draft-plan proposal commit: `0d0d44b5cec57e0d61941e660349da27613c30cc`.
- approval decision: `DEC-P02-CONTEXT-DRAFT-PLAN-001`.
- P02 remains active under `DEC-P02-ACTIVATION-001`.
- `CONT-P02-ONB-001` remains the single active task.
- No P02 deliverable ratified under this approval.
- No context-policy files (`CONTEXT_POLICY.md`, `CONTEXT_BUDGET.md`, `CONTEXT_RETRIEVAL_PROTOCOL.md`, or any equivalent) created under this approval.
- No runtime context pack generated under this approval.
- No architecture, implementation, hooks, adapter-rule, license, dependency, settings, or project-code changes occur under this approval.
