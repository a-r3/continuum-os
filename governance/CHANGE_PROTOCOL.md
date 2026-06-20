# Change Protocol

## Status Notice

This document carries pre-existing P00/P01 content together with Bundle 3 (Authority, Change Protocol, and Never-Automatic Guardrail) **proposed updates** prepared under active task `CONT-P01-BUNDLE-003`. The Bundle 3 additions below — Authority Model, Approval Verb Discipline, Active-Task Invariant clarifications, Ceremony Lanes, Session Lifecycle Protocol, and Hook / Validation / Skill Usage Protocol — are **proposed and not ratified**. Only the Product Owner (`Rauf Alizada`) may ratify these additions. Until that ratification, they describe intended governance behavior but do not themselves constitute new ratified authority beyond the unconditional rules already encoded in `.claude/rules/` and the ratified `governance/PRODUCT_CHARTER.md`, `governance/GLOSSARY.md`, and Product Owner identity encoding.

## Lifecycle Overview

All significant work follows:

Discover -> Clarify -> Plan -> Review -> Approve -> Execute -> Validate -> Document -> Handoff -> Close.

## Authority Hierarchy

1. Explicit Product Owner decision.
2. Ratified governance and task documents.
3. Tool-specific adapter instructions.
4. Session conversation.
5. Hidden or automatic model memory.

## Active Task Invariant

The repository may have zero or one active task, never more than one. Mutating execution requires exactly one Product Owner-approved active task and `execution_authorized: true`.

Zero active tasks are allowed only during transition, approval wait, suspension, or closed-project state.

## Task Lifecycle States

- `PROPOSED`
- `APPROVED`
- `ACTIVE`
- `IN_PROGRESS`
- `IN_REVIEW`
- `BLOCKED`
- `SUSPENDED`
- `DONE`
- `CANCELLED`

Lifecycle status and gate status are separate. Gate status must not be encoded into lifecycle status.

## Gate Lifecycle

Common gate states:

- `NOT_STARTED`
- `PLAN_APPROVED`
- `EXECUTION_APPROVED`
- `REVIEW_PENDING`
- `CORRECTION_IN_PROGRESS`
- `APPROVED`
- `REJECTED`
- `CLOSED`

No approval gate implies approval of a later gate.

## Proposal And Activation

Agents may draft proposed tasks. A proposed, inactive, cancelled, done, blocked, suspended, or unratified task is not execution authority.

Task activation requires Product Owner approval, a current task file, and a matching `governance/ACTIVE_TASK.md` contract.

## Execution Authorization

Mutating work requires:

- one active task;
- `execution_authorized: true`;
- scope coverage in the active task;
- required gate approval;
- no stop condition currently triggered.

## Review, Blocking, Suspension, Closeout, And Cancellation

Review requires evidence sufficient for Product Owner decision.

Blocked tasks must identify the blocking condition, owner, and next action. Suspended tasks must identify the resume condition. Closeout requires validation evidence, documentation updates, handoff update, and Product Owner approval where required. Cancellation requires Product Owner approval and a record of preserved work and rollback needs.

## Document Authority Categories

- Canonical: source of project-control truth.
- Derived: generated or projected from canonical sources.
- Reference: supporting material.
- Proposed: not ratified.
- Superseded: replaced but retained for history.
- Revoked: explicitly withdrawn.
- Archived: inactive historical record.

## Decision Promotion

Agents may propose decisions. Only the Product Owner may ratify, supersede, or revoke semantic project decisions.

Decision evidence must point to durable repository evidence, normally the active task approval-history or decision-evidence section.

## Validation Evidence

Validation evidence must be persisted in the canonical active task record when it supports gate approval, closeout, or claims of readiness. Conversation output may supplement but does not replace durable evidence.

## Phase Transitions

Phase transitions require Product Owner approval, updated roadmap/current phase/project state, and handoff notes. P05 implementation requires an explicit Product Owner-ratified P04 GO decision.

## Session Closeout And Handoff

Session closeout must update or verify project state, active task state, session log, handoff, validation evidence, risks, blockers, and next action. Handoff must allow cold-start recovery without chat history or hidden memory.

