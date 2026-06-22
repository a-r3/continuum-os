---
document_status: PROPOSED_INACTIVE
ratification_status: NOT_RATIFIED
source_task: CONT-P02-ONB-001
source_plan: P02-DISCOVERY-PLAN-002
source_decision: DEC-P02-DISCOVERY-PLAN-002
related_domain_discovery: DEC-P02-DOMAIN-DISCOVERY-001
related_security_trust_requirements: DEC-P02-SECURITY-TRUST-REQUIREMENTS-001
product_owner: Rauf Alizada
---

# P02 Data Classification and Sensitive Boundary Analysis Draft

## Status and Authority

- document_status: `PROPOSED_INACTIVE`.
- ratification_status: `NOT_RATIFIED`.
- This draft is a Product Owner-review candidate. It does not ratify, define, or amend any data classification rule, sensitivity level, handling requirement, risk, open question, or registry entry.
- Authority remains with the Product Owner `Rauf Alizada` as sole ratification authority. The spellings `Raauf Alizada` and the identity `Tural Rahmanli` are not valid project authorities.
- Source basis is the approved `P02 Discovery Plan 002` under `DEC-P02-DISCOVERY-PLAN-002`, drafted within `CONT-P02-ONB-001`, with related domain discovery context from `DEC-P02-DOMAIN-DISCOVERY-001` and related security/trust requirements context from `DEC-P02-SECURITY-TRUST-REQUIREMENTS-001`.
- No content in this draft selects implementation, hook code, adapter implementation, database/schema/storage, dependencies, settings, license, or project code.

## Purpose

- Surface candidate **data classes**, **sensitivity levels**, and **handling boundaries** that Continuum OS must reason about at the governance level, so secrets, identity, authority, evidence, generated context, repository scope, and external/client data are not conflated.
- Provide a structured input for Product Owner review so subsequent governance work (open-questions projection, risk-register projection, future hook-activation gates, future secrets/evidence policies) has an explicit, scoped starting point.
- Keep all output at the governance/data-classification level only. No code, hook implementation, adapter rule change, schema, storage layout, dependency, or runtime interface is proposed.

## Source Basis

Read-only inputs consulted while drafting:

- `governance/P02_DOMAIN_DISCOVERY_DRAFT.md` — ratified candidate domain concepts and authority-sensitive concepts under `DEC-P02-DOMAIN-DISCOVERY-001`.
- `governance/P02_SECURITY_TRUST_REQUIREMENTS_DRAFT.md` — ratified candidate security/trust requirements under `DEC-P02-SECURITY-TRUST-REQUIREMENTS-001`.
- `governance/PRODUCT_CHARTER.md` — product scope, non-scope, authority, v1 boundaries.
- `governance/GLOSSARY.md` — ratified terminology.
- `governance/TRUST_BOUNDARIES.md` — ratified trust separation between Product Owner, governance, adapter rules, hooks, runtime/generated content.
- `governance/NEVER_AUTOMATIC.md` — never-automatic guardrail surface.
- `governance/CHANGE_PROTOCOL.md` — lifecycle, approval-verb discipline, active-task invariant.
- `governance/DECISION_LOG.md` — provenance pattern and ratified decisions.
- `governance/tasks/CONT-P02-ONB-001.md` — single active task and approved plans.
- `governance/HANDOFF.md` — current handoff state.

This draft does not add to or modify these sources.

## Classification Boundary

- In scope (governance-level only): candidate data classes, candidate sensitivity levels, candidate handling boundaries, and candidate handling requirements at the level of authority data, identity data, evidence data, generated context, secrets, repository scope, and external/client data.
- Out of scope (this draft): any implementation, hook code, adapter rule, storage layout, schema, encryption mechanism, sandbox, CI rule, classification engine, or runtime data flow.
- Out of scope (this draft): final classification labels or final handling policy. All labels below are candidate labels for Product Owner review.

## Candidate Data Classes

Candidate data classes (Product Owner review pending). Each is a logical grouping at the governance/data-classification level; none is a final classification.

