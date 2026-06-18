# Change Protocol

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
