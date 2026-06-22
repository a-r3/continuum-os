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

## P02 Top Risks — Initial Projection

This section projects unresolved P02 risks surfaced by the ratified P02 discovery artifacts and the P02 open-questions projection. The 19 risks below are projected from `DEC-P02-DOMAIN-DISCOVERY-001`, `DEC-P02-SECURITY-TRUST-REQUIREMENTS-001`, `DEC-P02-DATA-CLASSIFICATION-001`, and the `OPEN_QUESTIONS.md` projection at commit `e0dba07e759bfded5e4f7bc1222f2b79c8a50a7f` (28 `OQ-P02-*` rows). They are recorded as `Proposed; open`. No risk is resolved, accepted, mitigated, or closed by this projection. None of these risks authorizes work by itself. Any mitigation requiring Git mutation, task transition, ratification, hook changes, adapter changes, implementation, dependencies, architecture, settings, license, or project-code changes still requires explicit Product Owner approval under the approval verb vocabulary (`prepare diff` / `commit only` / `commit and push`). The sole Product Owner and sole ratification authority remains `Rauf Alizada`; the spelling `Raauf Alizada` is invalid and the identity `Tural Rahmanli` is not a project identity.

### P02-RISK-001 — Product Owner Authority Confusion / Invalid Identity

- **Risk ID:** `P02-RISK-001`.
- **Status:** Proposed; open.
- **Phase:** P02.
- **Source task:** `CONT-P02-ONB-001`.
- **Source decisions / open questions:** `DEC-P02-SECURITY-TRUST-REQUIREMENTS-001`; `DEC-P02-DOMAIN-DISCOVERY-001`; related to `P01-RISK-001`.
- **Description:** A non-Product-Owner identity (agent, hook, skill, subagent, adapter rule, Git committer metadata, chat memory, hidden memory) or an invalid spelling (`Raauf Alizada`) or an unrelated identity (`Tural Rahmanli`) is encoded as project authority in P02 governance, decisions, ratifications, or evidence.
- **Trigger / Cause:** Agent self-ratification language; committer/author metadata interpreted as Product Owner; copy/paste of invalid identity tokens; chat-memory carryover.
- **Impact:** Corrupted authority chain; invalid ratification; potential rollback of P02 decisions and dependent work.
- **Current mitigation / guardrail:** Authority Notice in every P02 task and draft; explicit invalid-identity enumeration in `governance/PROJECT_STATE.md`, `PRODUCT_CHARTER.md`, `GLOSSARY.md`, `CHANGE_PROTOCOL.md`, `NEVER_AUTOMATIC.md`, `TRUST_BOUNDARIES.md`, and the ratified P02 drafts; approval-verb discipline; grep-time identity check before each commit.
- **Needed Product Owner decision / future work:** Decide whether identity enforcement is upgraded from documentary control to a ratified hook/control (out of scope for projection).
- **Owner / accountable authority:** Product Owner (`Rauf Alizada`).

### P02-RISK-002 — Active-Task Invariant Violation in P02

- **Risk ID:** `P02-RISK-002`.
- **Status:** Proposed; open.
- **Phase:** P02.
- **Source task:** `CONT-P02-ONB-001`.
- **Source decisions / open questions:** `DEC-P02-DOMAIN-DISCOVERY-001`; related to `P01-RISK-003`.
- **Description:** P02 ends a transition with zero active tasks during execution, two active tasks simultaneously, or an active task whose lifecycle/gate/execution-authorized flag disagrees across `ACTIVE_TASK.md`, `PROJECT_STATE.md`, `CURRENT_PHASE.md`, `HANDOFF.md`, and the task file.
- **Trigger / Cause:** Sibling P02 plan/draft transitions; proposed-inactive successor flipped before approval; partial diff missing one of the four files.
- **Impact:** Ambiguous execution scope; risk of unauthorized writes; need to rewind P02 commits to restore invariant.
- **Current mitigation / guardrail:** Single-diff transition pattern; pre-commit greps of `active:` / `lifecycle_status:` / `execution_authorized:`; HANDOFF + SESSION_LOG entries naming the invariant; approval-verb discipline.
- **Needed Product Owner decision / future work:** Decide whether a ratified hook should enforce the invariant at commit time.
- **Owner / accountable authority:** Product Owner (`Rauf Alizada`).

### P02-RISK-003 — Generated Context Treated as Canonical

