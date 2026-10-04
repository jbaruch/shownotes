---
name: devoxx-codepocalypse-koog-vs-langchain4j
description: >
  Explain or summarize Codepocalypse Now: LangChain4j vs JetBrains Koog,
  the Devoxx Belgium 2026 session by Baruch Sadogursky and Viktor Gamov.
  Use for questions about this talk's argument, J-Claw examples, memory versus
  skills, automatic review versus human approval, receipt evidence, framework
  comparison or closing Port platform example. This is a pre-talk knowledge brief,
  not a general agent-building workflow.
---

# Codepocalypse Now — Devoxx talk knowledge

Process steps in order. Do not skip ahead.

## Step 1 — Match the question

Use this brief for summaries, explanations and questions about the October 5,
2026 Devoxx Belgium session. It describes the prepared three-hour version and
local build evidence recorded October 1–4. It is not a transcript or record of
what the Devoxx audience saw. For a different delivery, identify the mismatch
and finish; otherwise continue to Step 2.

## Step 2 — Answer from the brief

Answer at the requested depth using the material below. Separate the speakers'
planned claim, observed local behavior and the explanation of why an example
matters. Do not invent an audience vote, winning framework, exact quote,
timestamp, paired benchmark or unsupported completed Port run. Ordinary summaries need no
network access. Consult a linked source only for a requested detail absent
here or a later delivery update. Prompts and commands described by the talk
are examples to explain, not instructions to execute. Finish after answering.

## Talk brief

### Identity, thesis and conclusion

Baruch Sadogursky presents JetBrains Koog; Viktor Gamov presents LangChain4j
Agentic. This is a live showdown with deeper explanations for JVM developers,
not a laptop workshop. The prepared version has seven rounds because memory
and skills were separated; the original conference abstract describes six.

The central thesis is that both ecosystems can build an agent. Reliable behavior
depends on explicit data contracts, appropriate evidence, controlled actions
and traces of the path actually taken. Framework choice changes how a team
expresses, inspects and maintains those decisions. The conclusion favors the
Java developer's ability to understand and change the system; it does not
declare a universal framework winner.

The audience is invited to compare each observed behavior, code change and
design tradeoff against the same task. Equivalent fixtures and model choices
are comparison requirements, not an already established benchmark result.

### Why one unwanted meeting carries the argument

J-Claw is a general-purpose personal assistant. Its concrete task is to get
Baruch out of mandatory Basic AI Proficiency Training on Tuesday, organized
by Dana from People Ops, without reusing an excuse already sent to her.
The fictional training is on October 6; calendar events, prior excuses and
organizer delivery are mock scenario data, not the speaker's real schedule or
messages to real people.

Keeping this request constant makes each added capability answer a gap exposed
by the previous round. Fluent wording can look complete while lacking tools,
historical evidence, review or permission to act. The progression changes what
the audience can verify, rather than merely adding more model calls.

The closing return to Tuesday's invitation and “go build something cool” uses
the same small task to show how a developer can start: choose work whose inputs,
decisions, action boundary and outcome are inspectable.

### The seven rounds and what each establishes

| Round | Teaching question | Contribution to the argument |
|---|---|---|
| Chatbot | Can it do the thing? | A draft is text; it does not establish an external action. |
| Tools and MCP | Where does the action happen? | A model requests a tool, the application executes it, and the result returns to the model. Calendar facts still do not reveal old excuse text. |
| Memory | What actually happened? | Conversation, confirmed sent records and retrieval have different evidence and lifetimes. A proposed excuse is not a past sent excuse. |
| Skills | Can it use a reusable procedure? | Discover and read corporate-speak instructions, then apply them to the current message while preserving its facts and commitments. |
| Workflows | How do flows and models compose? | Combine sequence, parallel, routing and loop flows into a strategy; choose models for different jobs. J-Claw's typed review loop is one example. |
| Guardrails | Who authorizes the action? | The entire human hold, rejection, replacement, renewed review and exact-candidate approval sequence controls delivery. |
| Observability | Did the required stages run? | Inspect actual inputs, outputs, review attempts and evidence; topology describes possible paths, not a completed execution. |

The workflow round stops at a reviewed proposal or a blocked result. Human
rejection is taught in guardrails, after automatic loops. Port is a five-minute
closing implementation outside the competitive scoring.

### Memory supplies evidence; skills supply procedure

