---
name: close-session
description: Close an authorized session by preparing continuity updates and writing only after separate Product Owner approval.
when_to_use: Use when the Product Owner asks to close a session or prepare closeout.
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

# Close Session Skill

Use `$task_id` to identify the task being closed or prepared for closeout.

This skill has side effects only after explicit Product Owner approval for file writes. It must not commit, push, activate tasks, transition phases, delegate to another agent, or ratify decisions autonomously.

## Required Inputs

- Active task.
- Validation evidence.
- Current state.
- Product Owner approval for any write.

## Steps

1. Read canonical state for `$task_id`.
2. Prepare closeout summary and a proposed write set listing exact paths and intended modifications.
3. Stop and request separate Product Owner write approval.
4. On a later invocation or message after approval, modify only approved paths.
5. Validate the resulting changes.
6. Never commit, push, activate a task, transition a phase, delegate to another agent, or ratify decisions autonomously.

## Stop Conditions

- No active task when execution work is required.
- Validation evidence is missing.
- Write approval is absent.
- Closeout would imply a phase transition without Product Owner approval.
