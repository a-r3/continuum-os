# Architecture Rules

Purpose: prevent premature architecture decisions while allowing approved architecture work in the correct phase.

Scope: unconditional.

Rules:

- Product and domain discovery occur only in approved P01/P02 work.
- Architecture evaluation, tradeoff analysis, technical spikes, recommendations, and ADR preparation occur only in approved P03 tasks.
- Architecture recommendations may be proposed during P03, but only the Product Owner may ratify architecture decisions.
- Do not select a programming language, package manager, framework, database, deployment platform, or monorepo tool without a Product Owner-ratified architecture decision.
- Reserved runtime directories are boundaries only until architecture work is ratified.
- P04 is the implementation-readiness gate.
- Implementation is prohibited until an explicit Product Owner-ratified P04 GO decision.