- **Risk ID:** `P02-RISK-003`.
- **Status:** Proposed; open.
- **Phase:** P02.
- **Source task:** `CONT-P02-ONB-001`.
- **Source decisions / open questions:** `DEC-P02-CONTEXT-POLICY-001`; `DEC-P02-DOMAIN-DISCOVERY-001`; `DEC-P02-DATA-CLASSIFICATION-001`.
- **Description:** A generated context pack, runtime summary, or model-side memory is treated as canonical project authority instead of a derived artifact.
- **Trigger / Cause:** Cold-start without reading governance; reliance on chat summaries; future `.continuum/RUNTIME_CONTEXT.md` or sibling pack being cited as a decision source.
- **Impact:** Decisions or claims grounded in non-canonical context; silent authority erosion.
- **Current mitigation / guardrail:** Ratified `governance/CONTEXT_POLICY.md` `summary-vs-authority` rule; absence of runtime pack files today; `CLAUDE.md` cold-start order.
- **Needed Product Owner decision / future work:** Decide enforcement boundary if runtime packs are ever generated.
- **Owner / accountable authority:** Product Owner (`Rauf Alizada`).

### P02-RISK-004 — Stale Generated Context

- **Risk ID:** `P02-RISK-004`.
- **Status:** Proposed; open.
- **Phase:** P02.
- **Source task:** `CONT-P02-ONB-001`.
- **Source decisions / open questions:** `DEC-P02-CONTEXT-POLICY-001`; `DEC-P02-CONTEXT-RETRIEVAL-001`; `DEC-P02-DATA-CLASSIFICATION-001`.
- **Description:** A generated context pack, summary, or audit projection lags ratified governance state and is consumed without staleness validation.
- **Trigger / Cause:** Pack generation not gated on freshness; absence of source-hash check; manual hand-edits to derived artifacts.
- **Impact:** Decisions taken against a stale view; reintroduction of superseded claims; loss of trust in derived artifacts.
- **Current mitigation / guardrail:** Ratified Context Policy staleness rule; ratified Context Retrieval Protocol freshness expectations; no runtime pack present today.
- **Needed Product Owner decision / future work:** Decide staleness-enforcement mechanism when packs are introduced.
- **Owner / accountable authority:** Product Owner (`Rauf Alizada`).

### P02-RISK-005 — Unauthorized Commit/Push or Approval-Verb Violation

- **Risk ID:** `P02-RISK-005`.
- **Status:** Proposed; open.
- **Phase:** P02.
- **Source task:** `CONT-P02-ONB-001`.
- **Source decisions / open questions:** `DEC-P02-SECURITY-TRUST-REQUIREMENTS-001`; related to `P01-RISK-004`.
- **Description:** Staging, committing, or pushing occurs outside the explicit approval-verb scope (`prepare diff` / `commit only` / `commit and push`), including widening the file allowlist or pushing without explicit `commit and push`.
- **Trigger / Cause:** Approval-verb misread; agent autonomy beyond approved scope; "fix-up" attempts that re-stage unrelated files.
- **Impact:** Loss of work; corrupted history; broken governance chain.
- **Current mitigation / guardrail:** Verb vocabulary in `CHANGE_PROTOCOL.md`; explicit prohibitions in `NEVER_AUTOMATIC.md`; pre-stage diff review; staged-file allowlist verification; never amend after hook failure.
- **Needed Product Owner decision / future work:** Decide whether verb enforcement is upgraded to a ratified hook.
- **Owner / accountable authority:** Product Owner (`Rauf Alizada`).

### P02-RISK-006 — Destructive Git Command Without Explicit Approval

- **Risk ID:** `P02-RISK-006`.
- **Status:** Proposed; open.
- **Phase:** P02.
- **Source task:** `CONT-P02-ONB-001`.
- **Source decisions / open questions:** `DEC-P02-SECURITY-TRUST-REQUIREMENTS-001`; related to `P01-RISK-004`.
- **Description:** A destructive Git operation (`reset --hard`, `clean -fd`, force push, `branch -D`, history rewrite, `--amend` after a failed hook) runs without explicit narrowly scoped Product Owner approval naming command, scope, reason, expected consequence, and rollback implication.
- **Trigger / Cause:** Recovery attempts after failed validation; agent attempting to "clean up" the working tree.
- **Impact:** Permanent loss of governance state; force-push poisoning of `origin/main`.
- **Current mitigation / guardrail:** `NEVER_AUTOMATIC.md` prohibitions; `.claude/rules/06-git-workflow.md`; `.claude/hooks/block-destructive-command.sh` fixture coverage (not activated); explicit escalation requirement.
- **Needed Product Owner decision / future work:** Decide ratified-activation gate for `block-destructive-command.sh`.
- **Owner / accountable authority:** Product Owner (`Rauf Alizada`).

