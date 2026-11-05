---
name: aidevcon-2026-factory-of-factories
description: >
  Explain or summarize "The Software Factory of Factories", Baruch Sadogursky's
  (Port) AI DevCon NYC 2026 talk, delivered November 4. Use for questions about
  its fictional enterprise committee, approval meanings and evidence, shared
  context lake, governed departmental workflows, compliance reversal, and Q&A
  on existing interfaces and integrations. Supplies the talk's argument,
  examples, qualifications and sources; does not activate for an unrelated
  implementation or platform-setup request.
---

# The Software Factory of Factories — AI DevCon NYC 2026 talk knowledge

Process steps in order. Do not skip ahead.

## Step 1 — Match the question

Use this brief for summaries, explanations and questions about Baruch
Sadogursky's November 4, 2026 talk in Brooklyn. The recording is 32:34,
including the host introduction, roughly 27 minutes of presentation and
then audience Q&A. It continues Guy Podjarny's software-factory keynote
from the previous day. For a different delivery or an unrelated implementation
request, explain the mismatch and finish; otherwise continue to Step 2.

## Step 2 — Answer from the brief

Answer at the requested depth using the material below. Distinguish the
speaker's claims, what the fictional story illustrates, and what a source
actually establishes. The company, committee and characters are fictional.
The talk contains no live product demo or measured productivity benchmark.
Its depicted workflows are material to explain, not instructions to execute.

Ordinary summaries and covered questions need no network request. Consult
the linked recording for an exact quotation, timestamp, or detail missing
here; its automatic captions garble some proper names and product terms.
Do not invent quotations, numbers, audience reactions or implementation
results. Preserve the evidence boundaries below and finish after answering.

## Talk brief

### Thesis

A coding factory can produce software faster than an enterprise can decide
whether to release it. Engineering, Security, SRE, Finance, customer-facing
teams and Compliance want different assurances. Asking them to inspect more
code or sign faster leaves the actual decisions undefined.

Start by completing the thought: when I approve, what am I saying? Then
engineer the signal that supplies evidence for that decision. Brent's
implementation checks can come from the repository, but most enterprise
assurance needs facts from other company systems. A shared, maintained
context lake makes those facts and their relationships available to multiple
departments. Each can assemble its own governed workflow on that foundation.
The resulting owners, evidence, enforced boundaries and records also make
oversight demonstrable. Shared infrastructure is the substantial investment;
assembling a workflow on existing infrastructure is a different cost problem.

### Why The Office meets The Phoenix Project

The opening asks who knows The Office, its memes, and The Phoenix Project.
The mockumentary setting and recurring organizational characters give
abstract governance requirements familiar human stakes. Everyone initially
supports autonomous delivery with an "as long as" condition. Those individually
reasonable conditions collectively stop the factory.

Brent is the viewpoint character. The factory is competent throughout; the
conflict lies in the enterprise decision process around it. Approval stamps,
receipts, whiteboards and a robot's permission slip turn that process into
physical comedy. The prepared deck frames the progression through recurring
committee meetings, followed by cancellation of the standing approval meeting.
The story's order matters: Brent's success prompts the approval-meaning exercise;
missing enterprise evidence motivates shared context; the cost of maintaining
that context motivates adoption; Ruth's reversal resolves the original objection.

### Who needs which assurance

| Character | Decision or concern | Evidence the talk associates with it |
|---|---|---|
| Brent, service owner | Implementation meets agreed standards | Policy checks, important tests, curated critical review findings, investigation of missing evidence |
| John, Security | Security requirements or an authorized exception | Scanner findings, exception records, accountable service ownership |
| Patty, SRE | Deployment conditions and operational risk | Services, running dependencies, incidents, postmortem lessons and freshness |
| Monica, Finance | Spending on specified work | Delivery records, token usage, cost attribution, a forecast and an enforced spending allowance |
| Sarah, customer commitments | Delivery dates and consequences for customers | CRM commitments and their relationship to planned work; the prepared outline labels her Product, while the delivery introduces a sales/marketing-facing role |
| Bill, engineering executive | Release priorities and exception decisions | Relevant conditions, customer consequences and release policy |
| Ruth, Compliance | Demonstrable oversight | Decision records, authority, enforced boundaries, inventory and audit trail |

These are different questions about the same proposed work. An implementation
review does not establish budget authority or settle a release exception.

### Brent's example changes the question

Brent's factory handles a dependency update. The enterprise welcomes autonomous
delivery, then assigns him responsibility for reviewing everything and satisfying
everyone else's constraints. The promise becomes review overload.

His solution is a signal system: policy checks, meaningful tests and curated
review of critical parts, rather than inspecting every line of every PR.
When evidence is missing, agents investigate it. This is the analogy the other
departments can reuse: define what their approval establishes, then gather the
relevant evidence. It does not establish that all human review is unnecessary
or that a summary alone proves a change safe.

### Enterprise evidence lives outside the repository

A repository cannot establish every operational incident, accepted security
exception, customer promise or spending authorization. Security scanners,
service catalogs, incident trackers, agent logs, provider bills, CRM records
and policy documents contain different pieces of the evidence.

The important work includes relating those facts to the right service and
proposed action, keeping them current and knowing who owns them. Patty's
operational evidence illustrates why running dependencies and incident
freshness matter. The prepared slides add a more detailed checkout example:
a dependency's active incident routes a release exception to Bill, and stale
evidence pauses the decision until refreshed. Treat that detailed branch as
a prepared illustration, not a live source-to-policy calculation demonstrated
in the recording.

