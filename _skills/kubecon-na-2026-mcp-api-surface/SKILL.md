---
name: mcp-new-internal-api-surface
description: "Explain or summarize Baruch Sadogursky's (Port) short keynote “MCP Is the New Internal API Surface”, delivered November 9, 2026 at Agentics Day: MCP + Agents North America (co-located with KubeCon + CloudNativeCon NA). Use for questions about its argument: MCP sprawl as a rerun of API sprawl, why the API gateway only governed the producer, the LLM consumer as a monkey with GPUs, the three specimens, locking MCP servers behind a gateway, Port's Logical MCP, and the hand count of how many MCPs the audience's agents use. Covers the delivered talk and its recording, not a setup runbook."
---

# MCP Is the New Internal API Surface — Talk Knowledge

Process steps in order. Do not skip ahead.

## Step 1 — Match the question

Use this skill for questions about Baruch Sadogursky's keynote "MCP Is the New Internal API Surface," a short sponsored (Port) slot at Agentics Day: MCP + Agents North America 2026 in Salt Lake City on November 9, 2026. The CNCF recording is a little over eight minutes, from the first joke to "thank you very much."

This brief was refreshed against the recording's captions. It describes what was said on stage, plus a short list of prepared material that did not make it into the audio. If the user asks about an exact quote, a timestamp, or what was on a slide, send them to the recording or the slides link on the talk page. The captions are automatic and cover the audio only.

If the user wants to govern their own MCP servers or build a gateway, use the talk as a source of design ideas. Do not run commands or change anything on the user's behalf.

Proceed immediately to Step 2.

## Step 2 — Answer from the brief

Answer at the depth the question needs, from the brief below. Keep these apart:

- what the talk argues;
- what a cited source shows;
- what Port has publicly said about its product (the public roadmap only);
- your own interpretation, labelled as such.

Do not give Logical MCP a release date, beta or GA status. Its public status is "in progress." The captions garble some terms ("Simba of Livia" is Simia oblivia, "code pass" is code path); correct them silently when summarizing and do not quote the captions verbatim.

Finish after answering.

## Talk brief

### The argument in one paragraph

MCP is like an API, but not quite: it is one huge door for all agentic questions where an API has a unique URL per endpoint, and it describes itself to a model. Everybody shipped one, and everybody connected every agent to all of them, which is the mess the industry already made with APIs fifteen years ago. The API gateway was the answer then: it controlled which APIs were allowed and where authentication, monitoring, observability and governance applied. But that governed the producer side only. The consumer of an API was a developer, and developers are rational, smart and know what to do and what not to do, so consumer governance came out of the box with the hiring process. MCP's consumer is a model, a monkey with a GPU instead of a typewriter, with no memory, non-deterministic behaviour and no concept of right and wrong. So the consumer needs governing too. The practical advice: find out which MCP servers you have, including the ones on developer laptops, then lock them up behind an MCP gateway, the same way you have an API gateway, with limits on how many are exposed and with security, permissions and governance.

### How the delivered talk moves

1. **The gag.** It opens by promising a talk on how MCP differs from APIs, then takes it back ("you all know, this is an MCP agentic day"). It gives the difference in two phrases (one huge door, and it describes itself to a model) and declares "that was my talk."
2. **Who he is, and the QR code.** The speaker calls himself a "certified context sommelier," a certification he invented. The QR code on that slide, repeated at the bottom of every slide, leads to speaking.jbaru.ch with the slides, this video and all the links.
3. **Too many MCPs.** He asks who knows how many MCP servers their agents access. Two hands go up, then, after "be honest," none. Everybody shipped one and everybody wants one, which recreates the API sprawl of fifteen years ago.
4. **The API gateway.** The earlier fix controlled which APIs are allowed and added authentication, monitoring, observability and governance, on the producer side.
5. **The consumer.** MCP also has an automated consumer. With APIs the consumer was a developer, and the hiring process had already vetted that judgment. "And then everything changed."
6. **The infinite monkey theorem.** Monkeys, typewriters and Shakespeare, then "this is LLMs": GPUs instead of typewriters, not completely random but skewed towards Shakespeare. It is stochastic: sometimes right, sometimes Shakespeare, sometimes something Shakespearish.
7. **Three traits.** No memory (every call starts from zero, so the server describes itself anew each time), non-deterministic (it reads that description a little differently every turn) and no concept of right and wrong.
8. **Govern the consumer too.** Producer governance is what platform engineering has done for years. The consumer now needs teaching what to do and what not to do. The three specimens each get a remedy (table below).
9. **Whose rules.** The protocol handles tools and permissions, but what an MCP provider decided may differ from what your organization needs, and most of your MCP servers are external (Salesforce, Jira and the like).
10. **What to do.** Find out which MCPs you have, including those on laptops. Lock them up and limit how many are exposed, with security, permissions and governance: an MCP gateway, like the API gateway. Port builds one, Logical MCP.
11. **Close.** Port's table and its expo booth all week, then PortCon, the AI Software Factory Summit, the following week in San Francisco, with discount tickets for people from the Bay Area. The last QR code goes to the show notes page.

