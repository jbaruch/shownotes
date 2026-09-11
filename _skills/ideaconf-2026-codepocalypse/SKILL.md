---
name: design-typed-agent-workflows
description: >-
  Design or review JVM agent workflows with tools, memory, typed domain
  handoffs, bounded critic refinement, and explicit action gates. Use when
  evolving a chatbot into an acting agent, implementing a Koog or LangChain4j
  pipeline, or investigating a skipped reviewer. Produces a domain model,
  allowed transitions, gate conditions, and execution-evidence checks.
---

# Design Typed Agent Workflows

Process steps in order. Do not skip ahead.

## Step 1 — Define the action boundary

Identify the requested outcome, available facts, relevant history, tools, and
the external action the application might perform. Separate composing a
proposal from executing it. A chatbot saying “sent” is not evidence of a tool
call, and a tool call is not proof that the downstream operation succeeded.

Use this workflow for an agent application whose behavior depends on domain
state and review. A plain text transformation may need neither a graph nor
multiple agents. For that case, explain the simpler boundary and finish here.

For an acting agent, state which conditions must hold before execution. In the
talk's pattern, critic approval is necessary and human confirmation follows
it. Human confirmation cannot override an unapproved candidate. Establish
those semantics in application control flow, not merely in a prompt asking
the agent to be careful.

For an acting agent requiring this workflow, proceed immediately to Step 2.
For the simpler text-transformation case, finish here.

## Step 2 — Separate the sources of context

Model these capabilities separately, adding the ones the task requires:

| Capability | Supplies | Does not establish |
|---|---|---|
| Tools, including MCP integrations | Current data and executable operations | What a past conversation meant |
| Short-term conversation memory | The referent of “revise that” in this session | Durable history across sessions |
| Durable domain memory | Recorded decisions and completed actions | That every earlier proposal was executed |
| Skills loaded by intent | Reusable procedures, such as a requested rewriting style | New facts or authorization |

In the demo, calendar events were not a record of excuses previously given.
Do not let an agent infer completed actions from adjacent data. Preserve the
difference between previously proposed candidates and actually used or sent
ones. Keep that distinction in the types and in the prompts sent to each model.

A coding harness may supply tools, instructions, and memory that a bare model
API call does not receive. Inspect the effective context before attributing a
behavior difference to the model or framework.

Proceed immediately to Step 3.

## Step 3 — Define typed domain handoffs

Represent the task in domain objects rather than passing undifferentiated
strings between agents. Adapt this conceptual contract to Java or Kotlin:

| Object | Minimum useful content |
|---|---|
| Request | User intent, relevant facts, constraints, and applicable history |
| Candidate | Proposed content or plan, its identity, and intended action |
| Critique | Explicit approval decision, reasons, and actionable correction feedback |
| Workflow result | Approved candidate or blocked outcome with its reason |

Keep parsing and validation at the model boundary. Where supported, derive a
structured-output schema from the domain type, decode the response into that
type, and reject malformed or incomplete results. Use an adapter if a provider
integration lacks the needed typed interface; do not replace the contract with
regex searches for reassuring words in prose.

Types constrain shape, not truth. Validate domain invariants too: the critique
must apply to the exact candidate being considered, required facts must be
present, and an approval field must not default to true after an error.
Framework API names and provider capabilities depend on the installed version;
check that version's documentation when implementing this conceptual design.

Proceed immediately to Step 4.

## Step 4 — Enforce the review loop

Express the allowed transitions in application logic:

| State or result | Next transition |
|---|---|
| Request with sufficient context | Produce a candidate |
| Candidate produced | Critic reviews that candidate with the request context |
| Explicit approval | Expose that candidate for human confirmation |
| Rejection with refinement budget remaining | Revise using feedback, then review the revision |
| Rejection after budget exhaustion | Finish blocked; no external action |
| Timeout, provider failure, invalid response, or missing review | Finish blocked with a diagnostic |
| Human confirms approved candidate | Execute that exact action through the application |
| Human declines | Finish held; no external action or unsolicited alternative |
| Human explicitly requests an alternative | Hold the current candidate; route a new candidate through review again |

Choose a finite refinement budget. The Koog demo allowed two refinements; use
a limit justified by the application's latency and cost constraints. Keep the
executor outside an unconstrained drafting loop so neither drafter nor critic
can bypass the action gate. A rewritten candidate loses the previous approval.

The critic must have a real veto. Supply the request, relevant context, and
candidate; ask for a reasoned assessment against the task criteria. A second
model can offer a different perspective, but provider diversity alone does not
prove independent judgment or factual correctness.

In the delivered Koog example, the first factual waiver request was approved.
The human asked for another approach; that started a new workflow. The alternate
was rejected and refined before approval. Distinguish this human-requested
restart from a critic-triggered refinement. Reaching a send prompt does not
establish that an external email was sent.

Proceed immediately to Step 5.

## Step 5 — Verify the executed path

Inspect both the allowed graph and a trace of what actually ran. For each
handoff, check the input, output, model or provider, candidate identity, verdict,
next transition, and duration. Relate the visible decision to its payload;
a graph picture alone cannot prove the critic executed.

Exercise an approved path, rejection followed by refinement, persistent
rejection, missing or malformed critic output, provider failure, human refusal,
and a changed candidate after approval. Assert deterministically that blocked
paths cannot reach the executor. Evaluate the critic's judgment quality with
reviewed scenarios in addition to testing the routing.

The LangChain4j execution shown in this delivery skipped the critic. Its trace
made the omission visible and the speakers identified it as a defect to
investigate. Treat that as a concrete reason to inspect execution, not as proof
that either framework universally enforces or universally bypasses review.

If comparing context configurations, hold other inputs steady and measure
quality, turns, tokens, and elapsed time where telemetry exists. Report failed
or missing runs. Cross-version demonstrations are not controlled benchmarks,
and lower token use is not a permanent guarantee.

Proceed immediately to Step 6.

## Step 6 — Return the workflow contract

Deliver the domain types, context sources, transition table or graph, refinement
budget, action gate, and failure behavior. Include observed trace evidence and
test results, clearly separating implemented behavior from proposed checks.
For an existing application, prioritize any path that reaches an action without
its required review. Choose the framework by the team's implementation needs;
the talk's method does not require a universal framework winner.

Finish here.

Source: *Codepocalypse Now: LangChain4j vs JetBrains Koog*, Baruch Sadogursky
and Viktor Gamov, IntelliJ IDEA Conf, September 8, 2026. Distilled from this
delivery and its prepared demo. Optional references:
[shownotes](https://speaking.jbaru.ch/talks/ideaconf-2026-codepocalypse/),
[Koog demo](https://github.com/jbaruch/jclaw-demo/tree/round4), and
[LangChain4j demo](https://github.com/gAmUssA/jclaw-ideaconf-2026).