- candidate data class (Class-1): **Public governance text** — ratified governance documents, decision IDs, ratified scope notes, and Product Owner-approved text intended to be visible in the repository and to all agents.
- candidate data class (Class-2): **Canonical governance authority data** — frontmatter authority fields, ratification status, ratification decision IDs, approval verbs, active-task state, gate state, and phase state encoded in `governance/PROJECT_STATE.md`, `governance/CURRENT_PHASE.md`, `governance/ACTIVE_TASK.md`, ratified governance documents, and `governance/DECISION_LOG.md`.
- candidate data class (Class-3): **Product Owner identity and authority data** — the canonical Product Owner identity `Rauf Alizada` and the authority claims attached to it.
- candidate data class (Class-4): **Invalid identity / spelling data** — the names `Raauf Alizada` (misspelling) and `Tural Rahmanli` (non-participant identity), and any Git committer/environment metadata incidentally carrying those strings; treated as never-authority data.
- candidate data class (Class-5): **Governance evidence and provenance data** — commit SHAs, diff paths, fixture pass/fail counts, validation outputs, task-evidence sections, handoff entries, and session-log entries that anchor ratified decisions.
- candidate data class (Class-6): **Chat/session-derived evidence** — agent conversation history, hidden auto-memory, model-trained beliefs, and transient session output; treated as non-canonical evidence.
- candidate data class (Class-7): **Generated context** — future `.continuum/RUNTIME_CONTEXT.md`, `.continuum/context-index.yaml`, `.continuum/context-budget.yaml`, `.continuum/context-freshness.yaml`, `.continuum/token-audit.md`, and any other derived/projected context content.
- candidate data class (Class-8): **Stale generated context** — generated context whose source SHA, freshness metadata, or content has fallen out of sync with canonical governance.
- candidate data class (Class-9): **Secrets and credentials** — API keys, tokens, passwords, cryptographic keys, OAuth credentials, session tokens, signing keys, and any credential values.
- candidate data class (Class-10): **Secret-bearing local files** — `.env`, `.env.*`, `.claude/settings.local.json`, `CLAUDE.local.md`, and any file under `secrets/**`.
- candidate data class (Class-11): **Client / external / private data** — any data about external parties, clients, end users, or third parties that may be touched by future Continuum OS work.
- candidate data class (Class-12): **Path leak and local environment metadata** — absolute filesystem paths, machine names, OS users, environment variable contents, and other host-specific metadata that may leak through tool output or commit metadata.
- candidate data class (Class-13): **Destructive-command evidence** — records of destructive Git commands, history rewrites, force pushes, branch deletions, or destructive shell commands and their approvals.
- candidate data class (Class-14): **Repository file-scope data** — file paths, allowlists, and directory boundaries that define which parts of the repository are in scope for a given approval verb.

## Candidate Sensitivity Levels

Candidate sensitivity levels (Product Owner review pending). Levels are governance-level labels only; they do not select encryption, storage, or runtime mechanisms.

- candidate sensitivity level (Level-Public): content intended to live in the repository and be visible to all agents and reviewers (e.g. Class-1, parts of Class-2, parts of Class-5, parts of Class-14).
- candidate sensitivity level (Level-Authority): content that encodes Product Owner authority, ratification, or canonical state and must not be modified outside an approved approval verb (e.g. Class-2, Class-3, parts of Class-5).
- candidate sensitivity level (Level-Evidence): content that anchors decisions and must remain append-only, accurate, and unforgeable in practice (e.g. Class-5, parts of Class-13).
- candidate sensitivity level (Level-Untrusted): content that exists but must not be treated as canonical authority (e.g. Class-4, Class-6, Class-8, Class-12 when used as authority).
- candidate sensitivity level (Level-Restricted): content that must not enter the repository or governance in raw form and must be referenced only (e.g. Class-9, Class-10, Class-11 when private).
- candidate sensitivity level (Level-Boundary): content that defines scope, allowlists, or trust separation and must be respected by every mutating action (e.g. Class-14, parts of Class-2).

No data class is bound to a final sensitivity level by this draft. Mapping each class to a binding sensitivity level requires a separately approved Product Owner verb.

## Secret and Credential Boundaries

Candidate handling boundaries for Class-9 (Secrets and credentials) and Class-10 (Secret-bearing local files):

- candidate boundary (Secret-Bound-1): no secret value (API key, token, password, cryptographic key, OAuth credential, session token) may appear in any repository file, governance document, task record, decision log, session log, handoff, evidence file, `.continuum/`, commit message, or conversation that ends up persisted.
- candidate boundary (Secret-Bound-2): only secret **references** identifying an external secret-management location are permitted; the value itself must never enter the repository.
- candidate boundary (Secret-Bound-3): `.env`, `.env.*`, `.claude/settings.local.json`, `CLAUDE.local.md`, and `secrets/**` must never be read, summarized, paraphrased, embedded, or otherwise propagated by an agent into any repository artifact, governance document, task evidence, commit metadata, or persisted conversation.
- candidate boundary (Secret-Bound-4): no single layer (Claude permissions, hooks, OS sandboxing) may be represented as complete secret isolation; layered controls must be documented as layered, not absolute.
- candidate boundary (Secret-Bound-5): suspected secret leakage must trigger an escalation to the Product Owner; no silent redaction or silent commit may be used to attempt to hide a leak.

