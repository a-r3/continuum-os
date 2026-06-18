---
name: architecture-review
description: Review architecture options, boundaries, constraints, recommendations, and ADR readiness during approved P03/P04 work without ratifying architecture.
when_to_use: Use during authorized architecture review work, especially approved P03 tasks and P04 readiness checks.
argument-hint: "[topic]"
arguments:
  - topic
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

# Architecture Review Skill

Use `$topic` to identify the architecture topic under review.

Architecture review is analysis only until Product Owner-ratified decisions exist. This skill may compare options and recommend a preferred option during approved P03 work, but it must not ratify architecture, select technology canonically, activate tasks, transition phases, commit, push, or implement.

## Steps

1. Read current phase and task authorization for `$topic`.
2. Identify ratified constraints and unresolved questions.
3. Compare options without selecting a stack as canonical truth.
4. Flag missing ADR inputs, risks, and evidence.
5. Return review findings and proposed next questions.

## Outputs

- Option review.
- Recommended option when useful, clearly marked as a proposal.
- ADR readiness gaps.
- Risk and evidence notes.

## Stop Conditions

- Current phase or active task does not authorize architecture review.
- User requests implementation or canonical stack selection before Product Owner approval.
