---
layout: talk
---

# Codepocalypse Now: LangChain4j vs JetBrains Koog

**Conference:** Devoxx Belgium 2026, Deep Dive
**Date:** 2026-10-05
**Slides:** [View Slides](https://drive.google.com/file/d/1jpwSxTC2LbaF2zVeYSHXfLgtMB6afoSq/preview)

A presentation at Devoxx Belgium 2026 in October 2026 by
{{ site.speaker.display_name | default: site.speaker.name }} and Viktor Gamov.

## Abstract

Both ecosystems can build a real JVM agent. Reliable behavior comes from explicit data contracts, the right evidence, controlled actions and execution traces that show whether the intended workflow actually ran. Baruch Sadogursky and Viktor Gamov build the same J-Claw assistant in JetBrains Koog and LangChain4j Agentic, using one concrete task: get out of mandatory AI training without recycling an excuse already sent to the organizer. Seven rounds cover chatbot setup, tools and MCP, memory, reusable skills, typed multi-agent workflows, guardrails and observability. Jev supplies bounded intent/event decisions. Judge and Human are two approvers sharing six refinements (seven candidates) in the same loop; human decisions appear in guardrails, followed by exact-candidate delivery and receipt validation. The closing Port example asks whether you need to build a software factory by hand when a platform can provide a factory for factories out of the box, carrying the same task and contracts into a native workflow. The framework choice comes down to how your team expresses, inspects and maintains those decisions.

## Resources

These are the prepared resources for the October 5 session. The complete Koog app
and its current Jev/refinement updates are published in the linked reference
repository. A public handoff ZIP supplies Viktor’s agent with the shared fixtures,
built mocks and comparison contract. Step branches wait until Baruch reviews
the complete demo on main. Viktor's linked repository is the earlier
IdeaConf implementation. The native Port workflow completed a browser-operated
mock rehearsal on candidate seven using all six shared refinements, with one
matching receipt and one sent-history write. It uses API-based model roles.
Human caught semantic excuse reuse and supplied a separate fictional deadline;
the accepted result depends on that added rehearsal fact. Use the completed run
as a labelled prepared example for the five-minute closing. Jev and the shared
limit are recorded in the current demo documentation. Paired Devoxx rehearsal remains
in progress.

### Demo code and run instructions

- [J-Claw — complete Devoxx Koog implementation](https://github.com/jbaruch/jclaw-devoxx)
- [Koog runbook — setup, prompts, workflow, human decisions and traces](https://github.com/jbaruch/jclaw-devoxx/blob/main/RUNBOOK.md)
- [Download Viktor’s demo handoff — shared source, fixtures and built MCP jars](https://github.com/jbaruch/jclaw-devoxx/releases/download/devoxx-be-2026-demo/viktor-demo-handoff.zip)
- [Shared LangChain4j handoff — task, mock fixtures and acceptance contracts](https://github.com/jbaruch/jclaw-devoxx/blob/main/HANDOFF-LC4J.md)
- [J-Claw — Viktor's earlier LangChain4j Agentic implementation (IdeaConf)](https://github.com/gAmUssA/jclaw-ideaconf-2026)
- [Build evidence — reviewed Koog guidance, tests and local live runs](https://github.com/jbaruch/jclaw-devoxx/blob/main/BUILD-NOTES.md)

### Workflow and action boundaries

- [Native Koog task/verification helper example](https://github.com/jbaruch/jclaw-devoxx/blob/main/app/src/main/kotlin/jclaw/NativeWorkflow.kt)
- [Full multi-model strategy with subscription CLI stages](https://github.com/jbaruch/jclaw-devoxx/blob/main/app/src/main/kotlin/jclaw/Strategy.kt)
- [Typed request, candidate, critic and receipt contracts](https://github.com/jbaruch/jclaw-devoxx/tree/main/domain/src/main/kotlin/jclaw/domain)
- [Delivery implementation — exact candidate and validated mock receipt](https://github.com/jbaruch/jclaw-devoxx/blob/main/app/src/main/kotlin/jclaw/Delivery.kt)

### Frameworks and reusable skills

- [Koog documentation](https://docs.koog.ai/)
- [LangChain4j Agentic documentation](https://docs.langchain4j.dev/tutorials/agents/)
- [Koog Agent Skills — discovery, prompt metadata and file tools](https://docs.koog.ai/skills/)
- [Agent Skills specification](https://agentskills.io/specification)
- [Corporate-speak to eleven — J-Claw's runtime skill](https://github.com/jbaruch/jclaw-devoxx/blob/main/skills/corporate-speak/SKILL.md)
- [Koog authoring tile — the development-time skill meta-moment](https://tessl.io/registry/jbaruch/koog)
- [LangChain4j Agentic tile](https://tessl.io/registry/gamussa/langchain4j-agentic)
- [TamboUI tile](https://tessl.io/registry/jbaruch/tamboui)

### Tools, terminal UI and observability

- [Model Context Protocol (MCP)](https://modelcontextprotocol.io/)
- [Quarkus MCP Server](https://github.com/quarkiverse/quarkus-mcp-server)
- [TamboUI](https://tamboui.dev/)
- [Stage dashboard controls — live, candidate, trace and evidence views](https://github.com/jbaruch/jclaw-devoxx/blob/main/tui/README.md)
- [Langfuse documentation](https://langfuse.com/docs)
- [LangChain4j Agentic monitoring — topology and execution reports](https://docs.langchain4j.dev/tutorials/agents/#monitoring)

### Decision models and Jev

- [TypeSafe Jev — decision models and System One](https://docs.typesafe.ai/introduction)
- [TypeSafe System One API](https://docs.typesafe.ai/api)
- [Jev Choice — options, probabilities and confidence](https://docs.typesafe.ai/primitives/choice)
- [Jev 1.13 — documented model limits](https://docs.typesafe.ai/model-jaggedness/jev-1.13)
- [Merged LangChain4j DecisionModel / TypeSafe integration](https://github.com/langchain4j/langchain4j/pull/6469)

- [J-Claw Jev validation — cases, raw responses and trace receipt](https://github.com/jbaruch/jclaw-devoxx/tree/main/validation/jev)
- [Released native LangChain4j Jev adapter validation](https://github.com/jbaruch/jclaw-devoxx/tree/main/validation/langchain4j)

### A factory for factories with Port

- [Port demo package — setup, context seeds, skills, MCP and five-minute run](https://github.com/jbaruch/jclaw-devoxx/tree/main/port)
- [Prepared native workflow graph, blueprints, seed entities and connector](https://github.com/jbaruch/jclaw-devoxx/tree/main/port/preview)
- [Port Workflows documentation](https://docs.port.io/workflows/overview/)
- [Port AI nodes — structured outputs and tool access](https://docs.port.io/workflows/build-workflows/nodes/action-nodes/ai/)
- [Port Input nodes — native human decisions](https://docs.port.io/workflows/build-workflows/nodes/flow-nodes/input/)
- [Port AI skills](https://docs.port.io/agent-management/ai-registry/skills/overview/)

### Session

- [Devoxx Belgium session listing](https://m.devoxx.com/events/dvbe26/talks/25027/codepocalypse-now-langchain4j-vs-jetbrains-koog)
