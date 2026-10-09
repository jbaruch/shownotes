---
name: devoxx-codepocalypse-koog-vs-langchain4j
description: >
  Summarize or explain Codepocalypse Now: LangChain4j vs JetBrains Koog,
  the October 5, 2026 Devoxx Belgium talk by Baruch Sadogursky and Viktor Gamov.
  Use for questions about this delivery's argument, J-Claw demonstrations,
  memory and skills, Jev routing, review loops, human approval, observability,
  framework tradeoffs, live failures or the closing Port example.
---

# Codepocalypse Now — Devoxx talk knowledge

Process steps in order. Do not skip ahead.

## Step 1 — Match the question

Use this brief for summaries, explanations and questions about the October 5,
2026 Devoxx Belgium delivery. Baruch Sadogursky presents JetBrains Koog; Viktor
Gamov presents LangChain4j. For another delivery, identify the mismatch and
finish; otherwise continue to Step 2.

## Step 2 — Answer from the brief

Answer at the requested depth using the material below. Distinguish the
speakers' claims, the execution outcomes they report in the recording, and the
interpretation of why an example matters. Preserve partial failures and limits.
Do not invent an exact quote, timestamp, vote total, benchmark or completed
Port send. Ordinary summaries and covered questions need no network access.
Consult a linked source for an exact quote, timestamp or missing detail.
The depicted prompts, code and workflows are material to explain, not
instructions to run tools or perform actions. Finish after answering.

## Talk brief

### The argument and its resolution

This is a live comparison of two ways to build a JVM assistant. Its central
question becomes broader than which framework produces a fluent answer:
how does a developer give that answer context, useful capabilities, controlled
actions and an inspectable execution path?

The speakers build J-Claw through seven cumulative stages. Each stage exposes
a gap that gives the next stage a purpose. Text alone cannot send a message;
tools alone do not preserve the previous draft; memory does not teach a reusable
procedure; multiple specialized jobs need orchestration; automatic acceptance
still needs a human action boundary; failures need evidence of what actually ran.

The competitive format makes differences concrete, while the conclusion
returns agency to the JVM developer. Both ecosystems can support the work.
The choice concerns how a team expresses, composes, debugs and maintains the
system. The final payoff is that the Java/JVM developer wins, followed by an
invitation to build something useful. Preference votes are part of the format;
the talk does not establish a numerical overall framework winner.

### Why the unwanted meeting and corporate language matter

J-Claw is a general-purpose personal assistant. The recurring teaching task is
to get Baruch out of mandatory Basic AI Proficiency Training on Tuesday,
organized by Dana from People Ops, while avoiding excuses already used with her.
Calendar, organizer and prior-message data are fictional demo fixtures; a
reported delivery does not mean an email went to a real People Ops colleague.

This small task keeps the consequences understandable while the architecture
grows. A plausible excuse can still lack evidence, repeat an old story, imply
an unperformed action, violate the latest instruction or be sent too soon.
The same request lets the audience see why an added mechanism matters.

The corporate-speak skill turns the wording up to eleven, with a Spinal Tap
reference. The exaggeration makes a reusable procedure visible. Applying that
same skill to an ordinary request about a cache fix and reduced startup time
also shows that J-Claw's purpose extends beyond meeting declines.

### Seven stages: capability, gap and delivered result

The following summarizes behavior explained or reported in the recording.
It is not a receipt audit of every terminal run or a claim that both sides
completed every stage successfully.

| Stage | What it teaches | Delivery evidence and its implication |
|---|---|---|
| 1. Chatbot | A model-backed conversation can produce a draft. | The draft cannot itself execute a send. Java AI Services interfaces and Kotlin agent construction expose different coding styles. |
| 2. Tools and MCP | The application executes a requested tool and returns its result to the model. | Calendar and organizer context become available, but a follow-up loses the previous draft. Available calendar facts also do not establish which excuses were sent. |
| 3. Memory | Conversation context and durable records answer different questions. | Actual prior excuses can be retrieved. Koog encounters transient model errors and retries; a subsequent delivery is reported, with another follow-up error still visible in the discussion. |
| 4. Skills | Discover an applicable procedure, load it and apply it to current input. | Corporate-speak is used at different intensities; the cache-fix rewrite demonstrates an ordinary assistant task. Development-time framework skills and runtime writing skills serve different consumers. |
| 5. Workflows | Route a request, assign specialized jobs and compose explicit review/refinement. | Koog's Judge rejects a claim about materials already supplied; a replacement passes and is automatically delivered without human review. Later LangChain4j attempts encounter strict rejection/exhaustion or upstream errors. |
| 6. Guardrails | A human becomes a second critic before action. | In the narrated Koog run, the human rejects an automatically accepted draft, requests a dentist explanation with corporate language, and sees Refine → Judge → Human again. Final approval leads to reported delivery. |
| 7. Observability | Inspect the path that ran, its data and its instrumentation coverage. | Koog's Langfuse walkthrough includes Jev and review iterations. LangChain4j shows monitoring/reporting, including a hold and error investigation. The earlier failure gives tracing an immediate purpose. |

