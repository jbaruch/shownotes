---
layout: talk
---

# Engineering Context So AI Stops Guessing

**Conference:** BaselOne 2026
**Date:** 2026-10-15
**Slides:** [View Slides](https://drive.google.com/file/d/1uwSElspATMPy6cIdQ7bmA8JxDZAKkuoO/preview)
**Video:** [View Video](https://www.youtube.com/watch?v=c-NNUqZLbAo)

A presentation at BaselOne 2026 in October 2026 in Basel, Switzerland by {{ site.speaker.display_name | default: site.speaker.name }}

## Abstract

Congratulations: you're the CTO now. As agents take on implementation and review, your job becomes deciding what they know, how they challenge the work, and which questions must return to you. This talk follows the journey from manual coding and review to a software factory, introducing three kinds of context along the way: working practices, architecture, and organizational knowledge. Rules, skills, hooks, explicit review responsibilities, and agent coordination make that knowledge usable. Categorization helps direct human attention, while evidence and targeted questions keep delegation accountable. You leave with three takeaways and five concrete things to do on Monday morning.

## Resources

### Port: organizational context beyond the repository

**Port's Context Lake** connects engineering records with ownership, dependencies, and business context. In this talk, it supplies the facts a repository cannot tell an agent: who is affected, what commitments matter, and where to find the source behind a decision.

- [Port Context Lake overview](https://docs.port.io/context-lake/overview/) — structured entities, relationships, and organizational knowledge.
- [Port MCP server](https://docs.port.io/context-lake/consuming-the-lake/port-mcp-server/) — give external agents access to that context.
- [How to design context for your AI software factory](https://www.port.io/blog/design-context-ai-software-factory) — Michael Douglas on modeling relationships, keeping operational facts fresh, preserving decision history, and assigning ownership. Useful for turning organizational context into something agents can actually query.
- [How to Manage Agents and Skills in Your Software Factory](https://www.port.io/blog/manage-ai-agents-skills-software-factory) — Pavan Belagatti on agent inventories, skill versions, permissions, evaluations, and traceable runs. Delegating the work creates management work of its own.
- [How SPS Commerce built an AI Software Factory on Port](https://www.port.io/blog/sps-commerce-ai-software-factory) — a concrete ticket-to-plan-to-PR workflow using shared context and orchestration. Developers approve the plan and review the PR before merge: a useful intermediate stage on the talk's journey.

### Software factories: what teams have actually tried

- [Software Factories And The Agentic Moment](https://factory.strongdm.ai/) — StrongDM CTO Justin McCarthy's account of agents implementing specifications without human code review. The important engineering detail is the validation system: external scenarios, feedback loops, and behavioral replicas of dependencies.
- [How StrongDM's AI team build serious software without even looking at the code](https://simonwillison.net/2026/Feb/7/software-factory/) — Simon Willison's report after meeting the team and seeing its work. Read alongside StrongDM's account for the practical question underneath the factory metaphor: how do you establish that the output works?
- [Harness engineering: leveraging Codex in an agent-first world](https://openai.com/index/harness-engineering/) — OpenAI's account of building an internal product with agent-written code. The human work moves toward repository structure, legible instructions, architectural constraints, and feedback mechanisms. A reported team experiment, rather than a timetable for every developer.

### Practitioners on the changing job

- [Andrej Karpathy: 2025 LLM Year in Review](https://karpathy.bearblog.dev/year-in-review-2025/) — describes an emerging application layer that manages context, orchestrates model calls, and chooses how much autonomy to allow. A useful explanation of why using agents creates engineering work beyond prompting.
- [Karpathy on a profession being refactored](https://x.com/karpathy/status/2004607146781278521) — his December 2025 post about feeling behind as programming changes. The personal urgency echoes the talk's opening promotion; it is a perspective on the transition, not a deadline for everyone to stop coding.
- [Boris Cherny: how I use Claude Code](https://x.com/bcherny/status/2007179832300581177) — the January 2026 thread covers parallel sessions, a shared version-controlled CLAUDE.md, reusable commands, specialist subagents, and formatting hooks. Concrete examples of turning repeated corrections into instructions and repeatable workflows.
- [Cherny on giving the agent a way to verify its work](https://x.com/bcherny/status/2007179861115511237) — the thread's closing technical advice: build a feedback loop that lets the agent check its result. This supports the talk's local review loop and demand for evidence behind an approval.
- [Effective context engineering for AI agents](https://www.anthropic.com/engineering/effective-context-engineering-for-ai-agents) — Anthropic's engineering guide to selecting relevant context, retrieving it when needed, and maintaining it over long tasks. Context engineering means curating the right information, rather than feeding every agent every document.

### Working practices: rules, skills, and hooks

- [jbaruch/coding-policy](https://github.com/jbaruch/coding-policy) — the talk's concrete example of packaging expectations, procedures, and checks for implementation and review.
- [Tessl Registry](https://tessl.io/registry) — discover and distribute reusable agent skills and plugins. Relevant when useful context needs to become a versioned package that other agents and projects can consume.
- [Tessl documentation](https://docs.tessl.io/) — the context lifecycle: building, evaluating, distributing, and improving the context supplied to coding agents.
- [Agentic Context Registry (ACR)](https://github.com/jbaruch/agentic-context-registry) — a GitHub-native package manager for rules, skills, scripts, and hooks. It materializes packages into the files Claude Code, Codex, and Cursor read, with locked release, commit, and content-hash information. Currently pre-alpha.
- [Author an ACR context plugin](https://github.com/jbaruch/agentic-context-registry/blob/main/docs/plugin-authoring.md) — how an agent-plugin.yaml manifest packages existing instructions and supporting files for reuse. A concrete next step for treating working practices as maintained artifacts.

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
