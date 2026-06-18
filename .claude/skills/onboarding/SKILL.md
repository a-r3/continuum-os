---
name: onboarding
description: Conduct controlled founder onboarding for CONT-P01-ONB-001 after Product Owner transition approval and task activation.
when_to_use: Use only when the Product Owner has activated CONT-P01-ONB-001 or explicitly asks to prepare onboarding questions.
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
  - Agent
---

# Onboarding Skill

Use `$task_id` to identify the onboarding task. Substantive onboarding requires `$task_id` to be `CONT-P01-ONB-001` after Product Owner transition approval and task activation.

This skill supports Claude-led founder onboarding. It does not ratify decisions, create final product conclusions, commit, push, activate tasks, transition phases, delegate to another agent, or implement.

## Required Inputs

- Active task record.
- Governance state.
- Product Owner prompt.

## Steps

1. Read canonical state.
2. Verify `$task_id` is active before substantive onboarding.
3. If not active, produce only a preparation note or stop.
4. Start with a read-only comprehension review.
5. Ask controlled question groups.
6. Separate facts, assumptions, proposals, and ratified decisions.
7. When persistence is needed, prepare a proposed write set listing exact paths and intended modifications.
8. Stop and request separate Product Owner write approval.
9. On a later invocation or message after approval, modify only approved paths.
10. Validate the resulting changes.
11. Never commit, push, activate a task, transition a phase, delegate to another agent, or ratify decisions autonomously.

## Outputs

- Question groups.
- Discovery summary.
- Proposed decisions.
- Open questions.
- Proposed write set when persistence is needed.

## Stop Conditions

- Task is not active.
- Product Owner has not approved transition.
- Architecture, implementation, or license selection is requested before proper ratification.
- Write approval is absent for requested persistence.