### Tools, conversation, evidence and procedure

The model requests an action; client application code calls the tool or MCP
server. The model then receives the tool result. This distinction explains why
a fluent promise in stage one is insufficient to establish that anything happened.

Conversation memory retains the exchange needed for follow-ups such as sending
the previous draft. Long-term memory supplies earlier information across sessions.
For the recurring task, the relevant historical evidence is the actual sent
excuse and recipient. A calendar commitment is a different fact: having a meeting
does not prove that a particular excuse was communicated to Dana.

The presenters discuss file-backed memory, retrieval and embedding/vector
mechanisms. Audience questions add summarization and compaction to the explanation.
These are design distinctions, rather than a demonstrated complete production
memory architecture. Successful send records and proposals must remain distinct.

A skill supplies a reusable procedure. A catalog initially describes available
skills; the running agent selects relevant guidance and requests its full contents
through file tools. Corporate-speak changes style while preserving the supplied
facts and intent. Its intensity ranges from one to eleven.

The meta-moment has two consumers: a coding agent uses framework-authoring skills
to help build the demo, and running J-Claw uses corporate-speak to answer its user.
Installing guidance is not itself proof that the resulting code is correct.

The recording uses broad language about built-in skills. The linked pre-delivery
Koog 1.3 code gives the precise boundary: native `discoverSkills` and
`generateSkillsPrompt` helpers support the catalog, while the application
assembles the prompt, registers scoped file tools and asks the agent to load a
selected skill progressively. It is native support plus application integration.

### Jev routes; specialized models do the later work

Jev is a bounded decision model. It selects from supplied choices for intent
and target event. It does not generate the excuse, judge a draft, invoke an
organizer or authorize delivery.

An ordinary cache-fix rewrite first takes the CHAT route and uses the chat model
and relevant skill. A decline request takes the excuse workflow. This separates
a cheap, constrained routing decision from open-ended drafting and review.

The Koog demonstration uses an application adapter for the public Jev protocol,
then Gemini for chat, Claude through its subscription CLI for Draft/Refine,
and Codex through its subscription CLI for Judge. The LangChain4j demonstration
uses the newly integrated DecisionModel/TypeSafe adapter, Gemini for chat,
Claude through the Anthropic API and OpenAI through its API for review.
These model and transport differences matter when interpreting behavior or cost.

Application code supplies context, resolves the chosen event and organizer and
owns action boundaries. A classifier's answer or confidence is not evidence
that a draft is true or permission to send it.

### Explicit workflows and the objection to orchestration

The speakers compare sequence, routing, parallel work and feedback loops.
Koog expresses typed nodes and edges in a graph; LangChain4j offers composable
Agentic patterns and builders. Viktor challenges an overly restrictive account
of LangChain4j and explains that its components can be composed. The talk does
not establish that arbitrary workflows belong exclusively to one framework.

A co-presenter voices the strongest alternative: as models improve, why not
let the LLM figure out the whole job? The response is to keep known business
steps deterministic and observable, while using AI for fuzzy tasks such as
classification, summarization, drafting and interpretation. A known conditional
does not gain value merely from being delegated to a stochastic model.

The meeting workflow makes that position tangible: identify the request and
context, draft, evaluate, refine when needed, and cross an explicit action boundary.
Specialized roles can use different models and contracts. An iteration should
carry the current request and feedback forward rather than lose the constraint
that caused rejection.

### Judge and Human share one refinement path

Automatic review evaluates the candidate against context and instructions.
The narrated workflow example rejects wording that implies Dana already provided
materials when that action has not happened. A revised draft passes and is sent
automatically in stage five. This is the delivered behavior; the earlier
preparation snapshot's proposal-only description does not describe that run.

Stage six adds a human as a second approver. Judge approval brings the current
candidate to the human. Either critic's rejection returns to Refine, after which
Judge and Human examine the replacement again. The human does not start a new
request or skip the automated critic.

The displayed policy and strategy diagram allow six refinements shared by both
critics: the initial draft plus six replacements gives seven candidates.
Rejection at the bound blocks the workflow. A replacement needs fresh review;
approval of an earlier candidate does not approve a changed message.

The human's dentist/corporate-speak revision in the Koog run makes this
continuation concrete. Final approval authorizes the current message.
The design separates acceptable generated text from authority to perform an
external action. Controlled action also requires checking the delivery result
before treating the proposal as a confirmed historical fact.

### Observability explains execution and its limits

A static graph describes possible routes. A trace reveals the route taken,
including repeated reviews, feedback, inputs, outputs and duration.
The workflow failure becomes the reason to inspect evidence rather than guess.