## Correction Workflow

Corrections require an authorized correction scope, preserved review findings, updated files, validation, and a new evidence package. Corrections must not silently expand scope.

## Rollback

Rollback must preserve user work. Destructive rollback, history rewriting, or deletion of user-owned work requires explicit Product Owner approval identifying exact command, scope, reason, consequence, and recovery implication.

## Emergency Stop

Stop immediately on secret exposure, authority conflict, unexpected repository state, unapproved scope expansion, unsafe command requirement, or unresolved conflict between canonical governance documents.

## Conflict Escalation

If adapters conflict with governance, governance wins. If canonical governance files conflict, stop and ask the Product Owner to resolve or authorize a correction task.

## Authority Model (Bundle 3 — Proposed)

Status: **proposed**, not ratified. Drafted under `CONT-P01-BUNDLE-003`.

### Product Owner Authority

- The Product Owner / sole project authority / sole ratification authority for v1 is `Rauf Alizada`.
- No other identity is valid for project governance, approval, ratification, or authority.
- The spelling `Raauf Alizada` is invalid. The identity `Tural Rahmanli` does not participate in this project in any form; any incidental appearance in Git committer metadata or environment metadata is not project authority.

### Non-Delegable Ratification Authority

- Only the Product Owner may ratify semantic project decisions (charter content, glossary entries, change-protocol updates, decision-log entries, document authority changes, task closeout where ratification is required, phase transitions, and architecture decisions).
- Ratification authority cannot be delegated to any agent, tool, hook, skill, subagent, or session.
- Agents may propose; only the Product Owner ratifies.

### Delegable Bounded Execution Authorization

- Execution authorization is the bounded permission to mutate authorized files inside an active task's scope.
- Execution authorization is granted by the Product Owner through task activation (`execution_authorized: true`) and per-gate approval verbs.
- Execution authorization is bounded by the active task's authorized files, non-scope, stop conditions, and approval verb in force.
- Execution authorization does not include ratification authority.

### Distinct Approval Categories

These are distinct and must not be conflated:

- **Approval to prepare a diff** — authorizes editing only the explicitly authorized files in-place; no staging, commit, or push.
- **Approval to commit only** — authorizes staging exactly the authorized files and creating exactly one commit; no push.
- **Approval to commit and push** — authorizes staging exactly the authorized files, creating exactly one commit, and pushing normally to `origin/main`.
- **Ratification** — Product Owner ratification of a semantic decision or document state; recorded in `governance/DECISION_LOG.md` and/or the target artifact's frontmatter.
- **Task activation** — Product Owner approval to transition a proposed task into the single active task, updating active-task state files accordingly.
- **Task closeout** — Product Owner approval to close/complete an active task and (optionally in the same transition) activate a successor.

No approval category implies any other. No earlier approval implies a later approval.

## Approval Verb Discipline (Bundle 3 — Proposed)

Status: **proposed**, not ratified.

The only valid Git approval verbs are:

```text
prepare diff
commit only
commit and push
```

### Rules

- `prepare diff`
  - Modify only the authorized files in-place.
  - **No** `git add`, `git commit`, or `git push`.
  - Output is a reviewable diff for Product Owner review.
- `commit only`
  - Modify only the authorized files.
  - Stage **exactly** the authorized files.
  - Create **exactly one** commit with the approved title/body.
  - **No** `git push`.
- `commit and push`
  - Modify only the authorized files.
  - Stage **exactly** the authorized files.
  - Create **exactly one** commit with the approved title/body.
  - Push normally to the approved branch (`origin/main` unless otherwise approved).
- No force push under any approval verb unless a separate explicit Product Owner approval names the exact destructive command, scope, reason, expected consequence, and rollback implication.
- No implied staging, commit, or push from vague approval language (e.g., "go ahead", "do it"). The Product Owner must use one of the three verbs above for any Git mutation.
- Each approval verb authorizes the action exactly once for the named files. A new mutation requires a new approval.

## Active-Task Invariant (Bundle 3 — Proposed Clarification)

Status: **proposed** clarification of the unconditional invariant already recorded above.

