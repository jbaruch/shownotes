---
name: aidevcon-2026-factory-of-factories
description: >
  Explain or summarize "The Software Factory of Factories", Baruch Sadogursky's
  (Port) AI DevCon NYC 2026 talk. Use for questions about its argument: why
  enterprise approvals turn into rubber stamps when coding factories speed up,
  what an approval means, engineering the signal each approver needs, the
  context lake shared across departments, governed workflows, and why
  Compliance ends up approving the operating process. Covers this talk's
  fictional committee (Bill, Brent, John, Patty, Monica, Sarah, Ruth) and its
  sources, not a setup runbook.
---

# The Software Factory of Factories — AI DevCon NYC 2026 talk knowledge

Process steps in order. Do not skip ahead.

## Step 1 — Match the question

Use this brief for summaries, explanations and questions about the 25-minute
talk at AI DevCon NYC 2026 (Brooklyn, November 4, 2026), given right after Guy
Podjarny's keynote on software factories. This brief was written before the
talk was delivered: it describes the prepared talk (narrative, slides and
speaker notes), not a recording. If someone asks what happened on stage, say
the brief reflects the prepared talk. For a different talk or an unrelated
implementation task, say so and finish; otherwise continue to Step 2.

## Step 2 — Answer from the brief

Answer at the requested depth using the material below. Keep apart what the
talk claims, what its fictional story illustrates, and what the cited sources
say. The company, people and meetings are fictional; never present them as a
real customer or incident. Ordinary summaries need no network access; open a
linked source only for an exact quote or a detail absent here. Do not invent
quotes, numbers or audience reactions. Finish after answering.

## Talk brief

### Thesis in one paragraph

A software factory that writes code fast does not make an enterprise ship
fast, because every department still has to approve, and under pressure each
approval degrades into a signature that records a name without establishing
anything. The fix is not fewer approvers or faster rubber stamps. Each
approver first defines what their approval means ("When I hit Approve, I am
saying that…"), then the company engineers the signal that supplies the
evidence for that statement. Only one approver's evidence lives in the
repository; the rest lives in company systems. So the substantial, shared
engineering work is a context lake: the company's records and the
relationships between them, kept current and owned. On that foundation each
department can assemble its own governed workflow for practically nothing.
The resulting decision process is also the demonstrable oversight Compliance
needs.

### Format and why it is satire

The talk is a mockumentary of four meetings of the "Enterprise Autonomous
Delivery Enablement Steering Committee", plus a calendar update. The fiction
lets the audience recognize their own company without anyone being blamed:
the meetings overrun, the slides are whiteboards and sticky notes, and the
cast looks into the camera. It opens as a respectful continuation of the
keynote ("You are not Tessl. You have a steering committee.").

### The cast and what each one decides

- **Bill**, VP of Engineering: wants a factory for every team; owns the
  release-exception decision.
- **Brent**, checkout service owner: the viewpoint character; his
  Engineering approval is the first one defined.
- **John**, Security: judges a security requirement or accepts an exception.
- **Patty**, SRE: judges deployment conditions.
- **Monica**, Finance: authorizes spending on specified work.
- **Sarah**, Product: her customer commitment informs Bill's release
  exception.
- **Ruth**, Compliance: must demonstrate the company's oversight; her arc is
  the climax.
- **The robot**: the factory. Competent throughout; the problem is never the
  factory.

### How the argument progresses

**Meeting 1 — Kickoff.** Everyone votes for autonomous delivery. Brent gets
release sign-off "within existing responsibilities", reads the first pull
request properly, and drowns as more arrive. Bill asks for "a risk-based
approach and faster approvals."

**Meeting 2 — The pain multiplies.** A whiteboard drawing of the factory gains
one gate per stakeholder: John's security checkpoint, Patty's operational
barrier, Monica's funding toll booth, Sarah's THURSDAY deadline. Ruth blocks
company-wide rollout: "Someone needs to check every action" — an inspector at
every station. Monica asks how many tokens checkout will cost; Bill only knows
how to estimate human effort. Bill then shows off Brent as the example: Brent
explains that he and Bill first agreed what his Engineering approval means,
then had the factory derive the signals from the codebase (policy checks,
tests, review findings). He investigates questions that need his judgment
instead of reading every line; missing evidence sends the work back.

**Meeting 3 — Signals.** Everyone asks "When I approve, what am I saying?"
and writes it down; purposeless sign-offs ("Acknowledged", "FYI", "Seen by")
are shredded while required controls stay. Then the bill arrives as a
never-ending receipt of everything that must be built to obtain each signal:
security findings, service catalog, dependency map, incident feed, freshness
checks, delivery records, token usage, cost attribution, forecasts, customer
commitments, release policy, decision records, audit trail. The key point:
only Brent's evidence lives in the repository. Patty's worked example follows
checkout to a service dependency with an active incident, which this
company's release policy routes to Bill as an exception; a stale incident feed
pauses the workflow until the evidence is refreshed; every source needs an
accountable owner and matching service identities. Monica and Bill find a
better cost estimate than human effort: token usage harvested from the
agents' own logs, correlated with delivered work, projected as a range (not a
promise) for planned volume. The approved allowance is enforced by the runner,
which pauses and asks Monica for more. How does each of them get that evidence
without a new integration project for every request? Brent draws one shared
context lake underneath the blueprint: the same company records (services,
owners, dependencies, incidents, delivery, token costs) and the relationships
between them. John, Patty and Monica ask it different questions, and nobody
rediscovers the organization for every request. Back in the conference room,
each approver receives one folder, filled from the lake, with the evidence for
their own decision and nothing else. Missing evidence is neither signed
through nor a failed run: it requires investigation, first by the agent (refresh the stale feed, find the
owner, rerun the check), then by the human who owns that source if the agent
still cannot establish the facts. Before execution, the workflow checks that
the scope and current conditions still fit the decision; a recorded signature
is useful only alongside the controls that determine what happens next.

