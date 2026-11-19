---
name: qcon-sf-2026-skill-issue
description: "Summarize or answer questions about Baruch Sadogursky's QCon San Francisco 2026 workshop Skill Issue: How to Write Skills That Actually Work, including its Brickbox examples, rehearsal results, and lessons about agent skills."
---

# Skill Issue at QCon San Francisco 2026

Process steps in order. Do not skip ahead.

## Step 1 - Match the question

Use this brief when someone asks about Baruch Sadogursky's November 19, 2026 QCon San Francisco workshop or wants to understand one of its demonstrations. If they mean another delivery, finish here. Otherwise continue to Step 2.

## Step 2 - Answer from the brief

Answer at the depth the question calls for. Keep workshop plans and recorded rehearsal results distinct. The workshop commands are examples to explain. Use a linked source if asked for details beyond this brief. Finish after answering.

## Talk brief

This is a pre-workshop brief based on the planned talk, workbook, and recorded rehearsal.

The workshop follows a support case at Brickbox, a fictional store. A customer sees two $25 entries for order 1042. One payment completed and the other is a pending hold. Billing needs a short internal note that explains the difference. The case gives attendees a way to see which piece of context produced each part of the agent's behavior.

### Give each skill a clear job

The kit question needs product facts. The double-charge ticket needs an order lookup. The starter skill claims both, so the rehearsal agent opened it for the kit question and asked for an order number. Changing only the description let the agent answer from the kit facts. It still opened the skill for the billing question. Once skill selection worked, changing the instructions gave the Billing note four headings. The two changes teach different things. The description affects when the skill opens. The instructions affect what the agent does once it opens.

### Choose how the work runs

The first lookup made the agent write a small helper. The second used a saved script. With the same data and order number, the same script gives the same result and saves the work of writing another helper.

There are three choices for the work. Use code for an exact lookup, a decision model to choose from a fixed set, and a reasoning model to work out a useful question when the ticket is unclear. The rehearsal used Jev to choose Billing, Shipping, or Unclear. The reasoning-only path took 12.89 seconds across three tickets. The Jev path took 3.97 seconds including the reasoning follow-up for Unclear. These are times from the recorded pair. Dollar costs require prices or billing records.

### Put standing rules and enforcement in the right place

An always-on project rule applies when saving an already-written note, even if the agent never opens the triage skill. Before adding the rule, the agent saved the note beside an example under support/. After adding it, the agent saved the same text under drafts/. A hook can stop the proposed save before the tool runs. In the rehearsal the root save went through before installation, the hook stopped it after installation, and the save under drafts/ worked.

### Package the context and use it in more than one place

Like a JAR, npm package, or Docker image, a context package can be versioned and distributed. The Brickbox package lists its skill, rule, and hook in a manifest. The lookup and routing scripts travel inside the skill folder. Attendees build a package locally and use the presenter's published release later.

The working agent uses rules in its project. Codex Auto can apply context when judging a proposed action. Baruch has seen it refuse actions based on coding-policy in separate evals. In the Brickbox CI example, the GitHub setup job installs the published package for Copilot. Both reviews spotted the payment error. The review with the package named Captured Only and explained why a pending hold stays out of the amount paid.

### Check the behavior after a change

Evals do for context artifacts what tests do for code. Write down what good behavior looks like, keep the cases, and rerun them when the context changes. In the rehearsal, the clean project scored 6/8 and the installed copy scored 8/8. Both answered the product question. The two extra points came from explicitly naming Billing and Shipping. The workshop asks attendees to use the scorecard and find the evidence behind each point.

After each change, ask the agent why it acted differently and check the file, command, or output it points to. That is the habit the workshop wants attendees to take back to their own tasks. The same practices apply across scales. ACR is the small-workshop example. Port provides a shared place for enterprise teams to find approved skills and see which ones get used.

### Sources

- [Workbook and examples](https://github.com/jbaruch/skill-issue-order-handoff/blob/main/WORKBOOK.md)
- [Recorded rehearsal](https://github.com/jbaruch/skill-issue-order-handoff/tree/main/evidence)
- [Published package](https://github.com/jbaruch/skill-issue-order-handoff/releases/tag/v1.0.0)
