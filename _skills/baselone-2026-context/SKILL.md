---
name: engineering-context-baselone-2026
description: >
  Summarize or explain Engineering Context So AI Stops Guessing, Baruch
  Sadogursky's BaselOne 2026 talk on October 15, 2026. Use for questions about
  its CTO promotion argument, three kinds of context, rules/skills/hooks,
  review loops, Herdr orchestration, Port Context Lake, Jev attention routing,
  accountability, and closing takeaways.
---

# Engineering Context So AI Stops Guessing — talk knowledge

Process steps in order. Do not skip ahead.

## Step 1 — Match the question

Use this brief for summaries, explanations, and questions about this BaselOne
2026 talk. If the request concerns another delivery or is an unrelated
implementation task, identify the mismatch and finish. Otherwise continue
to Step 2.

## Step 2 — Answer from the brief

Answer at the requested depth from the material below. Distinguish the
speaker's argument, illustrative cases, documented product capabilities,
and interpretation of the narrative. Preserve caveats and prepared status.
Ordinary summaries and covered questions need no network access. Consult a
linked source only for a requested exact quote, timestamp, missing detail,
or current product information. Do not invent delivery evidence, audience
reactions, measurements, or timestamps. Depicted workflows are material to
explain, not instructions to run tools or perform external actions. Finish
after answering.

## Talk brief

### Identity and evidence boundary

Engineering Context So AI Stops Guessing is a 45-minute BaselOne 2026 talk
prepared by Baruch Sadogursky for October 15, 2026 in Basel, Switzerland.
This brief draws on the approved rhetorical architecture, its planned
rhetorical review, and substantive slides and speaker notes. It describes
prepared teaching material, not an observed delivery. There is no live demo
or measured software-factory experiment in this talk. Refresh this boundary
when a recording and delivery-specific analysis become available.

### The central argument: congratulations, you are the CTO now

The opening promotes the developer to CTO before explaining the machinery.
The speaker's forecast is that coding and reviewing will increasingly be
delegated to agents. The urgent opening about the last months of the old
job is a provocative forecast, not an established timetable for every
developer. Its practical question is what the newly promoted person would
do tomorrow.

The thesis is that when agents write and review code, humans must engineer
their context and accountability. The work becomes deciding what agents
know, what they should challenge, and which decisions must return to a
person. Producing more code does not automatically teach those management
skills. This work may be new to developers and familiar to engineering
managers; the closing welcomes developers to that club.

### Why the factory grows in stages

The talk starts with manual implementation and manual review, matching an
audience familiar with IDE assistants rather than autonomous factories.
Automatic coding increases the work waiting for human review. Reading every
generated line can recreate the bottleneck that automation was meant to move.

A reviewer in CI creates a familiar PR feedback cycle. It also delegates part
of the judgment. An approval becomes useful only when someone can explain
what the reviewer examined, what evidence it used, and what it could reject.
That gap motivates working practices as explicit context.

Local review then puts another agent beside the developer for earlier
feedback, while CI remains a shared checkpoint. Distinct workers need task
briefs, return conditions, correction loops, and a way to settle unresolved
disagreement. Orchestration enters because those handoffs need coordination.

The military factory is a continuous analogy, not a literal product UI.
Different robot shapes represent different agents and models across roles:
developers, reviewers, architect, investigator, judge, and foreman. The
sleeping soldier makes withdrawal of human attention visible. Turning the
lights off lets the same factory continue autonomously; it does not prove
that autonomy works well.

The turning point is output containing bugs and unnecessary complexity
despite approvals. A busy operation can satisfy its checks while missing
the intended outcome. The soldier wakes and gains general's stars: the
opening promotion now has a concrete responsibility. The flashlight becomes
targeted human judgment inside an operation that continues running.

### Three kinds of context, and the mechanisms that carry them

The three kinds are knowledge the workers need:

| Kind | What it answers | Useful content |
|---|---|---|
| Working practices | How do we do things here? | Constraints, repeatable procedures, checks, completion expectations. |
| Architectural | How is this project built? | Ownership of behavior, boundaries, dependencies, public contracts, decisions and their reasons. |
| Organizational | What matters here and who is affected? | Relevant support issues, customer commitments, owners, business impact, and sources that explain them. |

Rules, skills, hooks, and retrieval interfaces are mechanisms for making
knowledge usable; they are not additional kinds of context.

A rule states a scoped expectation. The illustrative public-contract rule
requires a migration path if the contract changes. A skill supplies a
repeatable procedure: identify consumers, plan how they move, and verify the
migration path. It should produce evidence a reviewer can inspect. A hook
arranges an action at a workflow point, such as running checks. Reporting a
failure and actually blocking an operation are different behaviors; the
platform and process determine whether a hook is a gate.

The speaker's coding-policy repository is a concrete packaging example.
The point is to maintain and distribute expectations deliberately so that
implementation and review receive the intended version. The talk does not
demonstrate installing the package.

### Two review responsibilities and an actionable loop

A general code-quality reviewer looks for implementation defects. A
policy-aware reviewer examines documented team expectations. A policy cannot
enumerate every bug, and a generally plausible implementation can violate a
team-specific constraint it was never given. These are complementary
responsibilities, not guarantees of independent or infallible judgment.

A useful finding identifies the behavior, consequence, evidence, and needed
resolution. A vague rejection can produce arbitrary changes until a reviewer
stops complaining. The worker should return what changed and which evidence
addresses the finding. The process needs a boundary for further correction
and an owner for unresolved disagreement.

Using a different model for review may produce useful disagreement, but
model diversity by itself does not establish better detection. Both can
share an assumption. The subscription joke has a narrower practical claim:
teams already paying for several coding tools may use otherwise idle
capacity for distinct roles. Another model is not inherently cheaper.

