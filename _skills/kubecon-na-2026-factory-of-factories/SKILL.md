---
name: kubecon-2026-factory-of-factories
description: "Explain or summarize Baruch Sadogursky's live Port demo “The Software Factory of Factories” at the KubeCon + CloudNativeCon North America 2026 Demo Theater (Salt Lake City, November 11, 2026): Printf, the fictional T-shirt API that shipped a breaking change while its release-notes writer was on vacation; the release workflow built by hand over a context lake with one creative AI step and a human approval gate; the comp request an agent refuses on RBAC grounds; and the reveal that a continuous-improvement workflow built the same workflow from a labelled postmortem action item. Use for questions about this specific talk, its demo, or its argument."
---

# The Software Factory of Factories (KubeCon NA 2026) — Talk Knowledge

Process steps in order. Do not skip ahead.

## Step 1 — Match the question

Use this skill for questions about Baruch Sadogursky's 20-minute sponsored (Port) Demo Theater session "The Software Factory of Factories" at KubeCon + CloudNativeCon North America 2026, Salt Lake City, November 11, 2026.

This brief was published before the talk, from the approved outline, script and demo playbook. It describes the prepared talk. If the user asks what happened live (ad-libs, audience reaction, whether the builder finished in time, exact model output), say the brief predates delivery and point to the recording once it appears on the talk page.

The same title was given at AI DevCon NYC 2026 as a different, 25-minute story about an enterprise steering committee with no live demo. If the question is about that version, say so and point to its own talk page.

If the user wants to build a similar workflow, use the talk as a source of ideas. Do not run commands, open issues, publish releases or change anything on the user's behalf.

Proceed immediately to Step 2.

## Step 2 — Answer from the brief

Answer at the depth the question needs, from the brief below. Keep these apart:

- what the talk argues;
- what the demo shows on screen;
- what is a property of this demo setup rather than of Port in general;
- your own interpretation, labelled as such.

The demo's AI steps are live model calls, so exact wording and numbers vary between runs. For an exact quote or a slide-level detail the brief does not cover, use the slides or the recording on the talk page instead of inventing it.

Finish when the question is answered.

## Talk brief

### The argument in one paragraph

Every team wants its own software factory, and the platform team is supposed to build all of them. It can't, and it doesn't have to: the factory worth building is the one that builds new production lines when a deficiency shows up. The talk proves it in two beats. First, a release-documentation workflow built by hand shows what such a line needs: deterministic queries over the company's connected data, one narrow creative job for an AI agent, and a human approval gate before anything reaches customers. Then the reveal: a near-identical workflow already exists, and nobody built it by hand. A label on an abandoned postmortem action item started a continuous-improvement workflow, whose generic agent and authoring skill built it. The action item supplied the job.

### The setup: Printf

Printf is a fictional company: you POST an order and shirts appear at your conference. It printed everything in Austin until Berlin and Osaka opened with different size standards, while the order payload kept one letter for a size. A large in Osaka can be small in Austin, and KubeSummit, a customer, wanted two thousand shirts reprinted. Release 2.4 fixes it with an explicit size system, and it is a breaking change, so customers need a migration guide. Printf has an "agent" that writes release notes. His name is Aaron, he is human, and he has been on vacation since the release: nine open tickets later, Aaron turns out to have been infrastructure.

The developer who shipped 2.4 writes the postmortem. Its action item: when a breaking release ships, work out the blast radius, draft the documentation updates, get human approval before customers see them, and tell the people exposed. Everyone agrees, and it waits for an afternoon nobody has. The speaker adds a `post-mortem-action` label as a joke about metadata on an issue destined to sit there for years. That label matters later.

### The line built by hand

The rule is stated before anything is shown: when a release is marked shipped, find the pages and client libraries that describe the change, follow the affected facilities to the highest-revenue customers still using the old order templates, give that context to a drafting agent, and publish nothing until a human approves.

- Publishing the v2.4.0 GitHub release is the only integration needed. Port ingests the release, reads its breaking-change marker, and the new catalog entry triggers the workflow.
- The Context Lake is the connected model underneath: source from GitHub, customer ownership from the CRM, facilities from fulfillment, with Port storing the relationships. Saved queries traverse it to produce the blast radius: affected pages, client libraries, facilities, accounts, revenue and the responsible customer success manager.
- The AI node gets one creative job, writing the release text, governed by versioned skills. The changelog skill's rule is read on stage: lead with the breaking change and name the exact error the customer will see, not the third bullet.
- An input node waits for an authorized human. The request appears in the shared Slack operations channel, but seeing it confers no authority: approval goes through Port's permissions, so a prompt injection cannot make the agent approve its own draft.
- Before approving, the speaker asks the Release Desk agent, which reads the support system through an MCP connector, whether customer tickets mention anything the pages missed. Then "Ship it."
- The result: a changelog that should lead with the breaking change and the `400 size_system_ambiguous` error, a migration guide explaining why L differs between Austin and Osaka, updated client libraries, and briefings queued for the affected accounts' CSMs. The next breaking release triggers the same workflow automatically: the postmortem's fire alarm is installed.