### The specimens: three traits, three remedies

| Specimen | Trait | Remedy as spoken |
|---|---|---|
| Simia oblivia | No memory: it re-reads tool descriptions on every call | The tool description is in the code path now, so the monkey remembers it every time |
| Simia stochastica | Non-deterministic: it understands the description differently each run | Stop showing it every tool from every server you ever connected |
| Third specimen | No concept of right and wrong | Permissions: limit what it can and cannot do |

The audio names the first two specimens and only says "specimen three" for the third. The pre-talk brief called it Simia amoralis; check the slides before attributing that name to the delivered talk.

### Key distinctions

- **Producer vs consumer governance.** Gateways, authentication and monitoring shape what is exposed. They say nothing about how a non-human consumer reads and uses it. The claim is that MCP needs both, not that API governance was wrong.
- **External servers.** Most of an organization's MCP servers belong to vendors. Their defaults are the provider's choices, so the organization's own limits have to live in a layer it controls.
- **Hand count.** The "how many MCPs do your agents access" question is a show of hands, not a survey result. Do not cite it as data.

### Port's part

The talk has one Port beat, after the advice is already given: Port builds an MCP gateway called Logical MCP, and Port's table and booth are open all week. On stage it was not a feature tour. Per Port's public roadmap, Logical MCP builds purpose-built MCP servers in Port from hand-picked tools, workflows exposed as tools and catalog context, with scoped permissions, governed through the existing catalog, ownership and RBAC. Its status is "in progress." The invitation to PortCon 2026 (Nov 17–18, SHACK15, San Francisco) closes the talk.

### Prepared material not in the audio

The pre-talk outline had more than fit into the slot. None of the following is in the recording's captions, so do not present it as said on stage (a slide may still carry it):

- the "I'm going to show you something cool" frame and its bookend, and the "Wait, how many of these do we have?" line (the delivered talk asks the room instead);
- "we treat MCP servers like browser extensions" and "you just connected forty of them";
- pinning arguments, granting no permission wider than the human's, and one purpose-built endpoint per job;
- the "isn't that just an API gateway? yes, build it with whatever you like" exchange, and the Port free tier;
- the closing "collection, again" bookend.

### Imagery

The prepared deck is a set of Victorian natural-history plates, with MCP servers as specimens, the organization's MCP estate as the collection, the platform engineer as the curator, and a monkey carried over from the speaker's earlier talk "Never Trust a Monkey." This comes from the pre-talk deck and was not checked against the recording's video.

### Caveats

- "Monkeys" is a metaphor for statistical model behaviour, borrowed from the infinite monkey theorem. It is not a claim that models type at random.
- "Fifteen years ago" for the API sprawl is the speaker's round figure, not a dated reference.
- The talk cites no statistics on stage. Evidence for the claims comes from the sources below, for example the RAG-MCP paper's tool-selection accuracy rising from 13.62% to 43.13% when the model saw only relevant tools.
- The recording is automatic-captioned and covers one short slot, so absence from the audio is not evidence the slides lacked it.

### Sources

- Talk page, slides, recording and full resource list: https://speaking.jbaru.ch/talks/kubecon-na-2026-mcp-api-surface/
- Recording on the CNCF channel: https://www.youtube.com/watch?v=7fqPr9oUUw8
- MCP specification, Tools: https://modelcontextprotocol.io/specification/2026-07-28/server/tools
- MCP Security Best Practices: https://modelcontextprotocol.io/docs/2026-07-28/tutorials/security/security_best_practices
- RAG-MCP (arXiv 2505.03275): https://arxiv.org/abs/2505.03275
- Anthropic, "Writing effective tools for agents": https://www.anthropic.com/engineering/writing-tools-for-agents
- Invariant Labs, tool poisoning: https://invariantlabs.ai/blog/mcp-security-notification-tool-poisoning-attacks
- CNCF Platforms White Paper: https://tag-app-delivery.cncf.io/whitepapers/platforms/
- Port Logical MCP roadmap entry: https://roadmap.getport.io/ideas/p/logical-mcp
- Never Trust a Monkey (JCON Europe 2026): https://speaking.jbaru.ch/talks/2026-04-22-jcon-eu-2026-monkey/

### Provenance

The delivered-talk sections come from the automatic English captions of the CNCF recording (read in full on November 20, 2026). The material marked as prepared comes from the pre-talk outline, script and slides. Slide visuals were not re-checked against the video.