- The repository may have **zero or one** active task, never more than one.
- Any mutating execution work requires **exactly one** active task with `execution_authorized: true` and a matching `governance/ACTIVE_TASK.md` record.
- Proposed, inactive, blocked, suspended, cancelled, done, or unratified tasks are **never** active and confer no execution authority.
- A successor task becomes active only by an explicit Product Owner-approved active-task transition that updates `governance/ACTIVE_TASK.md`, `governance/PROJECT_STATE.md`, `governance/CURRENT_PHASE.md`, `governance/HANDOFF.md`, and `governance/SESSION_LOG.md` accordingly.
- Closing a task and activating another in the same transition must preserve the single-active-task invariant: exactly one active task before, exactly one active task after.
- A zero-active-task state is permitted only during an explicit transition, approval wait, suspension, or closed-project state.

## Ceremony Lanes (Bundle 3 — Proposed)

Status: **proposed**, not ratified.

### Strict Lane

The `Strict` lane applies to:

- task execution under an active task;
- task activation and closeout (active-task transitions);
- ratification of semantic decisions and documents;
- commits, pushes, and any repository mutation;
- changes to canonical governance state files (`PROJECT_STATE.md`, `ACTIVE_TASK.md`, `CURRENT_PHASE.md`, `HANDOFF.md`, `SESSION_LOG.md`, `DECISION_LOG.md`, `CHANGE_PROTOCOL.md`, `PRODUCT_CHARTER.md`, `GLOSSARY.md`, `NEVER_AUTOMATIC.md`, `TRUST_BOUNDARIES.md`, `RISK_REGISTER.md`, `ROADMAP.md`, `DOCUMENT_REGISTRY.md`);
- any P03 architecture work and any P04 implementation-readiness work.

Strict-lane rules:

- Exactly one active task with `execution_authorized: true`.
- Explicit approval verb in force (`prepare diff` / `commit only` / `commit and push`).
- Authorized files enumerated; no other file may be modified.
- Required validation suite runs before commit/push.
- Evidence package returned after each gate.
- Stop conditions enforced.

### Lighter Lanes (Reserved)

The Product Owner may, by a separately ratified decision, describe lighter lanes for clearly bounded non-mutating or low-risk activity (for example, read-only exploration). A lighter lane:

- must **not** weaken the Strict-lane rules above;
- must **not** override Product Owner authority, the approval-verb discipline, the active-task invariant, or any never-automatic action;
- does not exist for v1 until the Product Owner explicitly ratifies one.

## Session Lifecycle Protocol (Bundle 3 — Proposed)

Status: **proposed**, not ratified.

A session is a single contiguous Claude Code interactive context. Sessions are governance objects, not just chat windows. The rules below apply to every session.

### Session Open / Cold Start

A new session must begin by reading canonical repository files, **not** hidden memory or chat history.

Minimum cold-start read order:

```text
governance/PROJECT_STATE.md
governance/ACTIVE_TASK.md
governance/CURRENT_PHASE.md
governance/HANDOFF.md
governance/DECISION_LOG.md
governance/GLOSSARY.md
the active or proposed task file under governance/tasks/
```

The full cold-start read order in `CLAUDE.md` (which adds `CHANGE_PROTOCOL.md`, `RISK_REGISTER.md`, `OPEN_QUESTIONS.md`, `ROADMAP.md`, `DOCUMENT_REGISTRY.md`, `.continuum/manifest.yaml`, `.continuum/index.md`) remains in force.

A session may proceed only after confirming:

- clean or expected working-tree state (`git status --short --branch`);
- local HEAD / remote baseline (`git rev-parse HEAD`, `git ls-remote origin refs/heads/main`) when commit/push is in scope;
- the current active task ID and gate;
- the authorized files for the in-force approval verb;
- the prohibited actions enumerated by the prompt and task;
- the next safe action.

If any of these cannot be verified from canonical files, stop and request Product Owner clarification.

### Session Continue

A session may continue only while:

- the active task and gate remain clear and unchanged;
- no stop condition has appeared;
- no hidden-memory conflict has appeared;
- no authority ambiguity has appeared;
- no unexpected repository state has appeared.

