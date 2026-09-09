---
layout: talk
---

# Codepocalypse Now: LangChain4j vs JetBrains Koog

**Conference:** IntelliJ IDEA Conf 2026
**Date:** 2026-09-08
**Slides:** [View Slides](https://speaking.gamov.io/sUTmZl/codepocalypse-now-langchain4j-vs-koog)
**Video:** [View Video](https://www.youtube.com/watch?v=BMCbNltyyxM)

A presentation at IntelliJ IDEA Conf 2026, streamed online in September 2026, by
{{ site.speaker.display_name | default: site.speaker.name }} and Viktor Gamov.

## Abstract

Two frameworks, two presenters, one increasingly capable assistant. Baruch Sadogursky and Viktor Gamov build j-claw live in JetBrains Koog and LangChain4j Agentic, using an urgent corporate problem as the demo: getting out of mandatory AI training. Across four rounds, a chatbot gains tools through MCP, persistent memory, reusable skills that turn corporate-speak up to eleven, and a typed workflow with a critic and a refinement loop. Along the way, Gemini, Claude, and Codex take different roles, and agent traces make the workflow visible. Both frameworks can get the job done; the hard part is modeling the work, giving the agent the right context, and ensuring that a rejected draft cannot slip through to delivery.

## Resources

### Demo code

- [j-claw — Koog implementation (round4; explore round1–round4 branches)](https://github.com/jbaruch/jclaw-demo/tree/round4)
- [j-claw — LangChain4j Agentic implementation (Viktor Gamov; round1–round4 branches)](https://github.com/gAmUssA/jclaw-ideaconf-2026)
- [Koog demo runbook — setup, rounds, prompts, and Langfuse](https://github.com/jbaruch/jclaw-demo/blob/round4/RUNBOOK.md)
- [LangChain4j demo runbook — setup and live-demo flow](https://github.com/gAmUssA/jclaw-ideaconf-2026/blob/main/RUNBOOK.md)

### Typed model code

- [Typed Codex adapter — adding structured responses](https://github.com/jbaruch/jclaw-demo/blob/round4/app/src/main/kotlin/jclaw/TypedCodex.kt)
- [Typed Claude and Codex loading — the factory comparison](https://github.com/jbaruch/jclaw-demo/blob/round4/app/src/main/kotlin/jclaw/CliCritic.kt)

### Frameworks, memory, and skills

- [Koog documentation](https://docs.koog.ai/)
- [LangChain4j Agentic documentation](https://docs.langchain4j.dev/tutorials/agents/)
- [Koog Agent Skills](https://docs.koog.ai/skills/)
- [Agent Skills specification](https://agentskills.io/)
- [Corporate-speak to 11 — the demo skill](https://github.com/jbaruch/jclaw-demo/blob/round3/skills/corporate-speak/SKILL.md)

### Tools and observability

- [Model Context Protocol (MCP)](https://modelcontextprotocol.io/)
- [Quarkus MCP Server](https://github.com/quarkiverse/quarkus-mcp-server)
- [TamboUI — the terminal interface](https://tamboui.dev/)
- [Langfuse — agent traces and workflow visualization](https://langfuse.com/)
- [LangChain4j Agentic monitoring — HTML topology and execution reports](https://docs.langchain4j.dev/tutorials/agents/#monitoring)

### Tessl tiles

- [Koog tile](https://tessl.io/registry/jbaruch/koog)
- [LangChain4j Agentic tile](https://tessl.io/registry/gamussa/langchain4j-agentic)
- [TamboUI tile](https://tessl.io/registry/jbaruch/tamboui)

### Slides and recording

- [Download slides as PDF](https://on.notist.cloud/pdf/deck-79febb831b7e683b.pdf)
- [Watch the talk on YouTube](https://www.youtube.com/watch?v=BMCbNltyyxM)
