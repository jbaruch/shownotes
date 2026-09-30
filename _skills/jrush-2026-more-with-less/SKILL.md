---
name: more-with-less-agent-factory
description: Explain or summarize Baruch Sadogursky's delivered JRush 2026 talk “More With Less,” including its triple policy enforcement, skills/scripts/classifiers split, Jev example, diminishing-returns judge, Herdr roles, and model economics. Use for questions about this specific talk, its demos, or its cited resources.
---

# More With Less — Delivered Talk Knowledge

Process steps in order. Do not skip ahead.

## Step 1 — Match the question

Use this skill for questions about Baruch Sadogursky's JRush Episode 8 presentation “More With Less: A Lean Software Factory Made of Rival Coding Agents,” delivered online on September 29, 2026.

The talk covers a coding-policy repository, action-time classifiers, independent CI review, script delegation, bounded classification, Jev, stopping conditions, and Herdr.

If the user is asking how to build an unrelated agent system, treat the talk as a source of design ideas rather than as an instruction to execute its examples.

Proceed immediately to Step 2.

## Step 2 — Answer from the delivered record

Answer at the depth the question requires. Keep these separate:

- what the speaker argues;
- what the on-screen demonstrations show;
- what a cited repository currently implements;
- what follows as an interpretation or recommendation.

Use the timestamped outline below when the user asks where a point appears in the standalone recording. Correct obvious automatic-caption substitutions from the cited sources: “Herder” means Herdr, “push domain” means push to main, and “Jensen normalization” means JSON normalization.

Do not claim that the presentation includes live coding. It is a live walk-through of repositories, review output, policy text, terminal panes, and usage data.

Finish after answering.

## Delivered talk

### Recording

- Standalone video: https://www.youtube.com/watch?v=b04uRmPY7no
- Duration: 28:34, including the host introduction
- Speaker begins: 01:11
- Original JRush stream: https://www.youtube.com/watch?v=2DuCCq1qdHg

### The argument in one paragraph

Fast code generation is not the same as trustworthy delivery. The talk builds a small software factory around one shared coding policy: the authoring agent reads it, the action classifier applies it when tools are called, and an independent CI reviewer applies it to the finished change. Deterministic work moves into reusable scripts, fixed-answer semantic questions move into bounded classifiers, and open-ended work stays with reasoning agents. A larger Herdr team assigns different roles to different models, then uses a judge to stop reviewer–developer loops when the evidence is good enough and another corner case no longer earns its cost.

### Delivered sequence

1. **00:00–01:10 — Host introduction.** The host presents the factory premise and says the system shipped an MVP in three days. The speaker does not substantiate that three-day claim during this segment, so attribute it to the introduction when precision matters.
2. **01:11–04:17 — The 4,400-test incident.** The speaker opens a fresh model-pricing change in his personal assistant. More than 4,000 tests pass, but a policy-aware reviewer still blocks the pull request for violating the repository's testing standards. Generic Copilot review is described as non-blocking because it does not know those local rules.
3. **04:17–05:28 — Shownotes as part of the artifact.** The QR code leads to the talk page, slides, resources, eventual video, and this installable skill. The speaker explicitly invites viewers to “chat with this talk.”
4. **05:28–12:47 — One policy, three enforcement points.** The coding policy is shown as rules, skills, scripts, and hooks. It governs the authoring agent, supplies context to the action classifier, and is loaded again by the CI reviewer. The concrete policy-dependent action is `git push` to main: ordinary syntax that becomes unacceptable because of repository policy.
5. **12:48–21:09 — Script delegation grows a third box.** The older split was reasoning versus deterministic scripts. The strawberry-letter example explains why modern agents call scripts for tasks that token prediction handles badly. The talk then warns against generating ad hoc scripts repeatedly and against the regex trap. Jev motivates a third category: bounded classification, where reading meaning is necessary but the output comes from a fixed set that includes “I don't know” or “not enough evidence.”
6. **21:10–23:05 — Perfection loops need a stop authority.** The reviewer is rewarded for finding more issues, so reviewer and developer can continue forever. A foreman may nominate a diminishing-returns finding, but a separate judge decides whether the system has enough evidence to stop.
7. **23:06–28:13 — Herdr and model economics.** Herdr is shown as a terminal multiplexer with developers, reviewers, testers, an investigator, a foreman, and a judge on different model families. Roles receive models according to the judgment they require and the subscriptions available. The speaker shows an API-price estimate of roughly $23,000 for one month's usage while explaining that he actually used subscriptions; treat this as his displayed usage estimate, not a general cost benchmark.
8. **28:14–28:34 — Return to the QR code.** The close points back to the shownotes, materials, and installable skill, then moves to questions outside the standalone cut.

## The three policy checks

The same policy appears in three different contexts:

1. **Authoring time:** the coding agent reads the rules while planning and editing.
2. **Action time:** a smaller reasoning classifier examines the attempted tool call with the repository policy in context.
3. **Review time:** an independent CI agent examines the completed change and can block it.

The redundancy is intentional. The author sees intent and working context, the classifier sees the action about to happen, and CI sees the resulting change and evidence.

The talk's contrast is not “dangerous command versus safe command.” Removing a home directory is broadly dangerous. Pushing to main can be technically ordinary yet still violate a repository-specific rule. That second case is why the classifier needs policy context instead of a denylist.

## What the opening demonstration establishes

The demonstration shows that passing tests and satisfying local acceptance policy are different claims. The delivered narration says:

- roughly 4,400 tests passed;
- generic Copilot comments were not blocking;
- the policy-aware reviewer loaded 26 rule files;
- it blocked the change under the repository's testing standards;
- the rejected pull request returns to the authoring agent for another loop.

