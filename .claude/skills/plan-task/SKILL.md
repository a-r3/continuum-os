---
name: plan-task
description: Draft task plans with objective, scope, non-scope, risks, validation, rollback, gates, and closeout. Produces proposals only.
when_to_use: Use when preparing a new task or revising an existing proposed task.
argument-hint: "[task-id]"
arguments:
  - task_id
disable-model-invocation: true
allowed-tools:
  - Read
  - Glob
  - Grep
disallowed-tools:
  - Bash
  - Write
  - Edit
  - Agent
---

# Plan Task Skill

Use `$task_id` to identify the task being planned or revised.

Planning output is not ratified until the Product Owner approves it. This skill produces proposals in the current conversation. Persistence is a separately approved action by the main Claude session.

## Steps

1. Read current phase, active task, roadmap, risks, questions, and change protocol.
2. Confirm whether `$task_id` is proposed, active, blocked, suspended, cancelled, done, or closed.
3. Draft objective, rationale, baseline, scope, non-scope, dependencies, assumptions, risks, sequence, acceptance criteria, validation, evidence, rollback, gates, stop conditions, and closeout.
4. Mark semantic decisions as proposed unless already ratified.

## Outputs

- Proposed task plan for `$task_id`.
- Approval gates.
- Validation matrix.
- Open questions and risks.

## Stop Conditions

- More than one active task is detected.
- Requested scope violates current phase.
- Product Owner approval is required before proceeding.
