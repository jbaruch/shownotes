---
name: diagnose-agent-context-failures
description: >-
  Diagnose coding-agent failures caused by overloaded prompts, wrong-version
  retrieval, lost decisions, or unmeasured context changes. Use when an agent
  ignores conventions, selects a similar but incompatible API, forgets an
  architectural decision, or needs evidence that a skill or context bundle helps.
  Produces a focused context repair and a baseline-versus-context evaluation plan.
---

# Diagnose Agent Context Failures

Process steps in order. Do not skip ahead.

## Step 1 — Capture the failure

Start with one concrete task, the observed output, the expected behavior, and
the context the agent actually received. Inspect available prompts, loaded
skills, retrieved documents, dependency versions, tool results, and decision
records. Distinguish supplied evidence from guesses about what the agent saw.

Classify the failure using the four antipatterns below. Several may coexist;
choose the smallest repair that explains the observed failure. Do not assume
every failure is contextual, or that a larger context window fixes attention.
If the evidence instead identifies an ordinary application defect, report that
finding and finish this diagnostic workflow.

| Antipattern | Evidence to look for | Repair direction |
|---|---|---|
| Stuffed Prompt | Unrelated or conflicting instructions obscure the relevant convention | Load task-specific procedures on demand |
| Wrong Tool | Similar documentation targets the wrong version; judgment or mechanics use the wrong execution method | Match the method to the information need |
| Goldfish Agent | An accepted decision disappears after a new session or compaction | Persist decisions in inspectable external memory |
| Vibes Eval | A context change is called successful after a pleasing example | Compare against a baseline with reviewed criteria |

Proceed immediately to Step 2.

## Step 2 — Match context to the task

Keep a small set of applicable persistent constraints. Move task-specific
procedures into focused skills. Give each skill a description that identifies
its task and activation conditions distinctly enough to choose it from nearby
skills. Verify that the actual harness discovers the description and loads the
body when needed. An installed file alone is not evidence of activation.

Choose the right mechanism for each part of the task:

| Need | Mechanism | Failure to avoid |
|---|---|---|
| Exact API behavior | Documentation matched to the installed or deliberately selected version | Treating a similarity score as version compatibility |
| A repeatable process | A skill with decisions, steps, and completion criteria | Dumping reference docs where procedural guidance is needed |
| Predictable mechanics | A script or structured tool with defined inputs and outputs | Spending model reasoning on routine counting, parsing, or API plumbing |
| Ambiguous meaning | Model reasoning informed by relevant evidence | A growing list of regexes pretending to understand an email |
| Conceptual discovery | Search or retrieval, followed by relevance checks | Treating every retrieval task as exact lookup |

MCP can carry either fuzzy search or precise access. Inspect what the tool
returns; the transport does not establish correctness. Retrieval with explicit
version constraints can be useful; similarity alone is the problem.

In the talk's order-service example, a missing order returned 500 instead of
404 under overloaded conventions. A focused service skill corrected the
behavior. A separate notification task selected plausible Pidge v2 examples
for a v3 dependency. Version-matched documentation plus an integration procedure
addressed that different failure. Apply the diagnosis, not those library names,
to the user's project. The title's token counts are not a universal budget.

Proceed immediately to Step 3.

## Step 3 — Make decisions survive a session

When an accepted choice must survive context loss, record it in the project's
existing memory or architecture-decision system. Capture the decision, date,
status, context, rationale, and consequences. Keep proposals distinguishable
from accepted decisions; supersede outdated choices rather than retaining
contradictory instructions as equally current.

Define both write and read behavior: which events create or update a decision,
and which later tasks must consult it. Avoid relying on a user remembering to
say “save this” at the end of a long session. Keep records inspectable,
versioned, backed up, and readable by another agent.

Verify with a fresh session: ask for the choice and rationale without putting
the answer in the question. Check that the answer cites the durable record.
The talk used a Pidge v3 decision that survived clearing the conversation.
Built-in memory can still help; this method makes consequential decisions
explicit and portable. If no persistence failure applies, record that and
continue without creating unnecessary memory files.

Proceed immediately to Step 4.

## Step 4 — Measure the context change

Generate representative tasks and quality rubrics, then have a domain expert
review their relevance and weighting. Combine deterministic checks for facts
such as HTTP status codes with judgment for qualities such as idiomatic design.
Evaluate the deployed context bundle together so interactions between rules,
skills, docs, and scripts remain visible.

Compare the same tasks with and without the candidate context, holding the
model, harness, dependency versions, and starting state steady. Use isolated
sessions so memory from one condition cannot contaminate the other. Inspect
failures as well as aggregate scores; repeat enough cases or runs to distinguish
a useful pattern from a lucky example.

Review for the talk's three evaluation traps:

- **Bleeding:** the prompt gives away what the context should contribute.
  “Use Pidge v3” cannot test whether context supplies the v3 decision.
- **Leaking:** fixture data unintentionally exposes the answer or real task
  information that should not be available to the evaluated agent.
- **Missing negative scenarios:** every task invites the skill, so nothing
  checks inappropriate activation or behavior that must not occur.

Report quality differences alongside observed token use, latency, and failures
where available. Do not infer costs from missing telemetry. A demonstration
is evidence for that run, not a guarantee for other models or tasks.

Proceed immediately to Step 5.

## Step 5 — Deliver the repair

Return the diagnosed failure, supporting evidence, the smallest proposed or
implemented context change, and the evaluation results or runnable evaluation
plan. Label a plan that has not run. Identify the artifact version and how
consumers obtain the same rules, skills, docs, and scripts.

Treat context as maintained software: review, version, distribute, and
re-evaluate after material model, harness, library, or context changes. If an
artifact stops adding value, simplify or retire it based on measured behavior.
Do not preserve context merely because it once produced a large improvement.

Finish here.

Source: *The Right 300 Tokens Beat 100k Noisy Ones*, Baruch Sadogursky,
JavaZone, September 3, 2026. Distilled from this delivery and its prepared
materials. [Shownotes and slides](https://speaking.jbaru.ch/talks/2026-09-03-javazone-2026-300-tokens/)
and [recording](https://vimeo.com/1223667266) are optional further reading.
