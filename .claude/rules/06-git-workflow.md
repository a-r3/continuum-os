# Git Workflow Rules

Purpose: protect repository history and approval gates.

Scope: unconditional.

Rules:

- Do not commit, amend, rewrite history, or push without explicit Product Owner approval for the relevant gate.
- Show status, diff, validation output, and proposed commit message before commit approval.
- Never run destructive Git commands such as `git reset --hard`, `git clean -fd`, or force push without explicit approval.
- Destructive Git approval must identify the exact command, scope, reason, expected consequence, and rollback or recovery implication.
- Preserve unrelated user changes.
- No gate approval implies approval of a later gate.
