# Testing And Validation Rules

Purpose: prevent unverified success claims.

Scope: unconditional, with extra care for `tests/**` and `.claude/hooks/tests/**`.

Rules:

- Run the smallest meaningful validation after changes.
- Do not claim success without validation evidence.
- Persist durable validation commands and outcomes in the canonical active task record.
- Temporary conversation output may supplement repository evidence but must not replace it.
- Test changes should cover the risk created by the change.
- Hook changes require syntax checks and fixture tests before activation.
- If a validation dependency is unavailable, record the limitation instead of installing automatically.
