---
layout: talk
---

# MCP Is the New Internal API Surface

**Conference:** Agentics Day: MCP + Agents North America 2026
**Date:** 2026-11-09
**Slides:** [View Slides](https://drive.google.com/file/d/1nJeMjSiaSkf7tqzS85z0wBkUcv5hbSf7/preview)

A presentation at Agentics Day: MCP + Agents North America 2026, co-located with KubeCon + CloudNativeCon North America, in
                    November 2026 in
                    Salt Lake City, USA by
                    {{ site.speaker.display_name | default: site.speaker.name }}

## Abstract

MCP makes it radically easier to expose tools, data, and actions to agents. That's great. It also means organizations are about to create a lot of MCP servers. We've seen this pattern before with internal APIs: rapid adoption, duplicated capabilities, unclear ownership, inconsistent standards, stale interfaces, and eventually a platform team asking, "Wait, how many of these do we have?" In five minutes, we'll look at what the last decade of API and platform engineering can teach us about the next few years of MCP, and which mistakes we really don't need to make twice.

## Resources

- [MCP specification: Tools (2026-07-28)](https://modelcontextprotocol.io/specification/2026-07-28/server/tools) — The Tools section of the current MCP specification: tools are model-controlled, discovered via tools/list, and each one carries a name, a description and a JSON input schema that the model reads to decide what to call.
- [The MCP Registry](https://modelcontextprotocol.io/registry/about) — The official MCP Registry (in preview): a central metadata catalog of publicly accessible MCP servers. It does not list private servers and recommends hosting a private registry for those.
- [MCP Security Best Practices](https://modelcontextprotocol.io/docs/2026-07-28/tutorials/security/security_best_practices) — Official MCP security guidance covering the confused deputy problem, token passthrough, and scope minimization (least-privilege scopes instead of broad omnibus tokens).
- [CNCF Platforms White Paper](https://tag-app-delivery.cncf.io/whitepapers/platforms/) — CNCF TAG App Delivery's vendor-neutral description of internal platforms and their capabilities, including service catalogs, golden-path templates and documentation.
- [How We Use Golden Paths to Solve Fragmentation in Our Software Ecosystem (Spotify Engineering)](https://engineering.atspotify.com/2020/08/how-we-use-golden-paths-to-solve-fragmentation-in-our-software-ecosystem) — Spotify Engineering (Gary Niemen, 2020) on how tooling fragmentation across autonomous teams led to Golden Paths, the opinionated and supported way to build something.
- [Backstage Software Catalog](https://backstage.io/docs/features/software-catalog/) — Backstage's Software Catalog: an open-source, centralized system that tracks ownership and metadata for all the software in an organization.
- [Team Topologies by Matthew Skelton and Manuel Pais](https://teamtopologies.com/book) — Skelton and Pais's book on organizing technology teams for fast flow, including the platform team (IT Revolution, 2019; 2nd edition 2025).
- [Infinite monkey theorem (Wikipedia)](https://en.wikipedia.org/wiki/Infinite_monkey_theorem) — Reference article: a monkey typing at random for an infinite amount of time will almost surely type any given text, including the complete works of Shakespeare.
- [Never Trust a Monkey: The Chasm, the Craft, and the Chain of AI-Assisted Code (JCON Europe 2026)](https://speaking.jbaru.ch/talks/2026-04-22-jcon-eu-2026-monkey/) — Baruch's earlier talk, with video, that introduced the monkey cast and the Shakespeare skit this talk reuses.
- [RAG-MCP: Mitigating Prompt Bloat in LLM Tool Selection via Retrieval-Augmented Generation (Gan and Sun, 2025)](https://arxiv.org/abs/2505.03275) — Research preprint: passing the model only the retrieved, relevant MCP tool descriptions instead of all of them raised tool-selection accuracy from 13.62% to 43.13% and cut prompt tokens by over half.
- [Less is More: Optimizing Function Calling for LLM Execution on Edge Devices (Paramanayakam et al., DATE 2025)](https://arxiv.org/abs/2411.15399) — Research paper: selectively reducing the number of tools offered to an LLM improved its function-calling success, and cut execution time and power use on edge hardware.
- [Writing effective tools for agents, with agents (Anthropic Engineering)](https://www.anthropic.com/engineering/writing-tools-for-agents) — Anthropic's engineering guide to designing tools for agents: prompt-engineer the tool descriptions, consolidate overlapping tools and namespace them, because too many or overlapping tools distract agents.
- [MCP Security Notification: Tool Poisoning Attacks (Invariant Labs)](https://invariantlabs.ai/blog/mcp-security-notification-tool-poisoning-attacks) — Security research write-up (April 2025) defining tool poisoning: instructions hidden in an MCP tool description that the user does not see but the model follows.
- [GitHub MCP Exploited: Accessing private repositories via MCP (Invariant Labs)](https://invariantlabs.ai/blog/mcp-github-vulnerability) — Security research write-up (May 2025): a malicious public GitHub issue led an agent with broad repository access to leak private-repo data through the GitHub MCP server. The recommended mitigations are least privilege and one repository per session.
- [IBM ContextForge (MCP Gateway)](https://github.com/IBM/mcp-context-forge) — IBM ContextForge: an open-source (Apache-2.0) registry and proxy that federates MCP servers and APIs and can bundle selected tools into a virtual server, one endpoint per purpose.
- [Microsoft MCP Gateway](https://github.com/microsoft/mcp-gateway) — Microsoft MCP Gateway: an open-source (MIT) reverse proxy and management layer for MCP servers, with session-aware routing and lifecycle management on Kubernetes.
- [agentgateway (Linux Foundation)](https://agentgateway.dev) — agentgateway: an open-source Linux Foundation gateway for service, LLM and MCP traffic, which can scope which tools each identity may invoke.
- [Port public roadmap: Logical MCP](https://roadmap.getport.io/ideas/p/logical-mcp) — Port's public roadmap entry for Logical MCP (status: in progress): purpose-built MCP servers built in Port from hand-selected tools, workflows exposed as tools and catalog context, with scoped permissions, governed through Port's existing catalog, ownership and RBAC.
- [Port pricing (Free plan)](https://www.port.io/pricing) — Port's pricing page. The Free plan is $0 for up to 5 seats, with no credit card and no time limit.
- [PortCon 2026: The AI Software Factory Summit](https://portcon.port.io) — PortCon 2026, The AI Software Factory Summit, Port's two-day conference on Nov 17-18, 2026 at SHACK15, San Francisco.
