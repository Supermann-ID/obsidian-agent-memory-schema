# Obsidian Agent Memory Schema

A lightweight Obsidian vault structure for AI agents that need durable memory, project state, decisions, and failure logs.

This repo is for people building personal agents, coding agents, research agents, or automation assistants that should remember important context without depending on chat history.

## Why This Exists

Agents restart. Context windows fill up. Chat history gets summarized. Important facts disappear unless the agent writes them somewhere durable.

Obsidian is a good fit because it is:

- plain Markdown
- local-first
- easy for humans to edit
- easy for agents to search and update
- compatible with Git

This schema gives agents a small, predictable memory system that stays readable to humans.

## Vault Layout

```text
Agent Shared/
  user-profile.md
  working-context.md
  project-state.md
  decision-log.md
  daily/
    YYYY-MM-DD.md
  learnings/
    LEARNINGS.md
    ERRORS.md
    FEATURE_REQUESTS.md
  schemas/
    memory-entry.schema.json
    project-state.schema.json
```

## Core Files

| File | Purpose |
| --- | --- |
| `user-profile.md` | Stable user preferences, timezone, working style, and durable facts |
| `working-context.md` | Current focus, active work, waiting items, and recent completions |
| `project-state.md` | Current state of projects in a structured, agent-readable format |
| `decision-log.md` | Dated decisions with rationale and impact |
| `daily/YYYY-MM-DD.md` | Raw daily work log and events |
| `learnings/LEARNINGS.md` | Corrections, best practices, and reusable lessons |
| `learnings/ERRORS.md` | Operational failures, fixes, and pattern keys |
| `learnings/FEATURE_REQUESTS.md` | Requests that need new tools, skills, or automation |

## Quick Start

Clone this repo:

```bash
git clone https://github.com/Supermann-ID/obsidian-agent-memory-schema.git
cd obsidian-agent-memory-schema
```

Copy the starter vault into your Obsidian vault:

```bash
cp -R templates/Agent\\ Shared /path/to/your/obsidian-vault/
```

Validate the JSON schemas and example data:

```bash
bash scripts/validate.sh
```

Give your agent the prompt in `examples/agent-instructions.md`.

## Memory Discipline

Use the files this way:

1. Write raw events to `daily/YYYY-MM-DD.md`.
2. Promote durable facts to `user-profile.md` or `working-context.md`.
3. Log mistakes to `learnings/ERRORS.md`.
4. Log corrections and reusable practices to `learnings/LEARNINGS.md`.
5. Log major project decisions to `decision-log.md`.
6. Keep private secrets out of the vault unless the vault is explicitly secured for that purpose.

## Pattern Keys

Errors and learnings should include a stable `Pattern-Key`, such as:

```text
integration.calendar.local-permission-blocked
correction.battery-monitor-calibration
tooling.json-validation-before-cron
```

Pattern keys make it easier for future agents to recognize repeated failure modes.

## What This Is Not

- Not a vector database.
- Not a full personal knowledge management system.
- Not a secret store.
- Not a replacement for judgment about what should be remembered.

It is a small, boring, durable shared memory layer for human-agent collaboration.

## License

MIT.
