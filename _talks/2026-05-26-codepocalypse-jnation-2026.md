---
layout: talk
---

# Codepocalypse Now (Age of Agents): Koog vs LangChain4J Agentic

**Conference:** JNation 2026
**Date:** 2026-05-26
**Slides:** [View Slides](https://drive.google.com/file/d/1GVlLDVGR6MTlOD5h0mUZEXxNyVLG5i8B/preview)
**Video:** [View Video](https://www.youtube.com/watch?v=T3I15mNEwUQ)

A presentation at JNation 2026 in
                    May 2026 in
                    Coimbra, Portugal by
                    {{ site.speaker.display_name | default: site.speaker.name }} and Viktor Gamov

## Abstract

Agentic Java is real, today. In this co-presented session we build the same agent — j-claw, a personal assistant that declines speaker-dinner invitations — twice: once in Koog (Kotlin) and once in LangChain4j Agentic (Java). Across four rounds we grow it from a five-line chatbot into a tool-using, MCP-backed, memory-keeping, self-correcting agentic pipeline, and the two apps come out essentially identical — same typed domain model, same per-phase tool slices, same four-phase verify/refine loop. The framework "war" has no loser: whichever side of the arcade cabinet you pick, the winner is the Java developer, because the agent era is open to the JVM right now, no Python required.

## Resources

### Demo code

- [j-claw demo — Koog side](https://github.com/jbaruch/jclaw-demo)

### Frameworks

- [Koog — JetBrains' Kotlin-native agent framework](https://docs.koog.ai)
- [Koog on GitHub](https://github.com/JetBrains/koog)
- [LangChain4j — documentation](https://docs.langchain4j.dev)
- [LangChain4j on GitHub](https://github.com/langchain4j/langchain4j)

### MCP

- [Model Context Protocol (MCP)](https://modelcontextprotocol.io)
- [Quarkus MCP Server](https://github.com/quarkiverse/quarkus-mcp-server)

### Tessl

- [Tessl — reusable AI coding tiles](https://tessl.io)
- [jbaruch/koog (Tessl Registry)](https://tessl.io/registry/jbaruch/koog)
- [gamussa/langchain4j-agentic (Tessl Registry)](https://tessl.io/registry/gamussa/langchain4j-agentic)
- [jbaruch/tamboui (Tessl Registry)](https://tessl.io/registry/jbaruch/tamboui)

### Pipeline visualization

- [Langfuse — agent trace UI](https://langfuse.com/)