## Identity and Authority Data Boundaries

Candidate handling boundaries for Class-3 (Product Owner identity and authority data) and Class-4 (Invalid identity / spelling data):

- candidate boundary (Identity-Bound-1): only `Rauf Alizada` is encoded as Product Owner / sole ratification authority in any frontmatter, body, evidence, decision, registry, handoff, or session-log entry.
- candidate boundary (Identity-Bound-2): the spelling `Raauf Alizada` and the identity `Tural Rahmanli` are never written into project-authority fields and never described as project authority anywhere in the repository.
- candidate boundary (Identity-Bound-3): Git committer metadata, environment metadata, and hidden agent memory are explicitly not project identity; their incidental appearance must never promote an identity into project authority.
- candidate boundary (Identity-Bound-4): authority claims must be backed by a `DEC-*` row and provenance block in `governance/DECISION_LOG.md`; an identity claim that lacks a ratified decision is not authority.
- candidate boundary (Identity-Bound-5): no v1 cryptographic identity, signing key, or external IdP is introduced for Product Owner authority; the encoded identity remains a literal string.

## Governance Evidence Data Boundaries

Candidate handling boundaries for Class-5 (Governance evidence and provenance data) and Class-13 (Destructive-command evidence):

- candidate boundary (Evidence-Bound-1): commit SHAs, diff paths, validation outputs, fixture counts, and task-evidence sections are append-only evidence; existing evidence rows must not be rewritten to alter ratification meaning.
- candidate boundary (Evidence-Bound-2): every ratification decision must have a `DEC-*` row and a `## DEC-*` provenance block in `governance/DECISION_LOG.md` with `decision_id`, `status`, `decision`, `ratified_by`, `ratified_at`, `source_task`, `drafted_by`, `reviewed_by`, `evidence`, and `scope_note`.
- candidate boundary (Evidence-Bound-3): transient export files (e.g. `/tmp/*.diff`), chat output, and unsigned external statements are not canonical evidence and must not be referenced as ratification authority.
- candidate boundary (Evidence-Bound-4): destructive-command evidence must record the exact command, scope, approval verb, expected consequence, and rollback or recovery implication.
- candidate boundary (Evidence-Bound-5): commit metadata (author/committer) is not authority; the Product Owner identity that authorized a decision is encoded in the decision block, not inferred from Git author or environment metadata.
- candidate boundary (Evidence-Bound-6): Class-6 (chat/session-derived evidence) is treated as supplementary, not canonical; it must not be cited as ratification authority that lacks a corresponding `DEC-*` record.

## Generated Context Data Boundaries

Candidate handling boundaries for Class-7 (Generated context) and Class-8 (Stale generated context), subordinate to ratified `governance/CONTEXT_POLICY.md`, `governance/CONTEXT_BUDGET.md`, and `governance/CONTEXT_RETRIEVAL_PROTOCOL.md`:

- candidate boundary (Context-Bound-1): canonical governance always wins over generated/derived context on any conflict; stale or contradictory generated context must be ignored in favor of canonical sources.
- candidate boundary (Context-Bound-2): no runtime context pack (`.continuum/RUNTIME_CONTEXT.md`, `.continuum/context-index.yaml`, `.continuum/context-budget.yaml`, `.continuum/context-freshness.yaml`, `.continuum/token-audit.md`) may be generated until a separately approved Product Owner gate authorizes generation; generation must be observable and reversible.
- candidate boundary (Context-Bound-3): generated context, when later authorized, must declare its source commit SHA, generation timestamp, and freshness policy so staleness is detectable.
- candidate boundary (Context-Bound-4): on detection of stale generated context (Class-8 — source SHA mismatch, missing freshness metadata, contradictory canonical content), generated context must be ignored in favor of canonical sources and an escalation must be raised.
- candidate boundary (Context-Bound-5): generated context must not encode Product Owner ratification authority or approval verbs; it may at most reference them.

## Repository and File-Scope Boundaries

Candidate handling boundaries for Class-14 (Repository file-scope data):

