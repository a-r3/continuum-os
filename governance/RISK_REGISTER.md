---
doc_status: ratified_evolving
owner: Product Owner
ratification_status: RATIFIED
last_ratified_by: Rauf Alizada
last_ratified_at: 2026-06-20
source_task: CONT-P01-BUNDLE-004
supersedes:
superseded_by:
---

# Risk Register

| ID | Status | Severity | Risk | Mitigation | Owner | Evidence |
|---|---|---|---|---|---|---|
| RISK-P00-001 | Active | Medium | Hook scripts may over-block valid Claude Code actions. | Keep hooks unregistered until Product Owner-approved activation. | Product Owner | `governance/tasks/CONT-P00-ONB-001.md` |
| RISK-P00-002 | Active | Medium | Governance files may drift from Claude adapter instructions. | Governance outranks adapters; require conflict escalation and consistency audit. | Product Owner | `CLAUDE.md`, `AGENTS.md`, `governance/CHANGE_PROTOCOL.md` |
| RISK-P00-003 | Active | High | Secrets could be accidentally stored in project-control files. | `.gitignore`, Claude deny rules, security rules, hook policy, secret scan, explicit secret prohibition. | Product Owner | `governance/DECISION_LOG.md`, `governance/tasks/CONT-P00-ONB-001.md` |
| RISK-P00-004 | Active | Medium | `.continuum/` bootstrap projection may be mistaken for final format. | Mark manifest and index as provisional and derived. | Product Owner | `.continuum/manifest.yaml` |
| RISK-P00-005 | Resolved | Medium | Claude Code project configuration had not been interactively runtime-validated. | Product Owner completed interactive `claude doctor` in a normal terminal; Search diagnostic was OK. Claude version update availability is informational and not a P00 blocker. | Product Owner | `governance/HANDOFF.md`, `governance/tasks/CONT-P00-ONB-001.md` |

## P01 Top Risks — Bundle 4 Ratified Update

This section is the **ratified** Bundle 4 P01 top-risk update under `CONT-P01-BUNDLE-004`, ratified by the Product Owner `Rauf Alizada` on `2026-06-20` and recorded in `governance/DECISION_LOG.md` as `DEC-P01-B4-002`. The six P01 risks below are binding governance risk records until superseded by a later Product Owner-ratified change. No other identity is valid for project governance, approval, ratification, or authority. The spelling `Raauf Alizada` is invalid; `Tural Rahmanli` is not a project identity.

Risks recorded here do **not** authorize work by themselves. Any mitigation requiring Git mutation, task transition, ratification, hook changes, adapter changes, implementation, dependencies, architecture, settings, license, or project-code changes still requires explicit Product Owner approval under the approval verb vocabulary (`prepare diff` / `commit only` / `commit and push`).

### P01-RISK-001 — Authority Confusion

- **Risk ID:** `P01-RISK-001`
- **Title:** Authority confusion.
- **Description:** A non-Product-Owner identity (agent, tool, hook, skill, subagent, adapter rule, Git committer metadata, chat memory, hidden memory, external connector) is incorrectly treated as project authority. Invalid spellings (`Raauf Alizada`) or unrelated identities (`Tural Rahmanli`) are encoded as project identities.
- **Impact:** Decisions ratified by an invalid identity; loss of canonical authority chain; governance corruption that may force rollback of multiple bundles.
- **Likelihood:** Medium (agents and metadata frequently introduce non-authority identities).
- **Severity:** High.
- **Triggers:** Mentions of `Raauf Alizada` or `Tural Rahmanli` in governance; agent self-ratification language; "approved by hook/tool/session" claims; Git author/committer treated as Product Owner.
- **Mitigation:** Enforce Product Owner identity encoding in `governance/PROJECT_STATE.md`; cite `Rauf Alizada` consistently in `PRODUCT_CHARTER.md`, `GLOSSARY.md`, `CHANGE_PROTOCOL.md`, `NEVER_AUTOMATIC.md`, and the proposed `TRUST_BOUNDARIES.md`; require explicit Product Owner approval verb for ratifications; reject any diff containing invalid identities; stop and escalate on conflict.
- **Required evidence:** Ratified Product Owner identity encoding in `PROJECT_STATE.md`; ratified `TRUST_BOUNDARIES.md` Authority Boundary section; `DEC-P01-B4-*` entry once ratified; absence of invalid identities in committed files (verified by grep at validation time).
- **Stop condition:** Any appearance of an invalid identity as a valid project identity, authority, approver, ratifier, owner, or participant; or any appearance of an invalid identity outside explicit invalidation, stop-condition, or historical-error reference context; or any agent claim of self-ratification.
- **Owner / accountable authority:** Product Owner (`Rauf Alizada`).
- **Current status:** Proposed; open.

