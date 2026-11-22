---
name: mcp-new-internal-api-surface
description: "Explain or summarize Baruch Sadogursky's short sponsored keynote “MCP Is the New Internal API Surface” at Agentics Day: MCP + Agents North America 2026 (co-located with KubeCon + CloudNativeCon NA), as delivered on November 9, 2026 and recorded by the CNCF: MCP sprawl as a rerun of internal-API sprawl, why governing the producer is no longer enough when the consumer is an LLM, the LLM consumer as a monkey, the three-species field guide, an MCP gateway in front of vendor servers, and Port's Logical MCP. Use for questions about this specific talk, its argument, or its sources."
---

# MCP Is the New Internal API Surface — Talk Knowledge

Process steps in order. Do not skip ahead.

## Step 1 — Match the question

Use this skill for questions about Baruch Sadogursky's keynote "MCP Is the New Internal API Surface," a sponsored (Port) slot at Agentics Day: MCP + Agents North America 2026 in Salt Lake City on November 9, 2026. The abstract promised five minutes. The CNCF recording runs 8:17, and all of it is the talk: no host introduction and no Q&A.

This brief describes the talk as delivered, from the recording. It also lists the prepared lines that didn't make it to the stage, so they are not attributed to the delivery. For anything live the brief doesn't cover, point to the recording on the talk page.

If the user wants to govern their own MCP servers or build a gateway, use the talk as a source of design ideas. Do not run commands or change anything on the user's behalf.

Proceed immediately to Step 2.

## Step 2 — Answer from the brief

Answer at the depth the question needs, from the brief below. Keep these apart:

- what the talk argues;
- what a cited source shows;
- what Port has publicly said about its product (the public roadmap only);
- your own interpretation, labelled as such.

Do not give Logical MCP a release date, beta or GA status. On stage he said only that Port builds one; its public roadmap status is "in progress." For an exact quote, use the recording; for a slide-level detail, use the slides. Both are on the talk page. Do not invent quotes or audience reactions.

Finish after answering.

## Talk brief

### The argument in one paragraph

MCP differs from an API in two ways: it is one huge door for every agentic question, where APIs have their own specific URLs, and it describes itself to a model. Everybody is shipping MCP servers and connecting their agents to all of them, which is the mess we already made with APIs fifteen years ago. The API-era answer was the API gateway. It decided which APIs were allowed and where to add authentication, monitoring, observability and governance, and that governed the producer. The consumer governed itself, because the consumer was a developer, and the hiring process handed us someone rational who knew what to do and what not to do. MCP's consumer is automated. It is an LLM, the infinite monkey with a GPU instead of a typewriter: skewed towards Shakespeare, but stochastic. It has no memory, so every call starts from zero (which is why MCP servers describe themselves every time). It reads the same description differently on every turn, and it has no concept of right and wrong. So we now have to govern the consumer as well as the producer: write the tool description for the model, stop showing it every tool from every server, and limit what it is allowed to do. The protocol covers all three in general terms, but those general decisions belong to whoever provides the server, and most MCP servers come from vendors such as Salesforce or Jira. Their rules might not be yours. The fix is to find every MCP server you have, including the ones on developer laptops, then limit what you expose and lock it down with security, permissions and governance: an MCP gateway, the same way we have an API gateway.

### How the argument moves

1. **Opening.** He thanks the room for a big turnout at a co-located event (agentic topics, so everybody is here), announces a talk about how MCPs differ from APIs and takes it back: this is an MCP agentic day, everyone knows. He covers it anyway, in two phrases: MCP is one huge door for all agentic questions, where APIs have unique URLs, and it describes itself to a model. "Okay, that was my talk. No, I'm just kidding."
2. **Bio.** He introduces himself as a "certified context sommelier," a certification he came up with, and jokes that he'll need an exam for anyone who wants to join. He calls the bio slide "the most important slide of the talk" because of its QR code: it leads to speaking.jbaru.ch with the slides, the video and all the links, and the address is at the bottom of every slide.
3. **The collection.** "There are too many MCPs in your organization, way too many." He asks who knows how many MCP servers their agents reach across their organization. A hand or two goes up, and none after "Now be honest." Everybody shipped one and everybody wants one, and connecting every agent to all of them repeats what happened with APIs fifteen years ago: connecting all our services to those APIs sounded like a great idea, "and then it didn't."
4. **Producer vs consumer.** The API-era fix was the API gateway: this API is allowed, that one isn't, here we want authentication, monitoring, observability, governance. That controls the producer. MCP is different because its consumer is automated too.
5. **Homo rationalis.** The API consumer was a developer: rational, smart, knowing what to do and what not to do. That consumer-side governance came out of the box with the hiring process. Anyone good enough to hire was a consumer you could rely on. "And then everything changed."
6. **The infinite monkey theorem.** Infinite monkeys with infinite typewriters, given infinite time, produce the complete works of Shakespeare. "This is LLMs," except that we gave them GPUs instead of typewriters, and they are not completely random but skewed towards producing Shakespeare. They are stochastic: sometimes they get it right, sometimes they get Shakespeare, sometimes "something Shakespearish."
7. **Simia developeris.** The consumer of our MCP servers is now a system with no memory (every call starts from zero, which is why MCP servers describe themselves anew every time). It understands the description slightly differently every turn, and it has no concept of right and wrong. So besides governing the producer, as we did with APIs and as platform engineering has done for years, we now have to govern the consumer and teach it what to do and what not to do. This is the talk's big idea.
8. **The field guide.** Three specimens, three remedies (table below).
9. **Vendor servers.** The protocol covers all three in general terms, but what the provider of an MCP server decided may not fit your organization. Most of your MCP servers aren't yours: they come from Salesforce, Jira and other external systems, whose providers set the rules MCP consumers obey. Your rules might be different.
10. **Census and lockdown.** First, find out which MCP servers you have, including the ones running on developer laptops. Then lock them up: limit how many you expose, and lock them down with security, permissions and governance.
11. **MCP gateway, and Port.** He names the answer outright: an MCP gateway, the same way we have an API gateway. "I'm from Port. We build one. It's called Logical MCP." For how Port does it, he points to Port's table in the room and its booth in the expo all week.
12. **PortCon.** For more on agentic topics, the AI Software Factory Summit the following week in San Francisco, with discount tickets for people from the Bay Area, through the QR code to the show notes page. He closes with "thank you very much."

