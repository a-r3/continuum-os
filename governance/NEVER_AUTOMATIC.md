---
doc_status: proposed
owner: Product Owner
ratification_status: NOT_RATIFIED
last_ratified_by:
last_ratified_at:
source_task: CONT-P01-BUNDLE-003
supersedes:
superseded_by:
---

# Never-Automatic Guardrail

## Status Notice

This document is a **proposed** Bundle 3 deliverable prepared under active task `CONT-P01-BUNDLE-003`. It is **not ratified**. Until the Product Owner (`Rauf Alizada`) ratifies this document, it describes intended governance behavior consistent with the ratified `governance/PRODUCT_CHARTER.md`, the ratified Product Owner identity encoding in `governance/PROJECT_STATE.md`, the ratified `governance/GLOSSARY.md`, and the unconditional rules in `.claude/rules/`, but it does not itself constitute new ratified authority.

The only valid Product Owner / project authority / sole ratification authority for v1 is `Rauf Alizada`. No other identity is valid. The spelling `Raauf Alizada` is invalid. The identity `Tural Rahmanli` does not participate in this project in any form; any incidental appearance in Git committer or environment metadata is not project authority.

## Purpose

This document enumerates the classes of action that are **never automatic** in Continuum OS v1. It exists so that Claude Code, future agents, hooks, skills, subagents, and any other tool know — at all times — which actions require explicit Product Owner approval and must not be inferred, batched, chained, or implied from other approvals.

## Core Rule

No action listed below may be performed automatically, implicitly, by chained inference, by batched approval, by tool availability, by hook availability, by skill availability, by past Product Owner approval of a different action, or by any agent's own judgement.

Each listed action requires an **explicit, current, scoped Product Owner approval**. Approval of one action does not approve any other action. Approval at one gate does not approve any later gate.

If any listed action appears to be required but the explicit Product Owner approval is not present in the current prompt or in the canonical active task record, **stop and ask**.

## Never-Automatic Actions

The following are never automatic. Each subsection groups related actions.

### Git and Repository Actions

- `git add` / staging any file.
- `git commit` (including amend).
- `git push`.
- `git push --force` or any force-push variant.
- `git reset --hard`, `git clean -fd`, `git restore --staged`, `git checkout -- <path>` for user-owned changes, or any other destructive Git operation.
- Branch creation, deletion, rename, or upstream change.
- Rebase, history rewrite, cherry-pick, revert, or merge of any branch.
- Tag creation, deletion, or move.
- Modifying Git configuration (`git config ...`).
- Changing Git remotes or remote URLs.
- Resolving merge conflicts by discarding either side.
- Skipping hooks (`--no-verify`) or signing flags.
- Any change to `.gitignore`, `.gitattributes`, or other repo-wide Git metadata.

### Ratification and Authority Actions

- Ratifying any document, decision, charter clause, glossary entry, change-protocol update, never-automatic update, trust-boundary clause, risk-register entry, or roadmap entry.
- Adding, modifying, marking ratified, superseding, or revoking any entry in `governance/DECISION_LOG.md`.
- Changing the `ratification_status`, `doc_status`, `last_ratified_by`, or `last_ratified_at` of any governance document.
- Asserting that any document is "ratified", "approved", "final", or "binding" on Claude's own authority.
- Granting, delegating, or accepting ratification authority on behalf of any agent, hook, skill, subagent, or session.
- Treating any agent's own claim, inference, or summary as a ratified decision.

### Task and Phase Actions

- Activating any proposed task.
- Closing, completing, cancelling, blocking, suspending, or resuming any task.
- Modifying `governance/ACTIVE_TASK.md`.
- Modifying the active task's `lifecycle_status`, `gate_status`, `current_gate`, `ratification_status`, `active`, or `execution_authorized` fields.
- Adding, removing, or reordering authorized files, non-scope, stop conditions, or acceptance criteria of an active task.
- Transitioning between phases (P00 → P01 → P02 → P03 → P04 → P05).
- Modifying `governance/CURRENT_PHASE.md` or `governance/PROJECT_STATE.md` snapshot fields.
- Changing the active-task invariant or treating a zero-or-multi active-task state as authorized without explicit Product Owner approval.
- Modifying `governance/ROADMAP.md` or `governance/DOCUMENT_REGISTRY.md`.

### Session Lifecycle Actions

