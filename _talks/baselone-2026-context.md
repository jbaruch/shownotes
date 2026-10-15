---
layout: talk
---

# Engineering Context So AI Stops Guessing

**Conference:** BaselOne 2026
**Date:** 2026-10-15
**Slides:** [View Slides](https://drive.google.com/file/d/1uwSElspATMPy6cIdQ7bmA8JxDZAKkuoO/preview)

A presentation at BaselOne 2026 in October 2026 in Basel, Switzerland by {{ site.speaker.display_name | default: site.speaker.name }}

## Abstract

Congratulations: you're the CTO now. As agents take on implementation and review, your job becomes deciding what they know, how they challenge the work, and which questions must return to you. This talk follows the journey from manual coding and review to a software factory, introducing three kinds of context along the way: working practices, architecture, and organizational knowledge. Rules, skills, hooks, explicit review responsibilities, and agent coordination make that knowledge usable. Categorization helps direct human attention, while evidence and targeted questions keep delegation accountable. You leave with three takeaways and five concrete things to do on Monday morning.

## Resources

### Port: organizational context beyond the repository

**Port's Context Lake** connects engineering records with ownership, dependencies, and business context. In this talk, it supplies the facts a repository cannot tell an agent: who is affected, what commitments matter, and where to find the source behind a decision.

- [Port Context Lake overview](https://docs.port.io/context-lake/overview/) — structured entities, relationships, and organizational knowledge.
- [Port MCP server](https://docs.port.io/context-lake/consuming-the-lake/port-mcp-server/) — give external agents access to that context.

### Working practices: rules, skills, and hooks

- [jbaruch/coding-policy](https://github.com/jbaruch/coding-policy) — the talk's concrete example of packaging expectations, procedures, and checks for implementation and review.

### Agent coordination

- [Herdr](https://herdr.dev/) — the environment used to illustrate a growing team of coding agents.
- [Herdr documentation](https://herdr.dev/docs/) — sessions, agent states, CLI, and socket API. The factory in the slides is a conceptual illustration.

### Jev: route human attention

- [TypeSafe Choice](https://docs.typesafe.ai/primitives/choice) — bounded categories, structured answers, and confidence information.
- [Jev models, pricing, and context limits](https://docs.typesafe.ai/models) — the source for the talk's illustrative input-cost calculation: 1,000 PRs × 20,000 total input tokens = 20 million tokens; at $0.042 per million, $0.84. This excludes retries, extra chunks, review models, and operations; it is not a PR-classification accuracy benchmark.
- [Jev with coding agents](https://docs.typesafe.ai/introduction/coding-agents) — how a structured decision model fits beside an LLM-based coding agent.

### Keep from the talk

Three takeaways: give agents the context, give reviewers a job, and define when humans step in.

Five things for Monday morning:

1. Capture one recurring correction as a rule, procedure, or check.
2. Document one architectural constraint and why it exists.
3. Connect one organizational source your agents currently lack.
4. Give reviewers explicit responsibilities.
5. Define which decisions need a person, try those criteria on past changes, and inspect the misses.