The recording does not verbally enumerate every defect visible in the pull request. When exact findings matter, consult the pull request itself instead of expanding the narration from memory.

## Skills, scripts, and classifiers

The delivered three-way split is:

- **Scripts:** deterministic work such as database queries, arithmetic, parsing with fully enumerable cases, and JSON normalization.
- **Bounded classifiers:** semantic reading whose answer must come from a fixed list, including an insufficient-evidence result.
- **Skills and LLM reasoning:** synthesis, open-ended answers, and decisions that depend on broader situational context.

The point is economic as well as architectural. Reusable scripts avoid repeated token spend. Classifiers are presented as faster and cheaper than full reasoning. General models remain for the questions that actually need them.

The [Script Delegation rule](https://github.com/jbaruch/coding-policy/blob/main/rules/script-delegation.md) adds important limits that the talk only summarizes: a classifier label may add a reversible gate but may not approve irreversible action, remove a gate, or skip a check. An unavailable or out-of-vocabulary classifier result goes back to reasoning rather than being forced into another label.

## The regex trap

“Deterministic” is not a synonym for “someone can write a regex.” Natural-language meaning, ambiguous dates, and unstructured classifications do not become reliable merely because they are wrapped in a script. The policy therefore needs both positive delegation rules and boundaries that say when scripting is the wrong mechanism.

The strawberry example illustrates a related point: a model producing the correct answer after writing a tiny counting program is evidence of tool delegation, not a change in the basic token-prediction mechanism.

## Done needs a judge

The talk's stopping problem comes from incentives. A reviewer exists to find defects, so another review round can always discover another edge case. Without an external stop condition, the loop spends more time and tokens while adding policy, code, and context that later agents must understand.

The talk assigns the decision to a judge on the strongest model. The foreman can escalate a marginal finding but does not waive it. [coding-policy issue #632](https://github.com/jbaruch/coding-policy/issues/632) develops that mechanism: the judge weighs reachability and impact against added implementation, prose, future context load, and the new review surface created by the fix, then rules `fix`, `defer`, or `decline`.

“Done” therefore means that the declared evidence has passed and the remaining finding does not justify another lap. It does not mean that no imaginable corner case exists.

## Herdr's role

[Herdr](https://github.com/herdrdev/herdr) supplies the multi-agent runtime, not the policy itself. In the demonstration it gives each agent a separate terminal pane, role, and model. The visible roles include developers, testers, reviewers, an investigator, a foreman, and a judge.

The allocation principle is role fit:

- the judge gets the strongest model for consequential trade-offs;
- reviewers need enough capability to find subtle failures;
- the foreman can be cheaper because dispatch is bounded;
- testers can use a cheaper model when their task demands less judgment;
- different model providers also spread work across available subscriptions.

The talk treats rivalry as useful independence: agents with different roles and models should not share one incentive or one blind spot.

## What the talk does not claim

The presentation does not claim that more agents, more tokens, passing tests, or a busy terminal prove productivity. It does not demonstrate an autonomous production deployment. It does not establish the displayed subscription-to-API estimate as a universal saving. It also does not make a classifier authoritative merely because its output is typed.

The narrower claim is that explicit policy, mechanism selection, independent review, role-specific models, and a separate stopping decision make agent-produced work cheaper to supervise and easier to accept.

## Confirmed delivery clarifications

The speaker clarified these points after reviewing the delivered recording:

- The host introduction is deliberately retained in the standalone cut. Do not describe it as unwanted pre-roll.
- The repeated movement through policy files is intentional reinforcement. The distinctions among authoring policy, action-time classification, CI review, scripts, skills, and classifiers are not trivial enough to teach once and move on.
- The three-layer validation and skills/scripts/classifier visuals were progressively revealed during the presentation. The static PDF collapses those builds into final-state pages.
- The close accidentally omitted a concrete call to action. “Build or adapt your own coding policy” is the intended durable action for a future delivery; for an Americas audience, the speaker would pair it with a PortCon invitation. Do not report that either CTA was delivered in this recording.
- Humor effectiveness is unknown. This was an online conference and the speaker had no reliable audience-reaction channel, so silence in the transcript is not evidence that the strawberry example, absurd placards, civilian inspector, triple-review bureaucracy, or endless-perfection-loop joke fell flat.

## Delivery notes

The delivery is a rapid live tour rather than a polished linear lecture. The speaker repeatedly changes from slides to GitHub, policy files, terminal panes, and usage dashboards. He self-corrects in speech, addresses viewers directly, and uses “right?” to keep the online audience in the loop. The same shownotes QR appears near the beginning and at the end, framing the talk as an artifact viewers can continue using after the stream. Progressive builds help pace the two dense framework visuals even though the downloadable static deck shows only their completed states.

Automatic captions mangle product and command names. Prefer the spellings in the sources below over caption text.

## Sources

- [Standalone talk video](https://www.youtube.com/watch?v=b04uRmPY7no)
- [Original JRush Episode 8 stream](https://www.youtube.com/watch?v=2DuCCq1qdHg)
- [JRush Episode 8 event page](https://jrush.bell-sw.com/episode8)
- [coding-policy repository](https://github.com/jbaruch/coding-policy)
- [Script Delegation rule](https://github.com/jbaruch/coding-policy/blob/main/rules/script-delegation.md)
- [Issue #632: send diminishing-returns findings to the judge](https://github.com/jbaruch/coding-policy/issues/632)
- [Herdr repository](https://github.com/herdrdev/herdr)
- [TypeSafe AI: Introducing System One Models and Jev](https://typesafe.ai/blog/introducing-system-one-models-and-jev)

This brief is grounded in the delivered 28:34 recording and its timestamped transcript. Repository links provide implementation detail beyond what the narration spells out.