- Continuing a session whose canonical state cannot be verified from repository files.
- Continuing a session past a stop condition without explicit Product Owner approval.
- Treating chat history or hidden memory as canonical project state.
- Skipping the cold-start read order on a new session.
- Skipping handoff updates when review or approval is required.
- Marking handoff as "complete" or "ready" without an evidence package.
- Resuming a paused or closed session without re-reading canonical state.
- Carrying execution authority across sessions without re-verifying the active task and approval verb in the new session.

### Hook, Validation, and Skill Actions

- Registering, installing, activating, or modifying any hook in `.claude/hooks/**`.
- Modifying `.claude/settings.json`, `.claude/settings.local.json`, or any `.claude/settings.*` file as a side effect of unrelated work.
- Activating, deactivating, installing, or modifying any skill in `.claude/skills/**`.
- Modifying any subagent definition in `.claude/agents/**`.
- Adding or modifying tool permissions, allow-lists, deny-lists, or sandboxing rules.
- Treating a hook, skill, subagent, or tool as self-authorizing for any never-automatic action above.
- Treating availability of a tool or hook as approval to use it for governance mutation.
- Proceeding when uncertain which validation, hook, skill, or procedure applies (uncertainty is a stop condition).

### Implementation and Dependency Actions

- Selecting, recommending-as-ratified, or installing a programming language, package manager, framework, runtime, build tool, or test framework.
- Installing, upgrading, downgrading, pinning, or removing any dependency or package.
- Creating or modifying lockfiles or manifest files (`package.json`, `pyproject.toml`, `Cargo.toml`, `go.mod`, etc.).
- Initializing or modifying any project source tree (`src/`, `app/`, etc.) for implementation purposes.
- Creating, selecting, or modifying a database, RAG store, vector store, retrieval system, message bus, queue, or external service.
- Creating, modifying, or deleting a `LICENSE` file or any license selection.
- Selecting, ratifying, or implementing an architecture (monolith vs services, monorepo vs polyrepo, deployment platform, etc.).
- Starting any P05 implementation work before an explicit Product Owner-ratified P04 GO decision.
- Creating an ADR or ratifying an architecture decision (only the Product Owner may ratify; only during P03 may agents propose).

### Identity and Authority Actions

- Changing or appearing to change the Product Owner identity. The Product Owner is `Rauf Alizada`.
- Encoding any identity other than `Rauf Alizada` as Product Owner, project authority, approver, ratifier, owner, or participant.
- Creating `governance/PRODUCT_OWNER.md` (explicitly out of scope for v1).
- Introducing or normalizing invalid identities (`Raauf Alizada`, `Tural Rahmanli`, or any other). They may appear only as explicit invalidation / stop-condition references.
- Modifying `governance/PROJECT_STATE.md` Product Owner identity encoding section.
- Introducing or assigning a cryptographic identity (PGP, SSH key fingerprint, DID, or other) to Product Owner identity (not used in v1).
- Treating Git committer metadata, environment metadata, or shell user as project authority.

### Bundle and Scope Actions

- Authoring Bundle 4 deliverables (`governance/TRUST_BOUNDARIES.md`, `governance/RISK_REGISTER.md` top-six update) under any task other than the explicitly approved Bundle 4 execution task.
- Authoring Bundle 5 deliverables (`docs/REFERENCE_STRUCTURE.md`, cold-start acceptance checklist ratification, roadmap update, adapter-rule alignment, P01 closeout) under any task other than the explicitly approved Bundle 5 execution task.
- Expanding the scope of the active task silently.
- Creating any file not enumerated in the active task's authorized-files list and the current approval prompt.
- Deleting, archiving, or moving any governance file or evidence record.

## Git and Repository Actions

See the Git and Repository Actions subsection under Never-Automatic Actions above. Summary: every staging, commit, push, force push, branch rewrite, history rewrite, destructive Git operation, and Git-configuration change requires an explicit Product Owner approval verb (`prepare diff`, `commit only`, `commit and push`) with named files and a named action.

## Ratification and Authority Actions

See the Ratification and Authority Actions subsection above. Summary: ratification is **non-delegable** and belongs only to `Rauf Alizada`. Agents may propose; only the Product Owner ratifies. No agent, hook, skill, subagent, session, or tool may assert ratified status on its own.

## Task and Phase Actions

See the Task and Phase Actions subsection above. Summary: every active-task transition, phase transition, and modification of canonical state files (`ACTIVE_TASK.md`, `PROJECT_STATE.md`, `CURRENT_PHASE.md`, `HANDOFF.md`, `ROADMAP.md`, `DOCUMENT_REGISTRY.md`) requires explicit Product Owner approval and must preserve the active-task invariant.

