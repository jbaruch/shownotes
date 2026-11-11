---
layout: talk
---

# The Software Factory of Factories

**Conference:** KubeCon + CloudNativeCon North America 2026
**Date:** 2026-11-11
**Slides:** [View Slides](https://drive.google.com/file/d/1t00kDwEkQC-B8YFSBpzi0vbmxxkNlVMP/preview)

A presentation at KubeCon + CloudNativeCon North America 2026 (Demo Theater) in
                    November 2026 in
                    Salt Lake City, USA by
                    {{ site.speaker.display_name | default: site.speaker.name }}

## Abstract

Every team wants its own software factory, and apparently the platform team is supposed to build all of them before anyone can get back to shipping features. I'd like the agents to help with that job too, although letting them write the workflow that decides when to ask a human needs some thought. For the demo, I've made up a company that prints conference T-shirts through an API and has shipped a breaking change while its technical writer is on vacation. I'll use that mess to show how an agent can turn a postmortem action item into a workflow that finds the affected customers and prepares their documentation for approval. I'll open the workflow and the instructions that produced it, so we can check whether the agent built what we asked for and kept the human approval before publication. And we'll do it live.

## Resources

### The demo

- [Printf on GitHub](https://github.com/printf-tshirts-printing) — The fictional T-shirt company's public repositories: order-api with the 2.4 sizing change, the client libraries and printf-docs.

### Port features used in the demo

- [Workflows](https://docs.port.io/workflows/overview/) — The node graph behind both the release workflow and the factory builder.
- [Event triggers](https://docs.port.io/workflows/build-workflows/nodes/triggers/event-trigger/) — How the published release and the post-mortem-action label start workflows without anyone pressing Run.
- [AI nodes](https://docs.port.io/workflows/build-workflows/nodes/action-nodes/ai/) — The one creative step: drafting the docs, changelog and support macro, and the Workflow Builder step.
- [Input nodes](https://docs.port.io/workflows/build-workflows/nodes/input/) — The tech-writer sign-off gate that nothing customer-facing gets past.
- [Workflow permissions and RBAC](https://docs.port.io/workflows/permissions-and-rbac/permissions/) — Who may run which workflow, and why the comp request was refused.
- [Expose a workflow as a tool](https://docs.port.io/workflows/expose-as-tool/) — Agents only receive the workflows the signed-in user is allowed to run.
- [Context Lake](https://docs.port.io/context-lake/overview/) — The connected model of services, docs, facilities and accounts that the blast-radius queries traverse.
- [Define your ontology](https://docs.port.io/context-lake/data-model/define-your-ontology/) — Blueprints and relations: how releases, endpoints, docs pages, facilities and accounts connect.
- [AI agents](https://docs.port.io/agent-management/custom-agents/overview/) — Release Desk and Workflow Builder are Port AI agents.
- [Skills](https://docs.port.io/agent-management/skills/overview/) — The changelog-writer and workflow-authoring skills, kept as versioned artifacts in the skills registry.
- [MCP connectors](https://docs.port.io/agent-management/mcp-connectors/) — How Release Desk reads the support system before the human signs off.
- [Port MCP server](https://docs.port.io/agent-management/port-mcp-server/overview/) — Your own agents and tools can query the same context.

### Try it

- [Port free plan](https://www.port.io/pricing) — $0 for up to 5 seats, no credit card; up to 10k entities and 400 workflow runs.
- [PortCon 2026: The AI Software Factory Summit](https://portcon.port.io/) — November 17-18, SHACK15, San Francisco. Code DEVREL_30% takes 30% off.