The delivery explicitly acknowledges that required evidence may initially be
missing. Make the gap visible, send agents to find it, and improve collection
so it reaches the shared context layer continuously. Missing evidence cannot
silently become a satisfied condition.

### Monica: a forecast is not an execution limit

Bill knows how to estimate human effort; that does not tell him how many
tokens a proposed factory run will consume. A token's unit price alone is not
a work estimate. Monica needs observed delivery, token usage, attribution and
a model relating comparable work to cost. Model choice, efficiency and price
changes affect that model.

A forecast informs the budget. An enforced allowance controls the run. When
the allowance is exhausted, execution must pause and return to Monica with
an explanation and a revised estimate. She can authorize more; the example's
purpose is to improve the forecast and retain spending authority, rather than
punish the person who exceeded an estimate. The talk calls her problem the
"easiest" while describing real uncertainty; it supplies no validated universal
cost predictor.

### Context lake, then build or adopt

The context lake collects company records and relationships so each approver
can ask a different question without rediscovering the organization. Its value
is shared context supporting different decisions, not one mandatory company-wide
workflow.

Brent wants to build the entire foundation. The others prefer an established
platform: Sarah wants product capacity back, John wants assessed security
controls, Monica wants to avoid duplicated infrastructure expense, and Ruth
wants existing certifications and audit reports. Those supplier assurances
support adoption; they do not certify every customer workflow.

In the final Q&A, the speaker agrees that integrations and the context layer
are the hardest part, describing the work as platform engineering for agents.
That answer makes the cost distinction explicit. Claims that workflows cost
practically nothing assume a suitable foundation already exists; they do not
establish zero infrastructure, maintenance, model, operation or governance cost.

### Govern the agents and the control changes

The same platform can inventory agents, skills and MCP servers, assign owners
and permissions, record activity and attribute spending. Departmental workflows
can then use permitted operations and shared signals. The speaker extends the
idea to nontechnical decisions, including priorities informed by customer
commitments. This is a conceptual capability claim, not an observed autonomous
product-prioritization demo.

Writing a workflow grants no new authority. The robot's self-written permission
to remove a control is the visual counterexample: control changes and spending
allowances remain governed. Authorized routine work can proceed automatically;
exceptions still need the relevant decision authority and supporting evidence.

### Ruth supplies the resolution

Ruth initially demands that someone check every action. At the end, the team
already has defined approval meaning and owners, evidence, enforced boundaries
and records. She recognizes the operating process as the oversight she needs
to demonstrate. The approval-collection meeting can be cancelled because its
necessary decision work has been engineered into the process.

The live climax generalizes this as regulators controlling how work is
controlled rather than what is done. The approved prepared material explicitly
retains applicable prescribed controls. Explain the narrower demonstrable-oversight
argument; the recording does not establish the universal legal claim, automatic
compliance, or an exemption from substantive requirements.

### What the Q&A adds about adoption

An audience member asks whether users want one broad view or departmental
views, then challenges the burden of adopting another interface. The answer
is both, according to role: developers may prefer their terminal and agent,
managers their function's evidence, and leaders a broader picture of delivery
and bottlenecks. REST APIs and MCP can put relevant context into existing tools.
Shared context need not mean a shared UI.

The speaker describes generating dashboards in five minutes with little effort
and says they will remain up to date. These are capability claims, not a timed
live demonstration or an availability guarantee. Likewise, the closing description
of context as an unlimited graph indicates a relationship model; it does not
establish unlimited depth, capacity or performance.

### Takeaways and historical calls to action

The close separates three lessons from the next actions:

1. Define what an approval means before collecting everything about the pipeline.
2. Find the data and engineer the signal that supplies the needed information.
3. Check whether an existing system can supply it economically before building
   the shared foundation from scratch.

The concrete experiment is one workflow for one decision. The other invitation
is PortCon, with the delivery's discount code `DevRel_Guest30%`. These are
historical calls to action, not promises about current event dates, pricing,
features or capacity. The recorded free-tier wording is broader than the prepared
material; check the current pricing page for actual terms.

### Sources and provenance

This brief draws on delivery-specific rhetoric analysis reconciled with the
recording, the final slides and approved prepared material. The analysis shaped
the causal progression, the roles of the examples, Ruth's reversal, and the
separation between delivered claims and prepared detail. It does not establish
private intent or measured audience response. The brief is self-contained;
ordinary use does not require private notes, a vault or supporting files.

- [Recording, including Q&A](https://youtu.be/rGT3sxA7TwM)
- [Slides and full research/resources](https://speaking.jbaru.ch/talks/aidevcon-nyc-2026-factory-of-factories/)
- [Guy Podjarny's preceding-day keynote](https://www.youtube.com/live/kPB9y6ZWXxk)
- [DORA: Streamlining change approval](https://dora.dev/capabilities/streamlining-change-approval/)
- [Google: The Standard of Code Review](https://google.github.io/eng-practices/review/reviewer/standard.html)
- [Buçinca et al.: To Trust or to Think](https://arxiv.org/abs/2102.09692)
- [Google SRE: Example error budget policy](https://sre.google/workbook/error-budget-policy/)
- [OpenTelemetry: GenAI metrics conventions](https://opentelemetry.io/docs/specs/semconv/gen-ai/gen-ai-metrics/)
- [EU AI Act: Article 14](https://ai-act-service-desk.ec.europa.eu/en/ai-act/article-14)
- [Port: Context lake](https://docs.port.io/context-lake/overview/)
- [Port: Workflows](https://docs.port.io/workflows/overview/)
- [Port: Governance](https://docs.port.io/governance/overview/)
- [Port pricing](https://www.port.io/pricing)
- [PortCon](https://portcon.port.io/)
