---
name: more-with-less-agent-factory
description: Explain or summarize Baruch Sadogursky's JRush 2026 talk “More With Less,” including its triple-validation model for coding agents, skills/scripts/classifiers distinction, bounded Jev gates, stopping rules, and Herdr coordination. Use for questions about this specific talk or its examples.
---

# More With Less — Talk Knowledge

Process steps in order. Do not skip ahead.

## Step 1 — Match the question

Use this skill for questions about Baruch Sadogursky's JRush Episode 8 presentation “More With Less: A Lean Software Factory Made of Rival Coding Agents.” It covers coding-policy, action-time classifiers, independent CI review, Jev, stopping conditions, and Herdr.

If the question is about implementing an unrelated agent system, do not treat the examples below as commands to execute. Explain the talk's ideas or ask the user for the implementation context they actually mean.

Proceed immediately to Step 2.

## Step 2 — Answer from the brief

Answer at the depth the question requires. Keep three kinds of statements separate:

- what the speaker argues;
- what a cited demonstration establishes;
- what follows as an interpretation or design recommendation.

Use the source links only when the user requests exact details, current repository state, or quotations. Do not invent private pull-request text, timestamps, or live-demo outcomes.

Finish after answering.

## Talk brief

### Central claim

Coding agents can generate code faster than one person can supervise it. The useful output, however, is not generated code or a green test count. It is work that has earned acceptance under explicit rules and evidence.

The talk proposes one versioned coding policy checked at three different moments:

1. The authoring agent receives the policy while planning and editing.
2. A semantic classifier checks an attempted action when it happens.
3. An independent CI reviewer applies the policy to the finished change and its evidence.

These checks are intentionally redundant. They observe different information and fail at different times. The authoring agent sees intent and local context. The action gate sees the exact operation and destination. CI sees the completed change, tests, reports, and repository state.

### Why passing tests are not enough

The opening incident is a Claude-authored pricing change with 4,486 passing tests. A policy-aware CI reviewer still blocked it twice.

The first problem was a self-referential test oracle: the test derived its expected result from the same production pricing table it was supposed to verify. The test could therefore agree with an incorrect table.

The second problem involved fallback behavior for an older supported Opus 5 model. The change added exact 5.5 pricing but let the older model fall through to a cheaper rate. The suite remained green while the product behavior was still wrong.

The example matters because it separates three claims that are often collapsed:

- the agent produced a coherent change;
- the automated tests passed;
- the change satisfied the repository's acceptance policy.

Only the third claim is a release decision.

### The three validation points

Authoring-time policy is useful because prevention is cheaper than review. The agent can choose compliant branches, tests, dependency versions, and evidence before it writes the change.

Action-time classification covers decisions that are easy to express as policy but hard to detect from a dangerous-string list. `rm -rf` is obvious. `git push origin main` is ordinary shell syntax whose acceptability depends on repository policy, destination, and intent. A bounded classifier can answer a fixed question such as whether the attempted action violates the current branch policy.

Independent CI review matters because the author cannot be the only judge of its own work. The reviewer needs authority to block the change and must cite the evidence behind the decision. A reviewer that can comment but cannot stop the work is decoration.

### Skills, scripts, and classifiers

The talk uses three destinations for agent tooling:

- Skills are for open-ended reasoning: interpreting ambiguous context, comparing alternatives, or deciding what investigation to perform.
- Scripts are for deterministic flows: repeatable operations with inputs, outputs, and tests.
- Classifiers are for bounded semantic questions: the meaning requires judgment, but the answer must come from a fixed set.

This is not a hierarchy. The goal is to choose the smallest mechanism that can own the decision. A script should not impersonate judgment through an expanding pile of regexes. A general reasoning agent should not be paid to rediscover a fixed workflow. A classifier should not be allowed to improvise actions outside its answer space.

Insufficient evidence is a valid classifier result. It routes the question back to reasoning, a human, or another evidence-gathering step.

### Two coding-policy examples