**Meeting 4 — Enterprise context consolidation.** Brent, delighted, wants to
build the context lake himself: integrations, ingestion, an entity graph,
freshness, permissions, governance, an audit log, "v1: 2 weeks". Bill sees the
cost. Collecting, reconciling and keeping those records current is the
expensive, never-ending part of that shared foundation, while a custom
workflow on top of an adopted platform costs practically nothing. They adopt;
Brent is the only one heartbroken. Product gets capacity back, Security gets
an assessed tool, Finance avoids a duplicate build, Compliance reuses the
platform's certifications and audit reports. The foundation also governs
agents, skills and MCP servers: owners, access, attributed costs, activity
records. Writing a workflow grants no authority: a robot's self-written
permission slip to remove a control still meets Ruth. Bill braces for a new
compliance gate; instead Ruth maps her requirements onto the decision paths
already built (meaning and owner, evidence, enforced boundaries, records),
approves the operating process, and the factory runs routine work
automatically while exceptions escalate.

**Close.** The standing approval-collection meeting is cancelled. Three
takeaways: define what approval means; find the signal that supplies the
information; check where you can build that signal for free.

### Distinctions the talk insists on

- Implementation review, release decisions, spending authorization and
  compliance attestations are different approvals needing different evidence.
- Signals support decisions; they do not replace accountable owners. Bill's
  release exception and Monica's extra spend remain human decisions.
- A forecast informs a budget; an enforced allowance bounds execution.
- Adopting a context platform does not decide what approvals mean; the
  company still owns its definitions and sources.
- Context does not guarantee correctness, and human review is not useless; the
  target is purposeless ceremony, not legitimate controls.
- Regulation still prescribes controls; the talk claims the engineered process
  produces the evidence of oversight, not automatic compliance.

### Sources the talk draws on

- DORA research: heavyweight external change approval slows delivery and is not
  associated with fewer failed changes; peer review plus automation can meet
  segregation of duties. https://dora.dev/capabilities/streamlining-change-approval/
- Google's code-review standard as a one-sentence approval meaning: approve
  once a change definitely improves overall code health, even if imperfect.
  https://google.github.io/eng-practices/review/reviewer/standard.html
- Buçinca et al. (CSCW 2021): people prefer AI-assisted setups that ask them to
  think less, and perform worse with them. https://arxiv.org/abs/2102.09692
- SRE error-budget policy as a release decided by a signal.
  https://sre.google/workbook/error-budget-policy/
- OpenTelemetry GenAI conventions for token-usage telemetry (Development
  status). https://opentelemetry.io/docs/specs/semconv/gen-ai/gen-ai-metrics/
- EU AI Act Article 14: oversight commensurate with risk, enabling people to
  understand, watch for automation bias, interpret and stop the system; it
  applies to high-risk systems.
  https://ai-act-service-desk.ec.europa.eu/en/ai-act/article-14
- Port documentation on the context lake, workflows and AgentOps governance;
  the speaker works at Port, and the talk is deliberately not a product demo.
  https://docs.port.io/context-lake/overview/

### Calls to action

PortCon with code `DevRel_Guest30%`; trying Port's free tier to build one
workflow for one decision; shownotes at https://speaking.jbaru.ch.
