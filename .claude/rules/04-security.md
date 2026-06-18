# Security Rules

Purpose: protect secrets, local data, and governance integrity.

Scope: unconditional.

Rules:

- Never store secret values in project memory, governance, `.continuum/`, docs, tasks, logs, or examples.
- Secret references may identify an external secret-management location, but not the secret value.
- Escalate before destructive commands, external access, credential handling, or writes outside project scope.
- Do not read `.env`, `.env.*`, `.claude/settings.local.json`, `CLAUDE.local.md`, or `secrets/**`.
- Claude permission rules govern Claude tools. They are not complete OS-level isolation against arbitrary subprocess file access.
- Hooks are an additional policy layer. Optional sandboxing is a separate enforcement layer.
- Do not represent any single layer as complete secret isolation.
- Client isolation, privacy, and trust boundaries are security concerns even before implementation.
- Security rules are advisory here; technical enforcement lives in settings and activated hooks.