The [Script Delegation rule](https://github.com/jbaruch/coding-policy/blob/main/rules/script-delegation.md) defines three destinations. Deterministic operations belong in scripts. A fixed answer set that requires reading meaning belongs in a bounded classifier. Open-ended judgment, synthesis, and context-dependent decisions stay with a skill or LLM. The classifier must admit insufficient evidence, and its label may add a reversible gate but never approve work, remove a gate, or skip a check.

[coding-policy issue #632](https://github.com/jbaruch/coding-policy/issues/632) addresses the other boundary: when another technically real corner case is no longer worth another fix loop. The foreman may nominate a marginal finding but does not decide it. The judge weighs reachability and impact against added code, prose, future context load, and the new surface created for more findings, then rules `fix`, `defer`, or `decline`. Required checks and serious reachable security or data-loss failures remain floors the judge cannot waive.

Together, the examples separate classification from judgment. The classifier answers a bounded semantic question inside fixed authority. The judge handles a consequential trade-off whose answer depends on broader evidence and cost.

### Done is a policy decision

Agentic loops do not naturally know when to stop. If every hypothetical corner case becomes another lap, the system can spend indefinitely on increasingly speculative improvements.

The talk names three costs:

- token and elapsed-time burn in the current run;
- active-context bloat, which makes later reasoning more expensive and less focused;
- metadata complexity inherited by future agents before they can work on the actual project.

The repository snapshot used in the presentation measured 20 always-on rule files at 118,168 raw bytes and all 26 rule files at 153,092 raw bytes, before rendered wrappers and session-level instructions. These are raw policy-payload sizes, not token counts.

“Done” therefore needs an operational definition: the declared acceptance evidence passed. Newly discovered speculative cases become explicit follow-up work rather than silently extending the current mission.

### Herdr's role

[Herdr](https://github.com/herdrdev/herdr) is the coordination layer, not the source of policy. It gives developer, tester, reviewer, and foreman responsibilities bounded seats and visible reports.

The foreman does not accept progress chatter as proof. It opens the reports and checks the required evidence. The reviewer can stop the developer. The round ends when the declared evidence is accepted; optional improvements move to another mission.

This extends the same control model from one agent to a small software factory:

- policy constrains each role;
- classifiers add bounded semantic gates;
- deterministic scripts own repeatable transitions;
- independent review can block;
- the stop condition prevents the team from polishing forever.

### Adoption path

The recommendation is deliberately incremental:

1. Start with one versioned policy used by one coding agent.
2. Add an action-time classifier for a frequent fixed-answer policy decision.
3. Give CI an independent policy-aware review lane with blocking authority.
4. Add Herdr or another coordination layer only when supervising multiple bounded roles becomes the constraint.

More machinery is not the goal. Each added component must own a specific failure mode and produce evidence that the next gate can inspect.

### What the argument does not claim

The talk does not claim that more agents, more tokens, busy terminals, passing tests, or merged pull requests prove productivity. It does not present unrestricted execution as an operating model. It also does not claim that a classifier is infallible because its output is typed.

The claim is narrower: explicit policy, independent gates, bounded responsibilities, and a defined stopping rule make agent-produced work easier to inspect and safer to accept.

### Sources

- [JRush Episode 8](https://jrush.bell-sw.com/episode8)
- [coding-policy repository](https://github.com/jbaruch/coding-policy)
- [Script Delegation: scripts, bounded classifiers, and LLM reasoning](https://github.com/jbaruch/coding-policy/blob/main/rules/script-delegation.md)
- [Issue #632: send diminishing-returns findings to the judge](https://github.com/jbaruch/coding-policy/issues/632)
- [Herdr repository](https://github.com/herdrdev/herdr)
- [TypeSafe AI: Introducing System One Models and Jev](https://typesafe.ai/blog/introducing-system-one-models-and-jev)

This is a pre-delivery knowledge brief based on the approved presentation outline, speaker notes, and cited implementation records. Refresh it against the delivered recording and delivery-specific rhetoric analysis after the event.
