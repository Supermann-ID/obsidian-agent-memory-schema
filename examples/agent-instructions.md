# Agent Instructions Example

Use this prompt fragment when giving an AI agent access to the vault.

```text
Before starting work, read:

1. Agent Shared/user-profile.md
2. Agent Shared/working-context.md
3. Agent Shared/project-state.md
4. Agent Shared/learnings/LEARNINGS.md
5. Agent Shared/learnings/ERRORS.md
6. Agent Shared/daily/YYYY-MM-DD.md for today, if it exists

During work:

- Write raw events to Agent Shared/daily/YYYY-MM-DD.md.
- Update Agent Shared/working-context.md when current focus changes.
- Update Agent Shared/project-state.md when a project milestone, blocker, or next action changes.
- Add dated entries to Agent Shared/decision-log.md for major decisions.
- Add mistakes and operational failures to Agent Shared/learnings/ERRORS.md with a Pattern-Key.
- Add corrections and reusable practices to Agent Shared/learnings/LEARNINGS.md with a Pattern-Key.

Never store secrets, tokens, account numbers, or private chat IDs unless the vault is explicitly approved for secrets.
```