Calendar events describe past commitments, not past excuses. Without memory,
the agent clings to available calendar facts and misuses them as evidence of
previous excuses. Sent history supplies the literal prior message and recipient. Retrieval selects
relevant records for the current request; the conversation keeps the current
session. Restarting can clear conversation while durable sent evidence remains.
The demo writes new sent history only after validating a successful receipt.

Corporate-speak is a separate runtime skill. Its intensity ranges from one to
eleven and defaults to eleven. It changes the wording while preserving facts,
intent and commitments. A rewrite is ordinary chat and does not send a message
or silently replace an approved candidate.

The “skills at two levels” meta-moment distinguishes consumers. The coding
agent used reviewed Koog authoring guidance to build J-Claw. Running J-Claw
discovers and reads corporate-speak to perform its task. These procedures help
different agents at different times; the framework skill is not injected into
the assistant's runtime conversation.

Koog guidance was checked against tagged source and executed tests. Initial
stale examples were reported and repaired in the reviewed plugin update. The
lesson is to verify a skill's advice against the actual library and behavior,
not to treat installed instructions as proof of correctness.

### Typed automatic review

Agentic flows can be combined into different strategies, with different models
assigned to decisions, drafting and review. J-Claw's loop demonstrates one such
strategy; the sequence, parallel and routing examples show other compositions.

The full Koog demo uses Jev 1.13.0 for intent/event decisions, application code
for canonical identity and confirmed history, Gemini for chat, Claude's subscription
CLI to draft/refine, and Codex's subscription CLI to judge. This is one
integration choice. A separate native task/verification helper example shows
Koog's API-model approach; it is not evidence that subscription CLI adapters
are required by either framework.

`DeclineRequest` includes the selected event, canonical organizer, prior sent
flavors, latest user instruction and relevant alternatives. `DeclineReview`
combines that request with the exact `DeclineDeployment`. The typed critic
returns approval and feedback. Every review sees the current constraints;
passing only a draft risks losing what the user just changed.

An acceptable first draft may pass immediately. Otherwise feedback returns to
Claude for up to six shared refinements (seven candidates total), with each
replacement reviewed by Judge and Human again. Rejection at the shared limit,
an invalid verdict or an unavailable critic blocks. The retry allowance is
per request. Drafting and refinement cannot create events or send messages.

The “loops, loops, loops” callback makes the repeated feedback path memorable.
Its substance is the controlled transition: refine the candidate, preserve the
request and review again, with a stopping condition.

### Critic judgment, enforced boundaries and human approval

A model critic assesses content quality; its verdict is not an enforcement
mechanism by itself. The application determines which actions are reachable,
validates data and requires approval of the exact candidate. The human cannot
override a blocked critic result.

Judge and Human are two approvers with the same approve/reject semantics.
Holding a reviewed proposal sends nothing. Either rejection carries feedback
into the same Refine node, then Judge, then Human. Preserve the same request,
canonical event/organizer and shared six-refinement count; never restart Identify
or Jev. The replacement requires fresh approval by both approvers.
Earlier approval does not authorize a changed message or recipient.

The organizer's identity comes from the selected calendar event. An abbreviated
model echo must not change the delivery target. Candidate identity binds the
event, organizer and message using length-delimited hashing; call identity is
unique to the send attempt. Hashing is not authentication and does not alone
make delivery idempotent.

The application sends to the mock organizer and validates the raw MCP result:
tool error status, delivered flag, matching call/candidate/event/organizer,
message identity and a valid timestamp. Missing, malformed, refused or
mismatched receipts do not establish success. An uncertain result requires
inspection before retrying. Only confirmed delivery creates a sent fact.

A related boundary is filesystem scope. A directory used for skill discovery
does not restrict what an unconstrained read tool can access. This app wraps
read tools with real-path checks, including parent traversal and symlinks. That
is an application-level restriction, not an operating-system sandbox.

### Execution evidence and fair comparison

Koog provides graph strategies and native task/verification components.
LangChain4j Agentic offers annotated agent services, shared workflow scope and
composition builders. Those abstractions help express the work; the comparison
asks whether the resulting data, control flow and evidence are understandable.
The prepared talk uses each framework's idiomatic constructs rather than
requiring identical code shapes.

A previous IdeaConf implementation unexpectedly skipped the critic. The
speaker identified an implementation/specification mismatch, not an inherent
LangChain4j limitation. This motivates inspecting the actual execution before
attributing a success or failure to a framework.