### P02-RISK-007 — Hook / Adapter / Settings Implementation Drift Before Ratified Gate

- **Risk ID:** `P02-RISK-007`.
- **Status:** Proposed; open.
- **Phase:** P02.
- **Source task:** `CONT-P02-ONB-001`.
- **Source decisions / open questions:** `DEC-P02-SECURITY-TRUST-REQUIREMENTS-001`; related to `P01-RISK-005`, `P01-RISK-006`.
- **Description:** Hook activation, adapter-rule modification, or `.claude/settings.json` change occurs before a Product Owner-ratified gate authorizes the mechanism layer; or a mechanism is treated as semantic approval.
- **Trigger / Cause:** "Hook passed therefore approved" reasoning; pre-emptive activation; adapter-rule edits outside an approved gate.
- **Impact:** Authority encoded in mechanism layer; bypass of Product Owner ratification; corrupted authority chain.
- **Current mitigation / guardrail:** Hooks remain unregistered/inactive; adapter rules unchanged; `.claude/rules/` advisory only; `governance/TRUST_BOUNDARIES.md` Adapter Rule Boundary and Hook/Skill/Subagent Boundary sections.
- **Needed Product Owner decision / future work:** Decide P04 hook-activation gate criteria.
- **Owner / accountable authority:** Product Owner (`Rauf Alizada`).

### P02-RISK-008 — Secret or Credential Leakage Into Repo/Governance/Session Logs

- **Risk ID:** `P02-RISK-008`.
- **Status:** Proposed; open.
- **Phase:** P02.
- **Source task:** `CONT-P02-ONB-001`.
- **Source decisions / open questions:** `DEC-P02-DATA-CLASSIFICATION-001`; `DEC-P02-SECURITY-TRUST-REQUIREMENTS-001`; `OQ-P02-S-004`; related to `P00-RISK-003`.
- **Description:** A secret, credential, token, API key, or password value is written into the repository, governance documents, `.continuum/`, session logs, evidence files, examples, or task records.
- **Trigger / Cause:** Pasted env content; example snippets; agent summarizing local config; reference vs value confusion.
- **Impact:** Credential compromise; supply-chain risk; required key rotation; potential reputational/legal cost.
- **Current mitigation / guardrail:** `.claude/rules/04-security.md` secret rules; ratified P02 secret-handling boundaries (Secret-Bound-1..5); `.gitignore` deny patterns; deny rules on `.env`, `.env.*`, `.claude/settings.local.json`, `CLAUDE.local.md`, `secrets/**`; documentary prohibition on storing values vs references.
- **Needed Product Owner decision / future work:** Decide whether a ratified `governance/SECRETS_POLICY.md` and/or secret-scan hook is needed.
- **Owner / accountable authority:** Product Owner (`Rauf Alizada`).

### P02-RISK-009 — `.env`, Local Settings, or `secrets/**` Read/Summarized/Committed

- **Risk ID:** `P02-RISK-009`.
- **Status:** Proposed; open.
- **Phase:** P02.
- **Source task:** `CONT-P02-ONB-001`.
- **Source decisions / open questions:** `DEC-P02-DATA-CLASSIFICATION-001`; `DEC-P02-SECURITY-TRUST-REQUIREMENTS-001`; `OQ-P02-S-004`.
- **Description:** An agent reads, summarizes, or commits the contents of `.env`, `.env.*`, `.claude/settings.local.json`, `CLAUDE.local.md`, or `secrets/**`, persisting sensitive content into chat, governance, or repository state.
- **Trigger / Cause:** Cold-start over-eager file reads; debugging requests that include excluded paths; mis-scoped subagent invocations.
- **Impact:** Sensitive local state exposed in transcripts or commits; potential credential compromise.
- **Current mitigation / guardrail:** Claude deny rules; `.claude/rules/04-security.md`; ratified P02 secret-handling boundaries; per-file path-allowlist discipline during prepare-diff work.
- **Needed Product Owner decision / future work:** Decide whether a ratified hook should enforce the read-deny list at OS level.
- **Owner / accountable authority:** Product Owner (`Rauf Alizada`).

### P02-RISK-010 — Client / External / Private Data Leakage