## Session Lifecycle Actions

See the Session Lifecycle Actions subsection above. Summary:

- Session open/close/pause/restart rules are **governance safety controls**, not optional conveniences.
- Claude must **not** continue a stale session if canonical state cannot be verified from repository files.
- A new session must **cold-start** from repository files in the order specified by `CLAUDE.md` and `governance/CHANGE_PROTOCOL.md`.
- Handoff must be updated or reported whenever review or approval is needed.
- Hidden memory, auto-memory, and chat history are not canonical authority and must not substitute for repository state.

## Hook, Validation, and Skill Actions

See the Hook, Validation, and Skill Actions subsection above. Summary:

- Hooks, validations, and skills are **not self-authorizing** for any never-automatic action.
- Claude may **run** existing validation scripts when required by the active task or approval prompt.
- Claude must **not** install, activate, register, or modify hooks, skills, subagents, or settings automatically.
- Uncertainty about which hook, skill, validation step, or governance procedure to use is a **stop condition** — stop and ask the Product Owner.
- Actual hook script modification, skill modification, or settings modification requires a **separate explicit task** with appropriate Product Owner approval.

## Implementation and Dependency Actions

See the Implementation and Dependency Actions subsection above. Summary: no implementation, no dependency, no language/framework/database/RAG selection, no license, no ADR, no architecture ratification before an explicit Product Owner-ratified P04 GO decision and a separately approved P05 implementation task.

## Identity and Authority Actions

See the Identity and Authority Actions subsection above. Summary: Product Owner identity is `Rauf Alizada` and is encoded only in the ratified `governance/PROJECT_STATE.md` Product Owner Identity Encoding section and in the ratified `governance/PRODUCT_CHARTER.md`. No `governance/PRODUCT_OWNER.md` exists in v1. No other identity is valid. Identity changes require a separately approved Product Owner-ratified governance change.

## Stop Conditions

Claude must stop and request explicit Product Owner approval whenever any of the following occurs:

- A never-automatic action above appears to be required but the explicit current approval is not present.
- Canonical governance files conflict with each other.
- An adapter, hook, skill, subagent, or session conflicts with ratified governance (governance wins; stop and report).
- Canonical state cannot be verified from repository files.
- An unexpected repository state appears (uncommitted changes, unknown files, drift between local HEAD and `origin/main` beyond what the prompt expects).
- A secret value, credential, or sensitive identifier appears in a path that violates `.claude/rules/04-security.md`.
- An invalid identity (`Raauf Alizada`, `Tural Rahmanli`, or any other) appears or is about to be encoded as a valid project identity.
- A validation step fails or is unavailable.
- The active task does not authorize the requested change, or the requested change exceeds the active task's authorized files / non-scope.
- Approval language is ambiguous, missing an approval verb, or attempts to chain unrelated actions.
- Hidden memory, auto-memory, chat history, or environment metadata is being treated as canonical authority.

A stop is not a failure; it is the correct response to ambiguity or missing approval.

## Evidence Requirements

When this document is invoked (e.g., to justify a stop, to record why a requested action was not performed, or to record why an approval was treated as scoped narrowly), evidence must be persisted in the canonical active task record:

- the specific action that was about to be taken or requested;
- the never-automatic class it falls under (Git, Ratification, Task/Phase, Session, Hook/Validation/Skill, Implementation/Dependency, Identity, Bundle/Scope);
- the missing or insufficient approval;
- the stop condition triggered (if any);
- the Product Owner approval ultimately required to proceed (or to confirm not to proceed).

Conversation output may supplement but does not replace durable repository evidence.

## Ratification Requirement

This document is **proposed** under `CONT-P01-BUNDLE-003`. It becomes binding only after:

- Product Owner (`Rauf Alizada`) review of the prepared Bundle 3 deliverable drafts;
- a Product Owner-approved Bundle 3 ratification gate that updates this document's frontmatter — moving `doc_status` to the ratified-evolving value, moving `ratification_status` to the ratified value, and filling the `last_ratified_by` and `last_ratified_at` fields with the Product Owner's name and the ratification date;
- A corresponding ratified entry in `governance/DECISION_LOG.md` recording the Bundle 3 ratification decision with full provenance.

Until then, this document describes intended governance behavior but does not itself constitute new ratified authority beyond the unconditional rules already encoded in `.claude/rules/` and the ratified Bundle 1 and Bundle 2 deliverables.