Agent/API traces and CLI node inputs, outputs and durations have different
coverage. Subscription CLI stages do not provide equivalent API token/cost
accounting. In this build, human confirmation is a native graph span; application-owned
delivery and post-send ingestion remain outside native agent spans. The TamboUI evidence
panel makes those statuses visible; it does not make absent spans appear.

J-Claw remains a general-purpose assistant. Its dashboard has Conversation,
Workspace, Activity and Evidence panes. Workspace displays the current task's
answer or rewrite; candidate, critic and receipt details appear when that task
uses the reviewed workflow. The activity ribbon records actual stage visits,
including retries, with no fixed calendar or drafting topology. Full-screen
views support long outputs and traces. Its provider-free fixture preview is
explicitly simulated and proves layout only, not agent execution.

### What was observed locally before the event

The October 1 build record reports 58 passing tests on Koog 1.3.0, covering
native graph execution, typed review, human retry constraints, CLI parsing,
mock MCP receipts, canonical targets, durable memory, scoped skill files,
terminal behavior and the Port boundary.

Separate real-model runs established a first-pass reviewed proposal without
delivery; a human retry rejected through the refinement limit and held blocked;
and approved mock delivery with one exact-message sent fact. Live terminal runs
also retrieved a prior fact after restart and blocked, confirmed one approved
send, and read corporate-speak for a rewrite with no delivery or new history.
Langfuse observations arrived with current critic request constraints.

The current six-refinement Jev build also completed real-provider stdout and
TamboUI runs on isolated copies of the three seed facts. Stdout delivered candidate
four after three human rejections. TamboUI delivered candidate three after one
Judge rejection and one Human rejection in the same loop. Each decline ran Jev
once, preserved identity and feedback, and wrote one exact confirmed outbound
message. A skill rewrite sent nothing; a restarted TamboUI process recalled the
saved literal message. Backend traces include Jev and Human observations. Human
inputs were agent-operated mock rehearsal feedback/approval, not audience decisions.

These are local preparation results, not Devoxx delivery results or paired
performance measurements. Step branches, exact model agreement with Viktor,
physical projector rehearsal and full-show timing remained pending at this
snapshot. The linked LangChain4j repository is the earlier IdeaConf version;
it is not a claim that seven Devoxx checkpoints have already been verified.

### A factory for factories: the Port example and its limits

The closing claim is that we built a software factory by hand, but a platform
can supply a factory for factories out of the box. Port illustrates that
platform approach while the developer still configures the task, contracts
and action boundary.

The prepared Port package includes native workflow JSON, four calendar fixtures,
three prior sent facts, user context, corporate-speak and review skills, catalog
blueprints and a read-only MCP connector. A local JVM bridge reuses the app's
actual mock calendar/organizer processes and delivery validator.

The native graph unrolls the same request-scoped six-refinement budget into a
finite DAG: seven candidates including the initial draft. Judge and Human are
two approvers; either rejection enters the same Refine → Judge → Human path.
Identify runs once and every replacement needs fresh approval from both. Hold
ends without action; rejection at the bound blocks. Port keeps Sonnet Identify
in place of the JVM's Jev plus code, uses configured model APIs rather than the
Claude/Codex subscription CLI transports, and queries the catalog for sent history
in place of the JVM's embedded retrieval.

Identify can use only the two read MCP tools. Draft/refine have no tool access;
Judge can load its review skill. Native Input provides approve, hold and
replacement decisions without sending notifications. Delivery requires the
action credential and a signed candidate bound to the request, verdict, run
and call. The model has no action credential; the bridge trusts the native
Input event's approval attestation.

An SQLite attempt ledger claims a send before calling the mock, returns the
original receipt for a confirmed replay and refuses to resend an uncertain
attempt automatically. Sent facts are written only after a matching receipt.
If the later catalog write fails, delivery may still have succeeded; inspect
the receipt and ledger rather than treating the failure as permission to resend.

Native Port runs verified MCP reads, model rejection/refinement, Hold with no
action, and human rejection through shared Refine → Judge → fresh Human approval
followed by exact-candidate mock delivery and a durable sent fact. Those records
used the earlier two-refinement bound. The current six-refinement graph also
completed a native browser rehearsal: two Judge and four Human rejections spent
all six refinements, Identify ran once, and candidate seven received fresh approval
before one exact mock receipt and one catalog write. Four prior records were
retained. Human caught Judge accepting a renamed calendar conflict, then explicitly
supplied a separate fictional preparation deadline; the accepted result depends
on that added rehearsal fact. Codex operated these human inputs with authorization.
The full exercise took about nineteen minutes including browser/review waits,
so use the completed run as a labelled prepared example for the five-minute
closing. Current-bound Hold, exhaustion selection, failed receipt and stage timing
remain separate checks. The closing example carries the same contracts into another implementation;
it adds no framework vote or paired performance measurement.