- **Risk ID:** `P02-RISK-010`.
- **Status:** Proposed; open.
- **Phase:** P02.
- **Source task:** `CONT-P02-ONB-001`.
- **Source decisions / open questions:** `DEC-P02-DATA-CLASSIFICATION-001`; `OQ-P02-C-003`; `OQ-P02-C-008`; `OQ-P02-S-009`.
- **Description:** External/client/private data is written into Continuum OS governance, evidence, generated context, or session logs without ratified classification, isolation, or export authorization.
- **Trigger / Cause:** Mis-scoped task examples; "real-world" snippets pasted into discovery; absence of ratified client-data class; absence of export/share authorization rules.
- **Impact:** Privacy breach; trust loss; potential legal exposure.
- **Current mitigation / guardrail:** Ratified P02 external/client data boundaries (External-Bound-1..5); ratified P02 data-classification draft; OQ-P02-C-003 (client-data isolation) and OQ-P02-C-008 (export authorization) explicitly open and unresolved.
- **Needed Product Owner decision / future work:** Ratify client-data isolation requirement and export/share authorization rule.
- **Owner / accountable authority:** Product Owner (`Rauf Alizada`).

### P02-RISK-011 — Cross-Client Context Contamination

- **Risk ID:** `P02-RISK-011`.
- **Status:** Proposed; open.
- **Phase:** P02.
- **Source task:** `CONT-P02-ONB-001`.
- **Source decisions / open questions:** `DEC-P02-DATA-CLASSIFICATION-001`; `DEC-P02-DOMAIN-DISCOVERY-001`; `OQ-P02-C-003`; `OQ-P02-D-006`.
- **Description:** Context from one client/project/workspace leaks into another via shared chat memory, generated packs, registry rows, evidence files, or session logs.
- **Trigger / Cause:** Multi-project use of the same agent session; absence of ratified workspace/tenant noun; absence of ratified scope-bound isolation rule.
- **Impact:** Confidentiality breach; loss of trust; incorrect decisions made against wrong tenant.
- **Current mitigation / guardrail:** Ratified P02 scope-boundary candidates (Scope-Bound-1..5); cold-start reading order anchors to one project at a time; OQ-P02-D-006 (multi-tenancy noun) and OQ-P02-C-003 (client-data isolation) explicitly open.
- **Needed Product Owner decision / future work:** Ratify multi-tenancy/workspace concept and isolation boundary.
- **Owner / accountable authority:** Product Owner (`Rauf Alizada`).

### P02-RISK-012 — Path Leak / Local Environment Metadata Persistence

- **Risk ID:** `P02-RISK-012`.
- **Status:** Proposed; open.
- **Phase:** P02.
- **Source task:** `CONT-P02-ONB-001`.
- **Source decisions / open questions:** `DEC-P02-DATA-CLASSIFICATION-001`; `DEC-P02-SECURITY-TRUST-REQUIREMENTS-001`.
- **Description:** Local environment metadata (absolute paths, OS user, machine hostname, IDE state, tool versions) is persisted into governance/evidence/session logs and committed to the repository.
- **Trigger / Cause:** Verbose tool output pasted into evidence; cold-start audits that echo local paths; agent enumerating environment to "be thorough".
- **Impact:** Exposure of operator environment; deanonymization; partial credential surface in some tooling.
- **Current mitigation / guardrail:** Ratified P02 evidence-boundary candidates (Evidence-Bound-1..6); review-time redaction during prepare-diff; session-log discipline.
- **Needed Product Owner decision / future work:** Decide whether redaction is documentary or enforced.
- **Owner / accountable authority:** Product Owner (`Rauf Alizada`).

### P02-RISK-013 — Evidence Granularity Ambiguity

- **Risk ID:** `P02-RISK-013`.
- **Status:** Proposed; open.
- **Phase:** P02.
- **Source task:** `CONT-P02-ONB-001`.
- **Source decisions / open questions:** `DEC-P02-DOMAIN-DISCOVERY-001`; `OQ-P02-D-005`; `OQ-P02-D-007`.
- **Description:** It is unclear at what granularity evidence must be recorded (per artifact, per file, per decision, per gate, per commit) and which records count as canonical evidence vs derived claim.
- **Trigger / Cause:** Multiple evidence sites (task file, HANDOFF, SESSION_LOG, DECISION_LOG, registry) without a single ratified policy; OQ-P02-D-005 (artifact-vs-record distinction) and OQ-P02-D-007 (decision-vs-claim boundary) open.
- **Impact:** Inconsistent evidence; replay difficulty; ambiguous audit trail.
- **Current mitigation / guardrail:** Per-deliverable evidence pattern already followed; HANDOFF/SESSION_LOG/task-file triple-update discipline.
- **Needed Product Owner decision / future work:** Ratify an `EVIDENCE_POLICY.md` resolving granularity, authority, and recording sites.
- **Owner / accountable authority:** Product Owner (`Rauf Alizada`).

