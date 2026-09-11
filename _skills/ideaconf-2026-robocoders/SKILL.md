---
name: improve-agent-software-factories
description: >-
  Diagnose constraints in an agent-assisted software delivery process and
  improve its engineering policy, coordination, or operational feedback. Use
  when more coding agents produce more waiting, project decisions disappear
  between workers, review lacks useful challenge, or code completion leaves
  release and customer work unfinished. Produces one evidence-based factory
  improvement with outcome measures and a reassessment point.
---

# Improve Agent Software Factories

Process steps in order. Do not skip ahead.

## Step 1 — Find the current constraint

Start with a useful outcome someone wants from the software. Identify its
consumer, acceptance evidence, and the work remaining before that person can
use it. For personal software, the owner may supply the surrounding context
and perform the operational follow-through. That is a valid complete outcome.

Follow one recent change from intent through implementation, review, release,
and use. Locate waiting, repeated work, missing information, and scarce
capacity. Use actual task records, review findings, run traces, and operational
feedback. If evidence is missing, label the suspected constraint and specify
the smallest observation needed to test it.

Apply the talk's Theory of Constraints lens: identify what currently limits
useful results, improve it, then reassess. Do not assume a fixed progression
of bottlenecks. More workers, more generated code, full subscriptions, or idle
agents are not measures of accepted work. Adding coders can enlarge a review
queue without increasing delivery.

Proceed immediately to Step 2.

## Step 2 — Make the work portable

Separate project knowledge from the procedure used to work on it:

| Artifact | Owns |
|---|---|
| Architecture decision record | This project's choice, rationale, rejected alternatives, and consequences |
| Work item, such as a Bean | Requested change, acceptance conditions, status, dependencies, and implementation evidence |
| Engineering policy | When to consult decisions, how to update work, how to review, and what release evidence is required |

Link work items to the decisions they implement. Keep actual project choices
with the project; distribute reusable engineering procedure separately.
Organization-wide architectural constraints can belong to common policy,
while project-specific decisions remain local. Skills describe when and how
to consult this data; they need not duplicate all of it in their bodies.

For a handoff, provide the outcome, governing decisions, current work state,
evidence, unresolved questions, and next action. A static handoff can transfer
context once; ongoing coordination also needs a path for corrections and
completion reports. Choose a shared work record or supported agent messaging
based on that need. Do not infer completion from a stale worker status.

Proceed immediately to Step 3.

## Step 3 — Develop policy as software

Inspect the procedure causing the constraint. Make its applicable conditions,
steps, evidence requirements, and finish explicit in a focused skill or rule.
Keep task procedures discoverable on demand instead of copying a growing
always-loaded instruction file into every project.

Extract predictable mechanics into executable helpers: repository prechecks,
state inspection, structured lookups, allocation calculations, and routine
tool calls. Define their inputs, outputs, and failure behavior. Leave intent,
tradeoffs, design, and ambiguous review findings to reasoning. A deterministic
precheck that finds no work can avoid an unnecessary agent invocation.

Maintain the resulting rules, skills, scripts, and relevant hooks as a
versioned artifact. Review changes, test deterministic code, evaluate agent
behavior with representative scenarios, and record the version consumers use.
Evaluate policy both with and without its added context; examine its actual
effect rather than assuming that more instructions help.

Policy itself can become the constraint. Fix an overbroad release requirement
through its normal development process, preserving applicable obligations.
Distinguish passing tests from evaluations that could not run. A published
policy version does not prove every consumer has adopted it.

Proceed immediately to Step 4.

## Step 4 — Allocate the necessary roles

Add roles only when they address the diagnosed limitation. Give each role a
clear responsibility, required inputs, deliverable, and acceptance boundary.
A developer, an adversarial tester, an architect, and a dispute reviewer can
serve different needs; they are not a mandatory team template.

Ask the tester to challenge assumptions, omitted scenarios, and observable
behavior. Merely rerunning the developer's tests supplies little complementary
review. Likewise, using another model does not automatically make a review
independent of the same incomplete context.

Match task difficulty to demonstrated model capability and reasoning effort.
Account for both role demand and shared capacity: two worker names backed by
one subscription share its remaining headroom. Use explicit, testable allocation
logic where inputs are known, and label estimated role costs as estimates.
Do not assume that more seats create more capacity or that the most capable
model is necessary for every coordination task.

When extra parallelism is justified, define how workers exchange corrections
and who accepts the result. Otherwise keep the existing arrangement and
address the actual constraint. These instructions are a design method, not
authorization to start additional workers or purchase capacity.

Proceed immediately to Step 5.

## Step 5 — Close the outer loop

Identify work beyond a successful code change. Depending on the product, this
may include deployment, documentation, dependent clients, support, customer
communication, and observing use. Small replaceable components simplify local
work, but dependencies and operational obligations still need coordination.

When knowledge and responsibility are distributed, model the relevant
relationships explicitly. Connect releases to changed endpoints, documentation,
clients, affected customers, and responsible owners where those relationships
exist. Use repeatable queries for known relations and workflows for dependencies
and branches. Mark unknown or stale relationships; do not substitute model
confidence for missing catalog data.

The talk's fictional Printf scenario illustrates a release-documentation
workflow: resolve affected endpoints and docs through catalog relationships,
use reasoning to draft documentation, then identify affected customers and
their representatives for follow-through. Agents also generated workflow
definitions. Those generated definitions are software needing review and
verification, not inherently correct because an agent produced them.

Use shared catalog and workflow machinery when it solves a demonstrated
coordination problem. Team size alone does not make a portal necessary. A
personal project's owner can close the same outer loop by using the software,
observing a failure, and feeding a concrete correction into the next change.

Proceed immediately to Step 6.

## Step 6 — Propose one measurable improvement

Return a compact intervention record:

- Useful outcome and current limiting constraint, with supporting evidence.
- One change to project context, policy, mechanics, role allocation, or outer-loop
  coordination that directly addresses it.
- Owner, affected artifacts, dependencies, and acceptance evidence.
- A baseline and outcome measure, such as accepted changes delivered, review
  waiting time, rework, or successfully completed release obligations.
- A reassessment point and possible next constraint, explicitly a hypothesis.

For example, if implementation finishes quickly while documentation and client
updates are missed, trial a release workflow that resolves those dependencies
and tracks completion. Compare unfinished release obligations and elapsed
delivery time before adding more coding agents. This is an illustrative
application of the talk's method, not a measured result from the demo.

Feed operational findings into both the product backlog and the factory's own
policy or workflow backlog. Finish after delivering the intervention and its
verification plan; do not claim an improvement was measured if it has not run.

Source: *RoboCoders*, Baruch Sadogursky and Viktor Gamov, IntelliJ IDEA Conf,
September 9, 2026. Distilled from this delivery and its prepared exhibits.
Optional references: [shownotes and recording](https://speaking.jbaru.ch/talks/ideaconf-2026-robocoders/),
[Iron Trainer](https://github.com/gAmUssA/iron-trainer), and
[coding policy](https://github.com/jbaruch/coding-policy).