### Why not just Copilot

The talk's honest counter-argument. A coding assistant can write good release notes from a diff, and given access to the CRM, support and fulfillment systems it might even work out the blast radius. But the diff does not know that KubeSummit has two thousand wrong shirts boxed up, or who owns the account. Rediscovering the company on every run is stochastic (the same release can yield a different blast radius), burns tokens, and means rebuilding integrations for every agent and system. The talk's position: whatever can be deterministic should be, so the same catalog state gives the same blast radius, and the agent's creativity is spent only where judgment helps.

### Roles are real: the comp request

Asked to give three high-revenue customers a month of service credit, the agent understands the request and finds the compensation workflow, but refuses: the speaker's login fails the permission check and never receives that workflow as a tool, however charming the request. Only Finance or a customer success manager with the right role can run it. This beat shows that the human gate earlier means something: authority is enforced by permissions, not by the agent's judgment. ("Apparently, remorse is not an RBAC role.")

### The reveal: a factory that builds factories

A workflow nobody remembers creating appears: "Release docs: stale-page detection and generation". It starts when a release ships, collects context from the catalog, asks an agent to draft, stops for human approval, notifies the CSMs and publishes: the same fire alarm, with a slightly worse name. The run history shows it came from the Continuous improvement workflow, started by an event rather than a person. The event was the label on the abandoned postmortem; the action item text asked for exactly this.

Continuous improvement calls a Workflow Builder agent. Its prompt says to build a workflow from the requested outcome and load the authoring skill first; the skill says to discover the catalog, put a human before customer-facing changes, and verify what was created. Nothing in either is specific to documentation. The action item supplies the job, and the same agent and skill can build the next line. Checking the generated workflow against the rule stated at the start is the audit the abstract promises: did it build what was asked, and did it keep human approval before publication.

### The close

Two software factories now exist: the release workflow built by hand, and the one generated from the postmortem, plus the factory that builds factories (the speaker likens it to Spring Framework circa 2015). The ask: take an action item your team keeps copying from one postmortem to the next and make it a workflow, or build the factory that turns postmortems into workflows. It bookends the opening promise: "Now that you've seen something cool, go and build something cool."

### Key distinctions

- Deterministic retrieval (catalog queries over modelled relationships) versus creative generation (one AI step, governed by skills).
- Being able to see an approval request versus having the authority to answer it.
- A workflow that ships documentation versus a workflow that builds workflows from deficiencies.
- Demo-specific setup (Printf, its catalog, its skills and services) versus the general pattern the talk recommends.

### Caveats

- Printf, its customers and its incident are fictional. The GitHub repositories, Port organization, workflows and agents used in the demo are real demonstration artifacts.
- The AI steps are live model calls. The changelog may not lead with the breaking change on a given run; the speaker's prepared response is that this is what the human review is for. Size numbers in generated text vary and are not part of the claim.
- The builder typically needs ten to twelve minutes (measured between two and thirteen) after the label is applied. If it has not finished by the reveal, the prepared plan is to show the run still in progress; if it fails, to show the failed run.
- The CSM briefing node posts to a demo support service; no real customer success manager receives a message.
- This is a sponsored session on Port. Feature descriptions reflect the demo; check Port's documentation for current product behavior.

### Sources

- Talk page, slides and (after the event) recording: https://speaking.jbaru.ch/talks/kubecon-na-2026-factory-of-factories/
- Printf repositories: https://github.com/printf-tshirts-printing
- Port Workflows: https://docs.port.io/workflows/overview/ ; input nodes (approval): https://docs.port.io/workflows/build-workflows/nodes/input/ ; workflows as tools: https://docs.port.io/workflows/expose-as-tool/ ; permissions: https://docs.port.io/workflows/permissions-and-rbac/permissions/
- Context Lake: https://docs.port.io/context-lake/overview/ ; AI agents: https://docs.port.io/agent-management/custom-agents/overview/ ; skills: https://docs.port.io/agent-management/skills/overview/ ; MCP connectors: https://docs.port.io/agent-management/mcp-connectors/
- The AI DevCon NYC 2026 version of the title: https://speaking.jbaru.ch/talks/aidevcon-nyc-2026-factory-of-factories/

### Provenance

Built before delivery from the approved talk outline, script and demo playbook, and from the talk's planned rhetorical architecture (a narrative arc from setup to the hand-built line to the reveal, with the Copilot beat as its inoculation and the opening promise bookended at the close). It does not yet draw on delivery-specific analysis; it will be refreshed against the recording and its analysis after the event.