- candidate boundary (Scope-Bound-1): every mutating action must operate inside an explicit file allowlist named by the current approval verb; files outside the allowlist must not be modified, staged, committed, or pushed.
- candidate boundary (Scope-Bound-2): reserved directories (`governance/`, `docs/`, `.claude/` subject to its own rules, `.continuum/` boundary-only until ratified) are boundary surfaces; creating, deleting, or moving files inside them requires an approval verb that names the scope.
- candidate boundary (Scope-Bound-3): adapter rules (`CLAUDE.md`, `AGENTS.md`, `.claude/rules/`), hooks (`.claude/hooks/**`), settings (`.claude/settings.json`, `.claude/settings.local.example.json`), and license/dependency/project-code files are out of scope for any non-architecture, non-implementation approval verb and must remain unchanged unless a ratified P03/P04 gate authorizes change.
- candidate boundary (Scope-Bound-4): paths outside the repository root must not be written by approval-verb work; reads outside the repository root require explicit Product Owner approval that names the location and reason.
- candidate boundary (Scope-Bound-5): file allowlist enforcement is a per-verb concern; no global file allowlist supersedes the verb-scoped allowlist.

## External and Client Data Boundaries

Candidate handling boundaries for Class-11 (Client / external / private data) and Class-12 (Path leak and local environment metadata):

- candidate boundary (External-Bound-1): no client/end-user/third-party private data is committed to the repository or governance in raw form; references and abstracted descriptions are permitted only when explicitly approved by the Product Owner with named scope.
- candidate boundary (External-Bound-2): cross-client privacy isolation must be maintained: data, prompts, instructions, or generated content from one client/workspace context must not be exposed into another without explicit Product Owner authorization.
- candidate boundary (External-Bound-3): local environment metadata (absolute paths, OS user, machine name, environment variable contents) must not be embedded into governance, task evidence, decision logs, or commit messages unless the path is repository-relative or the environment value is explicitly part of the project (e.g. ratified governance reference).
- candidate boundary (External-Bound-4): external network access, third-party API calls, and credential-handling steps must be escalated to the Product Owner before execution; their evidence (when run under approval) must redact secret values and abstract sensitive external identifiers.
- candidate boundary (External-Bound-5): privacy-sensitive content about external parties must not be normalized into glossary, charter, registry, or decision-log entries without an explicit Product Owner approval that names the content and scope.

## Candidate Handling Requirements

Consolidated candidate handling requirement labels for Product Owner review (each cross-references the section above where its content lives):

- Class-1 (Public governance text) → Level-Public; no special handling beyond standard governance rules.
- Class-2 (Canonical governance authority data) → Level-Authority + Level-Boundary; mutated only under named approval verbs.
- Class-3 (Product Owner identity and authority data) → Level-Authority; encoded only via Identity-Bound-1..5.
- Class-4 (Invalid identity / spelling data) → Level-Untrusted; never written as authority per Identity-Bound-2..3 and Agent-8 (security/trust draft).
- Class-5 (Governance evidence and provenance data) → Level-Evidence; append-only per Evidence-Bound-1..6.
- Class-6 (Chat/session-derived evidence) → Level-Untrusted; never canonical authority per Evidence-Bound-6.
- Class-7 (Generated context) → Level-Untrusted relative to canonical; managed per Context-Bound-1..5.
- Class-8 (Stale generated context) → Level-Untrusted; ignored in favor of canonical sources per Context-Bound-1, Context-Bound-4.
- Class-9 (Secrets and credentials) → Level-Restricted; handled per Secret-Bound-1..5.
- Class-10 (Secret-bearing local files) → Level-Restricted; never read, staged, committed, or paraphrased per Secret-Bound-3.
- Class-11 (Client / external / private data) → Level-Restricted by default; per External-Bound-1, External-Bound-2, External-Bound-5.
- Class-12 (Path leak and local environment metadata) → Level-Untrusted; redacted/abstracted per External-Bound-3.
- Class-13 (Destructive-command evidence) → Level-Evidence + Level-Authority; recorded per Evidence-Bound-4, never executed without explicit Product Owner approval that names the exact command.
- Class-14 (Repository file-scope data) → Level-Boundary; enforced per Scope-Bound-1..5.

No candidate handling requirement is final; each requires Product Owner ratification before being treated as binding policy. No implementation, hook, adapter rule, or storage mechanism is authorized by this draft.

## Ambiguities for Product Owner Review

The following ambiguities are surfaced for Product Owner review only. They are not resolved here, and no `OPEN_QUESTIONS.md` rows are created in this draft.