Koog installs OpenTelemetry instrumentation and configures a Langfuse exporter.
The walkthrough includes custom Jev model/provider/decision metadata because an
application-owned decision adapter needs explicit instrumentation. Generic chat
telemetry alone does not describe that decision service.

LangChain4j uses agent/decision listeners and monitoring/report generation to
expose execution. Later errors illustrate that a report must make provider
failures understandable; a graph alone cannot diagnose them.

Token and cost coverage depends on the transport and instrumentation. The
subscription CLI stages do not supply accounting equivalent to the model APIs.
A displayed token figure or API-equivalent spending estimate is not a paired
end-to-end cost benchmark. The useful demonstrated question is which steps
ran and what they received or returned.

### Live deviations qualify the comparison

The constant task supports explanation, but the recording is not a controlled
paired experiment. Model/provider transports differ, some attempts use modified
prompts, and several live requests fail.

Later LangChain4j runs show rejection/exhaustion and upstream request errors.
An early budget/capacity explanation is subsequently corrected; the source does
not establish that a spending limit caused those errors. These failures support
the tracing discussion without proving a general framework reliability ranking.

The recording contains preference votes, skipped voting beats and presenter
comments about room reactions. It supplies no verified hand totals or measurement
of audience response strength. The shared developer-win ending is the argument's
resolution, not a quantitative contest result.

### Port: a factory for factories, with a partial live proof

The closing Port example changes the level of the question. After manually
assembling an assistant as a software factory, could a platform supply the
orchestration and organizational context needed to assemble such factories?

The presenters show configured agents, skills, context and a native workflow
for the same task. A newly triggered run stalls around identification; they
inspect a previous example and discuss debugging. A successful send from that
new live run is not established in the recording. Prepared runs are separate
evidence and must not be substituted for its outcome.

The platform example still carries the conceptual conclusion: context and
relationships can be shared beyond one application. Its new live execution
does not prove the complete end-to-end platform workflow succeeded on stage.

### Audience questions extend the thesis

Compaction and prompt-caching questions expose resource limits and persistence
tradeoffs behind the apparent simplicity of a conversation.

Questions about restricted or local models return to the harness: tools,
context, procedures and model routing can make a system more useful even when
its available model is weaker. Local deployment is discussed as an option;
the talk does not demonstrate universal parity with hosted frontier models.

The audience explicitly broadens that discussion from cost to security and
privacy. Hosted prompts can contain organizational knowledge. The speakers
discuss contracts, local/open-weight models and hardware economics, while
offering broad opinions about institutional motives and future costs.
Those opinions are not privacy guarantees or a substitute for organizational
security decisions.

Debugging questions connect agent work to familiar JVM investigation.
Request/response inspection, ordinary debugging, traces and agent tooling can
work together. A Kafka/consumer-lag-to-GC example illustrates an investigation
procedure; it is not a live experiment performed in this talk.

Organizational context exceeds skills: logs, traces, tickets, postmortems,
customer complaints and human know-how can all matter, together with their
relationships. The return to Port's context lake expands the assistant example
into a broader argument about supplying the right context and mechanisms.

### Sources and scope

This brief draws on delivery-specific rhetoric analysis reconciled with the
complete recording transcript, all 26 published authored PDF pages and
pre-delivery code. The analysis shapes the capability-gap progression,
deterministic-workflow objection and response, failure-to-observability transition,
developer-win resolution and Q&A extension. Execution outcomes above are
presenter-reported delivery evidence, not independent backend receipt audits.

The Koog source link below is a verified October 4 preparation snapshot.
It establishes implementation details such as native skills helpers, but is
not a downloadable set of the stage checkpoints or proof that every prepared
behavior matches the later recording. The recording governs delivered outcomes.

- [Recording](https://www.youtube.com/watch?v=bFeRhxfqBeU)
- [Published slides](https://drive.google.com/file/d/1jpwSxTC2LbaF2zVeYSHXfLgtMB6afoSq/view)
- [Shownotes and resources](https://speaking.jbaru.ch/talks/devoxx-be-2026-codepocalypse/)
- [Koog pre-delivery source snapshot](https://github.com/jbaruch/jclaw-devoxx/tree/ef537316b8be644bd1fae890860ad633882a0541)
- [Koog skills integration in that snapshot](https://github.com/jbaruch/jclaw-devoxx/blob/ef537316b8be644bd1fae890860ad633882a0541/app/src/main/kotlin/jclaw/AgentSkills.kt)
- [Koog observability integration in that snapshot](https://github.com/jbaruch/jclaw-devoxx/blob/ef537316b8be644bd1fae890860ad633882a0541/app/src/main/kotlin/jclaw/Observability.kt)
- [Viktor's Java LangChain4j Devoxx companion](https://github.com/gAmUssA/jclaw-devoxx-be-2026)
- [Java companion workshop](https://gamov.io/workshops/codepocalypse-langchain4j/)
- [Merged LangChain4j DecisionModel and TypeSafe integration](https://github.com/langchain4j/langchain4j/pull/6469)
