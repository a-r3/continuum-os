# Claude Hooks

These hooks are created for P00 validation but are not registered in `.claude/settings.json` during Gate B.

Activation requires:

1. syntax validation;
2. isolated fixture tests;
3. false-positive review;
4. Product Owner approval;
5. explicit registration in Claude settings.

Hooks must not access secrets, install packages, use the network, or operate outside the project path.

The shell-command blocker has a bounded threat model. It recognizes common destructive command classes and wrappers, but it does not claim to parse arbitrary shell language completely. Residual shell-obfuscation risk is handled through review, permissions, sandboxing where available, and Product Owner approval gates.
