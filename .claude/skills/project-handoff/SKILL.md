---
name: project-handoff
description: Prepare a cold-start handoff package for Claude Code or another explicitly approved agent after Product Owner approval.
when_to_use: Use when the Product Owner requests a formal project handoff or transition package.
argument-hint: "[target-agent]"
arguments:
  - target_agent
disable-model-invocation: true
allowed-tools:
  - Read
  - Glob
  - Grep
disallowed-tools:
  - Bash
  - Agent
---

# Project Handoff Skill

Use `$target_agent` to identify the intended handoff recipient.

Handoff writes require explicit Product Owner approval. This skill must not commit, push, activate tasks, transition phases, delegate to another agent, or ratify decisions autonomously.

## Steps

1. Read canonical governance and task state for `$target_agent` handoff.
2. Identify current phase, active or proposed task, decisions, risks, blockers, non-scope, and next action.
3. Prepare reading order, first-response requirements, and a proposed write set listing exact paths and intended modifications.
4. Stop and request separate Product Owner write approval.
5. On a later invocation or message after approval, modify only approved paths.
6. Validate the resulting changes.
7. Never commit, push, activate a task, transition a phase, delegate to another agent, or ratify decisions autonomously.

## Outputs

- Handoff summary.
- Required reading order.
- First task proposal or activation state.
- Known blockers and prohibited actions.
- Proposed write set when persistence is needed.

## Stop Conditions

- Governance state is inconsistent.
- Handoff would activate a task or phase without approval.
- Write approval is absent.