### P02-RISK-014 — Distributed Evidence Authority / Lack of `EVIDENCE_POLICY.md`

- **Risk ID:** `P02-RISK-014`.
- **Status:** Proposed; open.
- **Phase:** P02.
- **Source task:** `CONT-P02-ONB-001`.
- **Source decisions / open questions:** `DEC-P02-DOMAIN-DISCOVERY-001`; `OQ-P02-D-005`; `OQ-P02-D-008`.
- **Description:** Evidence policy is distributed across many documents (`CHANGE_PROTOCOL.md`, `CONTEXT_POLICY.md`, task files, HANDOFF, SESSION_LOG, registry) with no single ratified authority document, increasing drift risk.
- **Trigger / Cause:** Organic accretion of evidence rules across P00/P01/P02 deliverables; no ratified consolidation.
- **Impact:** Conflicting evidence rules across documents; ambiguous winner on conflict; harder onboarding for future agents.
- **Current mitigation / guardrail:** Governance-wins-on-conflict rule; stop-and-escalate on contradiction; this risk is explicitly tracked here.
- **Needed Product Owner decision / future work:** Ratify a consolidated `governance/EVIDENCE_POLICY.md` (out of scope for this projection).
- **Owner / accountable authority:** Product Owner (`Rauf Alizada`).

### P02-RISK-015 — Distributed Secret-Handling Authority / Lack of `SECRETS_POLICY.md`

- **Risk ID:** `P02-RISK-015`.
- **Status:** Proposed; open.
- **Phase:** P02.
- **Source task:** `CONT-P02-ONB-001`.
- **Source decisions / open questions:** `DEC-P02-DATA-CLASSIFICATION-001`; `DEC-P02-SECURITY-TRUST-REQUIREMENTS-001`; `OQ-P02-S-004`; `OQ-P02-S-006`.
- **Description:** Secret-handling rules are distributed across `.claude/rules/04-security.md`, `.gitignore`, deny rules, ratified P02 secret-handling boundaries, and the ratified data-classification draft, with no single ratified `SECRETS_POLICY.md` authority document.
- **Trigger / Cause:** Mechanism-layer rules and governance-layer rules grew independently; no ratified consolidation.
- **Impact:** Conflicting interpretation of secret rules; ambiguous redaction scope; rotation cadence undefined (OQ-P02-S-004) and redaction scope undefined (OQ-P02-S-006).
- **Current mitigation / guardrail:** Documentary prohibitions in multiple layers; deny rules; no values committed.
- **Needed Product Owner decision / future work:** Ratify a consolidated `governance/SECRETS_POLICY.md` resolving rotation cadence and redaction scope.
- **Owner / accountable authority:** Product Owner (`Rauf Alizada`).

### P02-RISK-016 — Undefined Canonical Data Classes / Sensitivity Levels

- **Risk ID:** `P02-RISK-016`.
- **Status:** Proposed; open.
- **Phase:** P02.
- **Source task:** `CONT-P02-ONB-001`.
- **Source decisions / open questions:** `DEC-P02-DATA-CLASSIFICATION-001`; `OQ-P02-C-001`; `OQ-P02-C-002`; `OQ-P02-C-004`; `OQ-P02-C-005`; `OQ-P02-C-006`; `OQ-P02-C-009`.
- **Description:** The ratified data-classification draft surfaces candidate classes (Class-1..14) and sensitivity levels (Level-Public, Level-Authority, Level-Evidence, Level-Untrusted, Level-Restricted, Level-Boundary) as candidates, not as the canonical ratified set. Default class for unclassified data, encryption-at-rest scope, cross-class aggregation, derived classification, and classification-change protocol remain open.
- **Trigger / Cause:** Discovery-phase intent to surface ambiguities without ratifying terminology.
- **Impact:** Downstream architecture/storage/control decisions cannot be made until classification is ratified; risk of inconsistent handling.
- **Current mitigation / guardrail:** Candidates are explicitly marked as candidates; open questions tracked under `OQ-P02-C-*`.
- **Needed Product Owner decision / future work:** Ratify canonical data-class set, default class, and classification-change protocol.
- **Owner / accountable authority:** Product Owner (`Rauf Alizada`).