### P01-RISK-002 — Hidden-Memory / Chat-Memory Drift

- **Risk ID:** `P01-RISK-002`
- **Title:** Hidden-memory and chat-memory drift from ratified repository state.
- **Description:** Claude auto-memory, prior chat summaries, or hidden model memory diverge from ratified governance and are silently treated as canonical. A new session imports stale or unratified beliefs instead of cold-starting from the repository.
- **Impact:** Decisions or claims made on the basis of non-canonical context; silent erosion of governance integrity; unreviewable authority drift.
- **Likelihood:** High (LLM context naturally accumulates and persists).
- **Severity:** High.
- **Triggers:** Statements not grounded in a cited governance file; assertions that contradict the current `PROJECT_STATE.md`, `CURRENT_PHASE.md`, or `ACTIVE_TASK.md`; reliance on session history across summarization boundaries.
- **Mitigation:** Cold-start reading order in `CLAUDE.md` and `HANDOFF.md`; explicit governance-wins-on-conflict rule; require citations to ratified files for governance claims; stop and escalate on conflict between memory and repository.
- **Required evidence:** Ratified `CHANGE_PROTOCOL.md` and `NEVER_AUTOMATIC.md`; the proposed `TRUST_BOUNDARIES.md` Chat Memory and Hidden Memory Boundary section; session-log entries showing cold-start reads.
- **Stop condition:** Hidden-memory or chat-memory claim that conflicts with the current ratified repository state.
- **Owner / accountable authority:** Product Owner (`Rauf Alizada`).
- **Current status:** Proposed; open.

### P01-RISK-003 — Active-Task Invariant Failure

- **Risk ID:** `P01-RISK-003`
- **Title:** Active-task invariant failure (more than one or wrong active task).
- **Description:** The repository ends a transition with zero active tasks during execution, two active tasks simultaneously, or an active task whose ID, gate, or execution-authorized flag is inconsistent across `ACTIVE_TASK.md`, `PROJECT_STATE.md`, `CURRENT_PHASE.md`, and the task file itself.
- **Impact:** Ambiguous execution scope; risk of unauthorized writes; broken handoff chain; need to rewind commits to restore invariant.
- **Likelihood:** Medium (bundle transitions are the highest-risk window).
- **Severity:** High.
- **Triggers:** Bundle closeout + successor activation; predecessor still `active: true` after transition; successor `active: true` before approval; gate ID mismatch across files.
- **Mitigation:** Single-diff transitions that flip predecessor and successor together; pre-commit grep verification of `active:` and `lifecycle_status:` across all four files; HANDOFF and SESSION_LOG entries naming both predecessor and successor; explicit approval verb per transition.
- **Required evidence:** Pre-commit grep showing exactly one `active: true` task; commit SHA recording the transition; SESSION_LOG entry asserting the invariant before and after.
- **Stop condition:** Pre-commit or post-commit detection of zero or two active tasks during execution.
- **Owner / accountable authority:** Product Owner (`Rauf Alizada`).
- **Current status:** Proposed; open.

### P01-RISK-004 — Unsafe Git Mutation

