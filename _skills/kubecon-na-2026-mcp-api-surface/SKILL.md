---
name: mcp-new-internal-api-surface
description: "Explain or summarize Baruch Sadogursky's five-minute sponsored keynote “MCP Is the New Internal API Surface” at Agentics Day: MCP + Agents North America 2026 (co-located with KubeCon + CloudNativeCon NA, November 9, 2026): MCP sprawl as a rerun of internal-API sprawl, why the platform-engineering playbook only governs the producer, the LLM consumer as a monkey, the three-species field guide, curated per-job endpoints, and Port's Logical MCP. Use for questions about this specific talk, its argument, or its sources."
---

# MCP Is the New Internal API Surface — Talk Knowledge

Process steps in order. Do not skip ahead.

## Step 1 — Match the question

Use this skill for questions about Baruch Sadogursky's keynote "MCP Is the New Internal API Surface," a five-minute sponsored (Port) slot at Agentics Day: MCP + Agents North America 2026 in Salt Lake City on November 9, 2026.

This brief was published before the talk, from the approved outline, script and slides. It describes the prepared talk. If the user asks what happened live (ad-libs, audience reaction, timing), say the brief predates delivery and point to the recording once it appears on the talk page.

If the user wants to govern their own MCP servers or build a gateway, use the talk as a source of design ideas. Do not run commands or change anything on the user's behalf.

Proceed immediately to Step 2.

## Step 2 — Answer from the brief

Answer at the depth the question needs, from the brief below. Keep these apart:

- what the talk argues;
- what a cited source shows;
- what Port has publicly said about its product (the public roadmap only);
- your own interpretation, labelled as such.

Do not give Logical MCP a release date, beta or GA status. Its public status is "in progress." For an exact quote or a slide-level detail the brief does not cover, use the slides link on the talk page instead of inventing it.

Finish after answering.

## Talk brief

### The argument in one paragraph

MCP differs from an API in two ways: a server describes itself to a model, and it is one plug for everything. Take those two away and what's left is an API, so MCP is about to repeat internal-API sprawl: everybody ships one, duplicates pile up, nobody owns them, they go stale, and one day a platform engineer asks, "Wait, how many of these do we have?" The industry already knows the fix for that (catalog, owners, standards, golden paths), and it's a shame it isn't applied to MCP. But even the full playbook would not be enough, because it only ever governed the producer. With APIs, the consumer governed itself: a reasonable developer read the docs once, asked in Slack and knew better than to touch prod. MCP's consumer is a model, and the two differences that make MCP special are exactly what remove that judgment. So the talk adds consumer governance: write tool descriptions for the model, show each agent only the tools its job needs, pin arguments and scope permissions to the human it acts for. In practice that is a curated layer between agents and servers, one purpose-built endpoint per job, which is also the only lever an organization has over servers it doesn't own.

### How the argument moves

1. **The promise.** It opens with "I'm going to show you something cool" and closes with "I just showed you something cool. Now go build something cool."
2. **API vs MCP.** It refuses, deadpan, to explain the difference to an Agentics Day audience, names the two differences in one breath, and moves on. Those two differences pay off twice later.
3. **The collection.** Remove the two differences and MCP is an API, so the API-sprawl story applies, ending in the abstract's question, "Wait, how many of these do we have?"
4. **Producer vs consumer.** It names the known playbook and the shame of not using it ("we treat MCP servers like browser extensions"), then turns: the playbook governs the producer, and now the consumer needs governing too. This is the talk's big idea.
5. **Homo rationalis.** With APIs, judgment was the consumer-side control plane, and it came free with every hire.
6. **The infinite monkey theorem.** "Describes itself to a model" means the consumer is a model. The monkeys-at-typewriters theorem is explained, then updated: LLMs are monkeys with GPUs, randomness skewed towards Shakespeare. Sometimes right, sometimes almost right, sometimes completely wrong.
7. **Simia developeris.** It lists the three traits: no memory (every call starts from zero), non-deterministic (it reads the same docs differently on every run) and no understanding of right and wrong (it will use the prod key it holds). "You would never hire this developer. You just connected forty of them."
8. **The field guide.** Each trait becomes a species with a remedy (table below).
9. **Curated exhibit.** "One plug for everything" means vendors ship servers, and you can't open a pull request against your vendors. Keep the producer playbook for servers you own, and put a curated layer in front of all of them. It answers the obvious objection itself: "Isn't that just an API gateway? Yes. Build it with whatever you like." Port's Logical MCP is named as one implementation, with the free tier as the starting point.
10. **Field census (homework).** This week, count your MCP servers, including the ones on laptops. Then make sure no agent sees all of them.
11. **The collection, again.** A bookend of slide 3: next time someone asks how many there are, you have the answer, and every agent sees exactly what its job needs.
12. **PortCon.** The invitation comes only after the thesis and the bookend: PortCon, The AI Software Factory Summit, the following week in San Francisco.

