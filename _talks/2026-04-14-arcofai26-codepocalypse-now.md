---
layout: talk
---

# Codepocalypse Now: LangChain4j vs Spring AI

**Subtitle:** Building a Personal AI Agent in Java — The Abstraction War
**Conference:** Arc of AI 2026
**Date:** 2026-04-14
**Co-speaker:** Viktor Gamov
**Slides:** [View Slides](https://drive.google.com/file/d/1gQ98-dgxuiiP347z5xb8oGrsK8r-AYfh/preview)

A presentation at Arc of AI 2026 in
                    April 2026 in
                    Austin, TX by
                    {{ site.speaker.display_name | default: site.speaker.name }} and Viktor Gamov

## Abstract

ChatGPT can write code. Copilot can autocomplete. But can Java build a real AI agent — one that manages your calendar, reads your email, and remembers who you are across sessions? OpenClaw, the viral personal AI agent with 350K GitHub stars, proves the concept. We're going to build it. Twice. In Java. Live on stage.

Baruch brings Spring AI. Viktor brings LangChain4j. Same features, same LLM, same use case — completely different philosophies. Six rounds: basic agent, memory, tool calling, agentic workflows, guardrails, and observability. Each round exposes a fundamental design disagreement: Is memory an Advisor or a Provider? Are agents composed services or first-class citizens? Do you need MCP or can models call APIs directly?

This isn't just a framework comparison. It's an abstraction war — and the winner tells you something about how YOUR team should architect AI into your Java applications.

## Demo Code

- [JClaw Spring AI (Baruch's side)](https://github.com/jbaruch/jclaw-spring-ai) — Spring Boot 4 + Spring AI 2.0 + Claude. Branch per round.
- [JClaw Quarkus LangChain4j (Viktor's side)](https://github.com/gAmUssA/jclaw-quarkus-langchain4j) — Quarkus + LangChain4j 1.13.

### Branch Guide (Spring AI)

| Branch | What's Added |
|--------|-------------|
| `round-1-basic` | ChatClient + JClaw personality + TUI |
| `round-2-memory` | JDBC-backed MessageChatMemoryAdvisor |
| `round-3-tools` | @Tool methods + conference CFP data |
| `round-4-agentic` | RoutingAdvisor + Don Conferenceleone specialist |
| `round-5-guardrails` | Prompt injection guard + output redaction |
| `round-6-observability` | Actuator + Prometheus + self-introspection |

## Tessl Tiles

Context tiles we built for the demo — install them to give your coding agent the right context for these frameworks:

### Spring AI Stack
```bash
tessl install jbaruch/spring-ai-agent     # Spring AI 2.0 agent APIs
tessl install jbaruch/spring-boot-4       # Spring Boot 4.0 infra
```

### LangChain4j Stack
```bash
tessl install jbaruch/langchain4j-ai-agent  # LangChain4j 1.13 agent APIs
tessl install jbaruch/quarkus-langchain4j   # Quarkus + LC4j extensions
```

### TUI Client
```bash
tessl install jbaruch/tui4j-chat          # Terminal chat UI with TUI4J
```

| Tile | Version | Eval Score |
|------|---------|------------|
| [jbaruch/spring-ai-agent](https://tessl.io/registry/jbaruch/spring-ai-agent) | 0.4.0 | 90% |
| [jbaruch/spring-boot-4](https://tessl.io/registry/jbaruch/spring-boot-4) | 0.3.0 | 95% |
| [jbaruch/langchain4j-ai-agent](https://tessl.io/registry/jbaruch/langchain4j-ai-agent) | 0.3.0 | 93% |
| [jbaruch/quarkus-langchain4j](https://tessl.io/registry/jbaruch/quarkus-langchain4j) | 0.3.0 | 97% |
| [jbaruch/tui4j-chat](https://tessl.io/registry/jbaruch/tui4j-chat) | 0.5.0 | 99% |

## Resources

### Frameworks

- [Spring AI](https://docs.spring.io/spring-ai/reference/) — Spring's AI framework. ChatClient, Advisors, tool calling, MCP.
- [Spring AI 2.0 Migration Guide](https://github.com/spring-projects/spring-ai/wiki/Migration-Guide) — Breaking changes from 1.1 to 2.0.
- [LangChain4j](https://docs.langchain4j.dev/) — Java LLM framework. AiServices, agents, MCP, guardrails.
- [LangChain4j Agentic Module](https://docs.langchain4j.dev/tutorials/agents/) — Supervisor, sequential, parallel, conditional workflows.
- [Spring Boot 4.0 Release Notes](https://github.com/spring-projects/spring-boot/wiki/Spring-Boot-4.0-Release-Notes) — Jackson 3, Jakarta EE 11, starter renames.
- [Quarkus LangChain4j](https://docs.quarkiverse.io/quarkus-langchain4j/dev/index.html) — @RegisterAiService, MCP, guardrails in Quarkus.

### OpenClaw / NanoClaw

- [OpenClaw](https://github.com/openclaw/openclaw) — The viral personal AI agent (350K+ GitHub stars).
- [NanoClaw](https://github.com/qwibitai/nanoclaw) — Minimalist, containerized alternative to OpenClaw.
- [ClawRunr / JavaClaw](https://foojay.io/today/how-we-built-a-java-ai-agent-by-connecting-the-dots-the-ecosystem-already-had/) — "We didn't build anything new. We connected the pieces that were already there."

### MCP (Model Context Protocol)

- [MCP Specification](https://modelcontextprotocol.io/) — The protocol specification.
- [developer-events MCP](https://github.com/shelajev/developer-events-mcp) — Conference CFP MCP server by Oleg Shelajev (used in the demo).
- [developers.events](https://developers.events/) — The conference CFP data source.

### TUI4J

- [TUI4J](https://github.com/WilliamAGH/tui4j) — Terminal User Interface framework for Java (Bubble Tea port).
- [Brief](https://github.com/WilliamAGH/brief) — Terminal AI chat client built with TUI4J.

### Tessl

- [Tessl — Agent Enablement Platform](https://tessl.io/) — Package manager for agent skills and context.
- [Tessl Registry](https://tessl.io/registry/) — Browse and install tiles.
- [Tessl Documentation](https://docs.tessl.io/) — Getting started with tiles, evals, and context engineering.

### Tools

- [presenterm](https://github.com/mfontanini/presenterm) — Terminal-based markdown presentation tool (used for the slides).
- [Claude Code](https://www.anthropic.com/product/claude-code) — The coding agent used to build the demo.

### Previous Codepocalypse Versions

- [DevoxxFR 2025](https://speaking.jbaru.ch/talks/2025-04-16-devoxxfr-codepocalypse-now/) — 3-hour competitive coding showdown.
- [Dev2Next 2025](https://speaking.jbaru.ch/talks/2025-09-30-dev2next-codepocalypse-now/) — Live-coded comparative demo.
- [DevFest Toulouse 2025](https://speaking.jbaru.ch/talks/2025-11-01-devfest-toulouse-codepocalypse-now/) — 45-min competitive coding with audience voting.

### Conference

- [Arc of AI 2026](https://www.arcofai.com/) — Austin, TX, April 13–16, 2026.

### Speakers

- [Baruch Sadogursky — speaking.jbaru.ch](https://speaking.jbaru.ch/) — All talks, slides, and shownotes.
- [Viktor Gamov — speaking.gamov.io](https://speaking.gamov.io/) — Viktor's speaker profile.
- [@jbaruch on Twitter/X](https://x.com/jbaruch)
- [@gamussa on Twitter/X](https://x.com/gamussa)