- **Risk ID:** `P01-RISK-004`
- **Title:** Unsafe Git mutation (unauthorized commit, push, history rewrite, or destructive operation).
- **Description:** A Git operation runs outside the explicit approval verb scope: staging beyond authorized files, committing without `commit only` / `commit and push` approval, pushing without `commit and push`, force push, history rewrite, `reset --hard`, `clean -fd`, or branch deletion.
- **Impact:** Loss of work; corrupted history on `origin/main`; broken governance chain; potential leakage of sensitive content.
- **Likelihood:** Medium.
- **Severity:** Critical.
- **Triggers:** Approval verb misread; agent autonomy beyond approved scope; "fix-up" attempts after a failed pre-commit check using `--amend` or `reset`.
- **Mitigation:** Approval verb discipline in `CHANGE_PROTOCOL.md`; explicit prohibitions in `NEVER_AUTOMATIC.md`; pre-stage diff review; staged-file allowlist verification (`git diff --cached --name-status`); never bypass hooks; create new commits instead of amending after hook failures.
- **Required evidence:** Pre-commit `git diff --cached --name-status` showing only authorized files; post-commit commit SHA; post-push remote SHA equal to local HEAD; SESSION_LOG entry recording the approval verb used.
- **Stop condition:** Any Git mutation request lacking explicit narrow approval, or any destructive operation request without named command, scope, reason, expected consequence, and rollback implication.
- **Owner / accountable authority:** Product Owner (`Rauf Alizada`).
- **Current status:** Proposed; open.

### P01-RISK-005 — Hook / Adapter / Skill / Subagent Overreach

- **Risk ID:** `P01-RISK-005`
- **Title:** Hook, adapter rule, skill, or subagent overreach beyond mechanism scope.
- **Description:** A hook, adapter rule, skill, or subagent is treated as semantic approval, ratifies content, mutates governance authority, modifies the active-task invariant, or is activated without Product Owner approval.
- **Impact:** Mechanism layer silently encodes authority; bypass of Product Owner ratification; corrupted governance authority chain.
- **Likelihood:** Medium.
- **Severity:** High.
- **Triggers:** "Hook passed therefore approved" reasoning; adapter rule changes outside Product Owner approval; subagent producing ratification language; skill invoking governance writes outside its declared rules; hook activation requests without ratified P04 GO.
- **Mitigation:** Adapter Rule Boundary and Hook, Skill, and Subagent Boundary sections in the proposed `TRUST_BOUNDARIES.md`; `.claude/rules/00-governance.md` and `.claude/rules/04-security.md` reaffirmation; hooks remain unregistered and inactive until separately approved; subagents remain read-only review helpers.
- **Required evidence:** Unchanged adapter rules unless explicitly approved; hook activation state recorded in `PROJECT_STATE.md`; SESSION_LOG entries showing no hook or adapter modifications when none were approved.
- **Stop condition:** Any proposal to ratify via a hook/skill/subagent, to widen subagent authority, or to activate hooks without Product Owner approval.
- **Owner / accountable authority:** Product Owner (`Rauf Alizada`).
- **Current status:** Proposed; open.

### P01-RISK-006 — Premature Implementation or Architecture Selection

- **Risk ID:** `P01-RISK-006`
- **Title:** Premature implementation, architecture, dependency, license, or stack selection.
- **Description:** Implementation work, architecture ratification, language/framework/database/deployment-platform selection, dependency installation, license selection, or ADR creation occurs before the Product Owner-ratified P04 GO decision and an approved P05 implementation task.
- **Impact:** Path-dependent commitments locked in before product discovery is complete; rework cost; governance integrity loss; risk of premature external commitments (paid services, repos, hosting).
- **Likelihood:** Medium (LLMs and engineers default to "start building").
- **Severity:** High.
- **Triggers:** Suggestions to "scaffold", "install", "create package.json", "add Dockerfile", "pick a database"; ADR drafts outside an approved P03 task; license-file creation; dependency manifests.
- **Mitigation:** P03/P04/P05 phase boundary in `CHANGE_PROTOCOL.md`; `NEVER_AUTOMATIC.md` prohibitions; `.claude/rules/03-architecture.md` constraints; reserved runtime directories remain boundaries only; no dependency installation, no ADR creation, no license selection until ratified.
- **Required evidence:** Absence of implementation files; unchanged license state; unchanged dependency state; ratified P03 outputs (when applicable) and ratified P04 GO (when applicable) before any P05 work begins.
- **Stop condition:** Any request to implement, install, scaffold, or select an architecture/stack/license/dependency before the ratified P04 GO and approved P05 task.
- **Owner / accountable authority:** Product Owner (`Rauf Alizada`).
- **Current status:** Proposed; open.