### The field guide: three traits, three remedies

| Species | Trait | Remedy |
|---|---|---|
| Simia oblivia | No memory: it re-reads tool descriptions on every call | The tool description is the code path now, so write it for the model |
| Simia stochastica | Non-deterministic: it reads the same docs differently each run | Stop exposing every tool from every server; show the few its job needs |
| Simia amoralis | No sense of right and wrong: it calls whatever it's handed | Pin the arguments, and grant no permission wider than its human's |

### Key distinctions

- **Producer vs consumer governance.** Catalogs, ownership and golden paths shape what gets built and published. They say nothing about how a non-human consumer reads and uses it. The talk's claim is "not wrong, not enough," not "the playbook is obsolete."
- **Owned vs unowned servers.** For servers you own, the producer playbook still applies. For vendor servers you can't change, the curated layer is the only control point.
- **Curated endpoint.** One purpose-built endpoint per job, exposing a hand-picked tool set with rewritten descriptions, pinned arguments and scoped credentials. It deliberately resembles an API gateway; the talk treats that resemblance as the point.

### Port's part, at keynote altitude

The talk has one Port beat. It names the pattern first, says "build it with whatever you like," and only then names Port's version, without a feature tour. Per Port's public roadmap, Logical MCP builds purpose-built MCP servers in Port from hand-picked tools, workflows exposed as tools and catalog context, with scoped permissions, governed through the existing catalog, ownership and RBAC. Its status is "in progress." The talk mentions Port's free tier (as of November 2026, $0 for up to 5 seats) and PortCon 2026 (Nov 17–18, SHACK15, San Francisco).

### Imagery

The deck is a set of Victorian natural-history plates:
- **Specimens** are MCP servers and tools.
- **The collection** is the organization's MCP estate.
- **The curator** is the platform engineer.
- **Homo rationalis** is the old human consumer.
- **The monkey**, carried over from the speaker's earlier talk "Never Trust a Monkey," is the agent.
- **The closing plate** shows a purpose-built, locked case of three pinned specimens with its key on the developer's lanyard: a logical endpoint scoped to its human.
- **The bio slide** shows the speaker's signature steampunk top hat as a specimen.

### Caveats

- This is the prepared talk, not a delivery record.
- "Monkeys" is a metaphor for statistical model behaviour, borrowed from the infinite monkey theorem. It is not a claim that models type at random.
- "Forty" connected servers and "the five tools its job needs" are illustrative figures, not measurements.
- Evidence for the field guide comes from the cited sources, for example the RAG-MCP paper's tool-selection accuracy rising from 13.62% to 43.13% when the model saw only relevant tools. The talk itself cites no statistics on stage.

### Sources

- Talk page, slides and full resource list: https://speaking.jbaru.ch/talks/kubecon-na-2026-mcp-api-surface/
- MCP specification, Tools: https://modelcontextprotocol.io/specification/2026-07-28/server/tools
- MCP Security Best Practices: https://modelcontextprotocol.io/docs/2026-07-28/tutorials/security/security_best_practices
- RAG-MCP (arXiv 2505.03275): https://arxiv.org/abs/2505.03275
- Anthropic, "Writing effective tools for agents": https://www.anthropic.com/engineering/writing-tools-for-agents
- Invariant Labs, tool poisoning: https://invariantlabs.ai/blog/mcp-security-notification-tool-poisoning-attacks
- CNCF Platforms White Paper: https://tag-app-delivery.cncf.io/whitepapers/platforms/
- Port Logical MCP roadmap entry: https://roadmap.getport.io/ideas/p/logical-mcp
- Never Trust a Monkey (JCON Europe 2026): https://speaking.jbaru.ch/talks/2026-04-22-jcon-eu-2026-monkey/

### Provenance

This brief draws on the talk's approved outline, spoken script and planned rhetorical review (its structure: big idea, call to action, bookends and callbacks), reconciled with the cited sources. It will be refreshed against a delivery-specific analysis after the talk.