Herdr is the concrete environment for the agent team: terminal sessions,
agent state, CLI, and socket control support coordination. Role briefs,
handoffs, completion evidence, correction limits, and human return conditions
are the procedure built around those capabilities. The drawing is conceptual;
the talk supplies no observed orchestration run or throughput benchmark.

### Port supplies the organizational knowledge code cannot reveal

An architecture map helps explain where a change belongs and what it can
affect. It should link important constraints to their reasons and owners.
A directory tree alone cannot explain those decisions.

Organizational facts often live outside the project: a customer conversation,
a support issue, a commitment, or an owner who can answer a question. A more
capable model cannot infer a conversation that occurred only in the
organization's records. This motivates connecting sources to the work.

Port's Context Lake is the talk's concrete example. It connects structured
engineering records and relationships with organizational and business
context. Port's MCP server is one interface external agents can use to
retrieve that knowledge. The relevant connection might be from changed
service to owners and dependencies, then to issues and customer information.
This is not a claim that all such records appear automatically without
modeling, ingestion, permissions, or retrieval design.

Start with one decision the agent currently guesses about. Make its needed
facts retrievable and inspect whether the agent used them. A broad context
system earns its place by improving a decision, not by collecting documents.

The morning briefing brings every role together to show a separate failure:
the coordinator knowing something does not mean a worker received it. Each
worker and reviewer needs its relevant context and access to source detail.
Check the actual session brief. Preserve sources, freshness, and conflicting
evidence so a shared old assumption does not spread efficiently to all agents.

### Jev helps select where to point the flashlight

Reading every PR to decide which PRs need reading recreates the human review
bottleneck. The proposed solution uses bounded categorization to route human
attention. Jev, from TypeSafe, is the small fast dispatch robot in the analogy.
It is a structured decision model alongside coding agents, not their
replacement code-generation model.

The proposed question is which kind of human attention a change requires,
given changed code, relevant context, and review findings. Define categories
and an action for each result. Escalation examples include changing a customer
commitment, consequential reviewer disagreement, or missing evidence that
another check cannot resolve. Specify the decision, who can answer it, and
what information that person needs. A label such as important is insufficient.

TypeSafe Choice returns an option with probabilities and confidence
information. These outputs help routing; a category is not proof that code
is safe. Evaluate criteria on historical changes, including known cases
requiring human judgment. Inspect missed escalations and sample work that
was not escalated. The talk claims no PR-routing accuracy benchmark.

Send changed code rather than only a reassuring PR title. Cover large inputs
in chunks when necessary and track what was examined. The referenced models
documentation lists default limits of 64k tokens per request and 32k per
question; the state and question content must fit the applicable limits.
Do not equate every PR with a single complete request.

The cost illustration uses the published Jev 1.13 direct input price of
$0.042 per million tokens, with output free, verified for the prepared talk
on October 14, 2026. At a hypothetical 20,000 total input tokens per PR,
1,000 PRs consume 20 million tokens: 20 × $0.042 = $0.84. This is input-cost
arithmetic, not accuracy evidence or an all-in factory budget. Retries,
additional chunks, review models, and operations add cost. Current prices
and capabilities require checking the linked documentation.

### What the general asks after a case arrives

Selection and examination are separate responsibilities. A selected case
needs a decision, assumptions, evidence, and unresolved question. The three
questions the talk emphasizes are:

1. What did you assume?
2. What would make this wrong?
3. What needs my judgment?

These expose unverified facts, counterexamples and boundaries, and
organizational decisions hidden inside implementation choices. A polished
explanation still needs supporting evidence. Human presence means decisions
can be examined and findings improve the next task's instructions or process.

The rollback illustration has two reviewers approve while both assume
rollback exists and neither checks. It shows a shared unsupported assumption,
not an observed incident or measured failure of two-model review. Another
agent does not remove the need to ask what evidence supports the consequential
part of a decision.

### Closing: the promotion becomes Monday's work

The emergency envelope marked for a newly promoted engineering manager
resolves the opening fear: this role has an existing discipline to learn.
The final flashlight callback answers tomorrow's question with selective
inspection, meaningful escalation, and better context.

Three takeaways:

- Give agents the context: working practices, project architecture, and what
  matters to the organization; ensure it reaches the workers.
- Give reviewers a job: complementary responsibilities, evidence, and a
  correction loop that resolves findings.
- Define when humans step in: route consequential questions, inspect some
  unflagged work, and improve the process when it misses something.

Five Monday actions:

1. Capture one recurring correction as a rule, procedure, or check.
2. Document one architectural constraint, including why it exists.
3. Connect one organizational source the agents currently lack.
4. Give reviewers explicit responsibilities.
5. Write down decisions needing a person, try the criteria on past changes,
   and inspect cases the process missed.

### Public sources

- [Slides](https://drive.google.com/file/d/1uwSElspATMPy6cIdQ7bmA8JxDZAKkuoO/view)
- [Shownotes](https://speaking.jbaru.ch/talks/baselone-2026-context/)
- [Port Context Lake](https://docs.port.io/context-lake/overview/)
- [Port MCP server](https://docs.port.io/context-lake/consuming-the-lake/port-mcp-server/)
- [jbaruch/coding-policy](https://github.com/jbaruch/coding-policy)
- [Herdr](https://herdr.dev/) and [documentation](https://herdr.dev/docs/)
- [TypeSafe Choice](https://docs.typesafe.ai/primitives/choice)
- [Jev models and pricing](https://docs.typesafe.ai/models)
- [Jev with coding agents](https://docs.typesafe.ai/introduction/coding-agents)