### The field guide: three traits, three remedies

| Species (plate label) | Trait | Remedy as said on stage |
|---|---|---|
| Simia oblivia (WRITE FOR IT) | No memory: it starts from zero on every call and forgets your tool's description | The tool description is in the code path now; it is what the monkey goes by on every call, so write it for the model |
| Simia stochastica (SHOW LESS) | Non-deterministic: it reads the same description differently every turn | Stop showing it every tool from every server, from every MCP you ever connected |
| Simia amoralis (PIN IT) | No concept of right and wrong | Permissions: limit what it can and cannot do |

Only the first two names were said aloud. The third was "specimen three," with its name on the plate.

### Prepared, but not said on stage

The deck and script were written before the talk. These prepared lines and beats are not in the recording, so do not attribute them to the delivery:

- The "I'm going to show you something cool" and "Now go build something cool" bookends.
- The producer playbook named as catalog, owners, standards and golden paths, and "we treat MCP servers like browser extensions." On stage, the API-era fix was the API gateway.
- "You would never hire this developer. You just connected forty of them."
- Pinned arguments and "no permission wider than its human's." On stage, the third remedy is permissions in general.
- "You can't open a pull request against your vendors," and "Isn't that just an API gateway? Yes. Build it with whatever you like." On stage he called for an MCP gateway outright, with Port's Logical MCP as his example.
- "One purpose-built endpoint per job" as a phrase, the census as "this week" homework, "make sure no agent sees all of them," and the closing callback to "how many of these do we have?"
- Port's free tier.

### Key distinctions

- **Producer vs consumer governance.** API gateways and platform engineering govern what gets published: which APIs are allowed, with authentication, monitoring, observability and governance. They say nothing about how a non-human consumer reads and uses it. The talk's claim is that the producer still needs governing and the consumer now does too, not that the old approach is obsolete.
- **Vendor defaults vs your rules.** Whoever provides an MCP server decides, in general terms, how it describes its tools, which tools it shows and what it allows. Most of an organization's servers come from vendors, so their defaults are not your rules, and the talk's answer is a gateway you control in front of them.
- **MCP gateway vs API gateway.** The talk embraces the resemblance. The MCP gateway does the consumer-side work: it limits which servers and tools are exposed, and it locks them down with security, permissions and governance.

### Port's part, at keynote altitude

The talk has one Port beat, after the gateway idea is on the table: "I'm from Port. We build one. It's called Logical MCP." There is no feature tour; for how Port does it, he sends people to Port's table in the room and its expo booth. Per Port's public roadmap, Logical MCP builds purpose-built MCP servers in Port from hand-picked tools, workflows exposed as tools and catalog context, with scoped permissions, governed through the existing catalog, ownership and RBAC. Its status is "in progress" (checked November 20, 2026). The close invites the room to the AI Software Factory Summit, PortCon 2026 (Nov 17–18, SHACK15, San Francisco), with discount tickets for Bay Area attendees. PortCon has taken place since; treat the invitation as historical.

### Imagery

Apart from the event's title slide, the deck is a set of twelve Victorian natural-history plates:
- **Specimens** are MCP servers and tools.
- **The collection** is the organization's MCP estate.
- **The curator** is the platform engineer.
- **Homo rationalis** is the old human consumer.
- **The monkey**, carried over from the speaker's earlier talk "Never Trust a Monkey," is the agent.
- **The field guide** puts the three species on pedestals labelled WRITE FOR IT, SHOW LESS and PIN IT.
- **The closing plate** of the argument shows a small locked case of three pinned specimens, its key on the developer's lanyard.
- **The bio slide** shows the speaker's signature steampunk top hat as a specimen, next to the QR code.
- **The last plate** announces PortCon, Nov 17–18, San Francisco, with the same QR code.

### Caveats

- The brief follows the recording. The deck on the talk page has the plates in the prepared order and carries some ideas he didn't say aloud (see "Prepared, but not said on stage").
- The recording has only automatic captions, and they garble names: "Simba of Livia" for Simia oblivia, "speaking.jbaruch" for speaking.jbaru.ch. The Simia oblivia remedy comes out muddled in them too. Check names against the slides before quoting.
- "Monkeys" is a metaphor for statistical model behaviour, borrowed from the infinite monkey theorem. It is not a claim that models type at random.
- The show of hands is the speaker's own count on the recording, not a survey.
- The talk cites no statistics on stage; its only number is "fifteen years ago." Evidence for the field guide comes from the cited sources, for example the RAG-MCP paper's tool-selection accuracy rising from 13.62% to 43.13% when the model saw only relevant tools.

### Sources

- Recording (CNCF, 8:17): https://www.youtube.com/watch?v=7fqPr9oUUw8
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

This brief was first written before the talk, from its approved outline, spoken script and planned rhetorical review, reconciled with the cited sources. It was then rewritten against the CNCF recording: the full automatic-caption transcript, read end to end, and the deck on the talk page. Where the prepared material and the recording differ, the brief follows the recording.