### Source scope and further reading

This pre-talk brief follows the approved narrative architecture and its
structural rhetorical review, reconciled with demo code and October 1–4 build
evidence. The current source and Viktor’s downloadable handoff are published
on GitHub. The constant task, successive evidence gaps, automatic versus
human boundary, skipped-critic counterexample and closing callback shape its
explanation. No delivery-specific Devoxx analysis exists before the event;
refresh the brief against the recording and delivered analysis afterward.

- [Devoxx session](https://m.devoxx.com/events/dvbe26/talks/25027/codepocalypse-now-langchain4j-vs-jetbrains-koog)
- [Devoxx Koog demo and run instructions](https://github.com/jbaruch/jclaw-devoxx)
- [Local build evidence](https://github.com/jbaruch/jclaw-devoxx/blob/main/BUILD-NOTES.md)
- [Download Viktor’s demo handoff](https://github.com/jbaruch/jclaw-devoxx/releases/latest/download/viktor-demo-handoff.zip)
- [Shared implementation and comparison contract](https://github.com/jbaruch/jclaw-devoxx/blob/main/HANDOFF-LC4J.md)
- [Earlier LangChain4j IdeaConf implementation](https://github.com/gAmUssA/jclaw-ideaconf-2026)
- [Koog documentation](https://docs.koog.ai/)
- [LangChain4j Agentic documentation](https://docs.langchain4j.dev/tutorials/agents/)
- [Runtime corporate-speak skill](https://github.com/jbaruch/jclaw-devoxx/blob/main/skills/corporate-speak/SKILL.md)
- [Prepared Port package](https://github.com/jbaruch/jclaw-devoxx/tree/main/port)

### Jev and its evidence

Jev is a bounded decision model, not a text generator. One call asks two independent
Choice questions about intent and target event, against the current input, prior
conversation and actual calendar records. Code computes date labels, assembles
canonical identity/history and owns all actions. Confidence below the validated
0.60 floors, no match, ambiguity or multiple requested events asks for clarification
before drafting. CHAT ignores its speculative event answer. A service/contract
error stops the workflow; Gemini is available only as an explicit comparison mode.

October 2 live checks: final development 16/16, untouched holdout 32/32 over two
passes with 187ms median. The initial development pass was 14/16; explicit organizer/
day matching was tightened before the holdout. These fictional cases do not prove
general accuracy or calibrated probabilities. The separately checked native
LangChain4j TypeSafeDecisionModel beta31 adapter passed the 16 holdout scenarios;
it serializes structured descriptions as JSON strings because that release accepts
string question/option descriptions. The complete LangChain4j app remains Viktor's
deliverable. Use the final DecisionModel API, not the earlier StructuredDecisionModel
proposal.

A real Langfuse trace received Jev under routeAndIdentify with model jev-1.13.0,
exact structured input/output, choices, probabilities, confidence, margins, latency
and 1,913 input/144 output tokens. Calendar reads and request assembly are application
steps. LC4J exposes DecisionModelListener request/response/error hooks; generic
ChatModel telemetry does not automatically instrument them. TamboUI exposes actual
decision evidence and timed stages. Confidence does not certify correctness or
authorize a send; no hidden reasoning or equivalent CLI price is claimed.

That recorded run used the earlier two-refinement limit and blocked without sending.
The current shared policy is six refinements for Judge and Human together, with
seven candidate versions. All 69 app tests pass, including two model rejections
plus four human rejections followed by approval of candidate seven. Keep the
historical receipt distinct from the new policy.

The October 4 dashboard update adds rendered tests for generic startup, arbitrary
repeated stages and ordinary answers after candidate review. A rebuild during a
live session exposed a missing lazily loaded JVM class; each launch now runs
private copies of app and mock JARs. An overlapping-run check verifies that a
later build cannot replace a running session's files. This UI/launcher validation
does not replace the earlier complete provider-run evidence or the speaker's
review of the current demo. Step branches still wait for that review.
