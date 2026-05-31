# Design Notes

This schema is intentionally small. The goal is not to turn an agent into a historian. The goal is to keep the context that changes future behavior.

## Why Markdown First

Markdown stays useful even if every tool changes. A human can open the vault, edit a note, and understand what the agent believes.

JSON schemas are included for structured examples, but the working memory files are Markdown because human readability matters more than perfect machine structure.

## Daily Notes vs Long-Term Memory

Daily notes are raw logs. They can be noisy.

Long-term files should be curated:

- `user-profile.md` for stable user preferences and durable facts
- `working-context.md` for what matters now
- `project-state.md` for project summaries and next actions
- `decision-log.md` for decisions that should not be rediscovered
- `LEARNINGS.md` for corrections and reusable practices
- `ERRORS.md` for failure modes and fixes

## Promotion Rule

Do not promote every daily entry to long-term memory.

Promote only when the item is likely to matter later:

- a stable preference
- a repeated failure mode
- a project milestone
- a decision with consequences
- a tool or environment change
- a correction that prevents future mistakes

## Privacy Rule

This schema is not a secret store. Keep tokens, account numbers, private chat IDs, and sensitive credentials somewhere purpose-built for secrets.