- ambiguity: Which of these candidate data classes and sensitivity levels should be ratified as canonical classification labels in P02, and which should be deferred to P03/P04?
- ambiguity: Should sensitivity levels become a standalone `SENSITIVITY_LEVELS.md` document or remain inside this draft until a future split?
- ambiguity: Should secret-handling boundaries (Secret-Bound-1..5) be promoted into a dedicated `SECRETS_POLICY.md`, kept inside `TRUST_BOUNDARIES.md` / the security-trust draft, or remain here?
- ambiguity: Should generated-context boundaries (Context-Bound-1..5) be folded into the ratified `CONTEXT_POLICY.md` / `CONTEXT_RETRIEVAL_PROTOCOL.md`, or remain a separate classification concern?
- ambiguity: How should client / external / private data isolation be expressed at v1, given no multi-tenant runtime exists yet?
- ambiguity: Should destructive-command evidence (Class-13) be encoded as a standalone `GIT_SAFETY.md` / destructive-command log, or remain inside this draft and `TRUST_BOUNDARIES.md`?
- ambiguity: Should path-leak and local-environment-metadata boundaries (External-Bound-3) become an explicit redaction policy, or remain a candidate handling requirement?
- ambiguity: Which classes should produce `RISK_REGISTER.md` rows under a separately approved update, and which remain candidate-only?
- ambiguity: How are these handling requirements measured/validated at the governance level before any hooks are activated?
- ambiguity: Should the mapping from data class to sensitivity level be encoded as a normative table in a future ratified document, or remain a candidate mapping here?

These ambiguities require Product Owner review. No resolution is implied by this draft.

## Non-Scope

This draft does **not**:

- ratify any candidate data class, sensitivity level, or handling boundary;
- create binding classification policy;
- design hook code, hook activation logic, or hook fixture content;
- design adapter rule changes or settings changes;
- design database schema, storage layout, encryption mechanism, or runtime interface;
- select architecture, language, framework, dependency, or deployment posture;
- modify `governance/GLOSSARY.md`, `governance/OPEN_QUESTIONS.md`, `governance/RISK_REGISTER.md`, `governance/ROADMAP.md`, `governance/DOCUMENT_REGISTRY.md`, or `governance/DECISION_LOG.md`;
- create, update, or generate any runtime context pack;
- close any phase, gate, or task;
- change the single-active-task invariant;
- introduce any new authority, role, or identity;
- create license, dependency, or project-code content;
- redact, normalize, or rewrite any existing governance evidence.

## Review Checklist

For Product Owner review:

- [ ] Candidate data classes (Class-1..14) cover authority data, identity data, evidence data, generated context, secrets, repository scope, and external/client data without conflation.
- [ ] Candidate sensitivity levels (Level-Public / Level-Authority / Level-Evidence / Level-Untrusted / Level-Restricted / Level-Boundary) are useful governance-level labels.
- [ ] Secret and credential boundaries (Secret-Bound-1..5) correctly prohibit secret values in the repository and limit references to external secret managers.
- [ ] Identity and authority data boundaries (Identity-Bound-1..5) correctly protect `Rauf Alizada` as sole ratifier and reject invalid identities/spellings.
- [ ] Governance evidence boundaries (Evidence-Bound-1..6) correctly require `DEC-*` rows + provenance blocks, append-only evidence, and reject chat-only authority.
- [ ] Generated context boundaries (Context-Bound-1..5) correctly subordinate generated context to canonical governance and define staleness behavior.
- [ ] Repository and file-scope boundaries (Scope-Bound-1..5) correctly express verb-scoped allowlist enforcement and adapter/hook/settings out-of-scope rules.
- [ ] External and client data boundaries (External-Bound-1..5) correctly handle cross-client privacy, path-leak metadata, and external/network escalation.
- [ ] Candidate handling requirements map data classes to sensitivity levels at the governance level only, without binding policy.
- [ ] Ambiguities for Product Owner review are stated as ambiguities, not as resolutions.
- [ ] Non-Scope correctly excludes binding policy, implementation, hook/adapter code, schema, dependencies, settings, license, and project code.
- [ ] No change is requested to `OPEN_QUESTIONS.md`, `RISK_REGISTER.md`, `ROADMAP.md`, `DOCUMENT_REGISTRY.md`, or `DECISION_LOG.md` by this draft.
- [ ] P02 remains active and `CONT-P02-ONB-001` remains the single active task.
- [ ] No runtime context pack has been generated.