### P02-RISK-017 — Ambiguous Project / Workspace Scoping

- **Risk ID:** `P02-RISK-017`.
- **Status:** Proposed; open.
- **Phase:** P02.
- **Source task:** `CONT-P02-ONB-001`.
- **Source decisions / open questions:** `DEC-P02-DOMAIN-DISCOVERY-001`; `OQ-P02-D-006`; `OQ-P02-C-003`.
- **Description:** The canonical noun for "the thing Continuum OS governs at the outer scope" (project, workspace, tenant, client engagement) is not ratified, and the relationship between repository, project, and tenant is undefined.
- **Trigger / Cause:** Domain discovery surfaced multi-tenancy noun ambiguity (OQ-P02-D-006) and left it open; client-data isolation requirement (OQ-P02-C-003) depends on it.
- **Impact:** Downstream isolation, registry, and authority rules cannot be ratified; risk of cross-client contamination (P02-RISK-011).
- **Current mitigation / guardrail:** Single-project-at-a-time operational discipline; OQ tracked explicitly.
- **Needed Product Owner decision / future work:** Ratify the outer-scope noun and its relationship to repository, identity, and authority.
- **Owner / accountable authority:** Product Owner (`Rauf Alizada`).

### P02-RISK-018 — P02 Open Questions Remaining Unresolved Before P03/P04

- **Risk ID:** `P02-RISK-018`.
- **Status:** Proposed; open.
- **Phase:** P02.
- **Source task:** `CONT-P02-ONB-001`.
- **Source decisions / open questions:** All 28 `OQ-P02-D-001..009`, `OQ-P02-S-001..009`, `OQ-P02-C-001..010` from open-questions projection commit `e0dba07e759bfded5e4f7bc1222f2b79c8a50a7f`; `DEC-P02-DOMAIN-DISCOVERY-001`; `DEC-P02-SECURITY-TRUST-REQUIREMENTS-001`; `DEC-P02-DATA-CLASSIFICATION-001`.
- **Description:** P03 architecture evaluation or P04 implementation-readiness work begins while one or more P02 open questions remain unresolved, locking architecture or implementation choices against ambiguous P02 vocabulary, trust boundaries, or data classification.
- **Trigger / Cause:** Pressure to start architecture; agent treating ratified P02 drafts as "complete" rather than "ratified-with-open-ambiguities"; closing P02 prematurely.
- **Impact:** Path-dependent architecture commitments locked against ambiguity; rework cost; potential need to rewind P03/P04 decisions.
- **Current mitigation / guardrail:** All 28 `OQ-P02-*` are recorded as `Open` with per-question metadata; ratified drafts explicitly mark candidate concepts as candidates; P03 not authorized.
- **Needed Product Owner decision / future work:** Decide whether each open question must be resolved, deferred with explicit acceptance, or migrated, before P02 closeout.
- **Owner / accountable authority:** Product Owner (`Rauf Alizada`).

### P02-RISK-019 — Deferred Token-Efficiency Sibling Work Becoming Unanchored

- **Risk ID:** `P02-RISK-019`.
- **Status:** Proposed; open.
- **Phase:** P02.
- **Source task:** `CONT-P02-ONB-001`.
- **Source decisions / open questions:** `DEC-P02-DISCOVERY-PLAN-002`; `DEC-P02-CONTEXT-SET-CLOSEOUT-001`.
- **Description:** Deferred token-efficiency sibling work (Reading Policy Table, tag vocabulary, baseline token-cost measurement method) is left without an anchoring plan or owner and is silently forgotten or implemented outside an approved gate.
- **Trigger / Cause:** Context-policy set closed under `DEC-P02-CONTEXT-SET-CLOSEOUT-001`; sibling work deferred under `DEC-P02-DISCOVERY-PLAN-002`; no separate sibling plan ratified yet.
- **Impact:** Token-efficiency goals partially realized; baseline measurement absent; future runtime-pack design lacks measured evidence.
- **Current mitigation / guardrail:** Deferred work explicitly enumerated in `DEC-P02-DISCOVERY-PLAN-002`; not deleted; tracked here.
- **Needed Product Owner decision / future work:** Decide whether deferred sibling work moves into a new approved sibling plan, into a later P02 deliverable, or into P03.
- **Owner / accountable authority:** Product Owner (`Rauf Alizada`).