If any of these change, pause and update handoff.

### Session Pause / Handoff

A session must pause and update or report handoff when:

- a prepare-diff artifact is ready for Product Owner review;
- a validation mismatch occurs (e.g., fixture suite regression, JSON/AST/bash syntax failure, path-leakage hit, unexpected staged file);
- a file-scope mismatch occurs (an authorized file is missing, or a non-authorized file is touched);
- Product Owner approval is required before staging, commit, push, or ratification;
- an active-task transition is needed (closeout, activation, or both);
- the next safe action is not safe to infer from canonical files.

Pausing means: stop further mutation, summarize current state and evidence, point at the next required Product Owner approval.

### Session Close

A session should close after:

- an evidence package has been returned;
- a commit/push transition has been completed;
- a ratification or active-task transition has been completed;
- the next safe action belongs to Product Owner review;
- the conversation context is becoming ambiguous or too long to safely continue.

A close is a clean stop; it must not leave the repository mid-transition.

### New Session Required

A new session is required or strongly preferred:

- after a major commit/push;
- before activating a new task;
- before ratifying a deliverable;
- when switching from review to execution (or vice versa);
- when previous context may be stale relative to canonical files;
- when Claude cannot verify state from canonical files;
- after any stop condition.

A new session must cold-start; it must not rely on hidden memory of the previous session.

## Hook, Validation, and Skill Usage Protocol (Bundle 3 — Proposed)

Status: **proposed**, not ratified.

### General Rules

- Claude must **not** invent, install, register, or activate hooks automatically.
- Claude must **not** modify hook scripts (`.claude/hooks/**`) unless an active task explicitly authorizes hook work and the Product Owner approves the relevant approval verb.
- Claude may **run** existing validation and hook fixture scripts when required by the active task or the approval prompt.
- Claude must **not** install, modify, or activate skills (`.claude/skills/**`) or subagents (`.claude/agents/**`) automatically; their use is bounded by their invocation rules and the active task.
- Tool selection (Read, Edit, Write, Grep, Glob, Bash, etc.) is execution discipline, not governance authority; tool availability does not authorize an action.

### Validation Discipline

- Claude must run `git diff --check` before producing review-diff evidence and before any commit approval evidence.
- Claude must run the existing hook fixture suite (`.claude/hooks/tests/run-fixtures.sh`) when the task requires full validation (typically before commit/push).
- JSON validation (`python3 -m json.tool`) must be run when `.claude/settings.json` or `.claude/settings.local.example.json` is touched or when the standard validation set requires it.
- Bash syntax checks (`bash -n`) must be run when shell hooks or scripts are touched or when the standard validation set requires it.
- AST parse checks must be run when Python hook helpers (`.claude/hooks/lib/*.py`) are touched or when the standard validation set requires it.
- Path-leakage scans (machine-specific absolute home-directory paths) and Python-bytecode scans (`__pycache__`, `.pyc`) must be run when the standard validation set requires it.
- For prepare-diff-only work, Claude may run the smallest sufficient validation set unless the task explicitly requires full validation.
- Before commit/push, Claude must run the full required validation suite specified by the approval prompt.
- All validation evidence supporting a gate approval, closeout, or readiness claim must be persisted in the canonical active task record per the existing Validation Evidence rule.

### Uncertainty

If Claude is unsure which validation step, hook, skill, or governance procedure applies, Claude must **stop and ask the Product Owner**. Guessing is a stop condition.

### Decision Table

```text
Situation                       | Required action
New session starts              | Cold-start read canonical files
Before editing                  | Verify active task, gate, authorized files, prohibited files
Prepare-diff requested          | Modify only authorized files; run diff check; export review diff
Before commit                   | Verify staged files exactly; run required validation
Before push                     | Verify local HEAD and remote baseline; push normally only if explicitly approved
After push                      | Verify local == remote; report evidence
Ratification requested          | Update target artifact + decision log only if explicitly approved
Task transition requested       | Update active task/state files only if explicitly approved
Unclear state                   | Stop and ask Product Owner
```
