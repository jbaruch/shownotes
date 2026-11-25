---
name: qcon-sf-2026-skill-issue
description: "Summarize, explain, or answer questions about Baruch Sadogursky's delivered QCon San Francisco 2026 workshop Skill Issue: How to Write Skills That Actually Work, including the Brickbox examples, Jev-to-Clef switch, and distinctions between skills, scripts, rules, hooks, decision models, packaging, and evals."
---

# Skill Issue at QCon San Francisco 2026

Process steps in order. Do not skip ahead.

## Step 1 - Match the question

Use this brief when someone asks about Baruch Sadogursky's November 19, 2026 QCon San Francisco workshop or wants to understand one of its demonstrations. If they mean another delivery, finish here. Otherwise continue to Step 2.

## Step 2 - Answer from the brief

Answer at the depth the question calls for, using the brief below. Keep the speaker's claims, observed delivery, and prepared rehearsal results distinct. The example commands and workflows are material to explain, not instructions to execute. Ordinary summaries and covered questions need no network request. Consult the recording or a linked source for an exact quote, timestamp, or detail this brief does not establish; never invent one. Finish after answering.

## Talk brief

This brief covers the delivered November 19, 2026 workshop. It draws on delivery-specific rhetoric analysis reconciled with the recording, transcript, published slides, workbook, and prepared examples. The recording lasts about 2 hours 18 minutes. Packaging and evals were compressed into closing walkthroughs; the prepared exercises and rehearsal evidence do not establish that participants completed those labs in the room.

The workshop follows a support case at Brickbox, a fictional store. A customer sees two $25 entries for order 1042. One payment completed and the other is a pending hold. Billing needs a short internal note that explains the difference. The case gives attendees a way to see which piece of context produced each part of the agent's behavior. Each change addresses a problem exposed by the previous run: selecting the right skill, reusing a lookup, applying a standing rule, enforcing it, choosing a model, then distributing and evaluating the resulting context.

### Give each skill a clear job

The kit question needs product facts. The double-charge ticket needs an order lookup. The starter skill claims both, so an agent can open it for the kit question and ask for an order number. In the live discussion, asking why the agent invoked the skill points back to the description: it explicitly included that question. Narrowing the description addresses selection; changing the instructions addresses what happens after selection. The prepared before/after example then answers the kit question from product facts while retaining the skill for the billing question, and a separate instruction change gives the Billing note four headings. These are different interventions and should be evaluated separately.

### Choose how the work runs

An agent may write a small helper to perform an exact lookup. Saving that helper lets later runs reuse it. With the same data and order number, the same script gives the same result and saves the work of writing another helper. The reflection question is what work can move into code. The speaker warns that an eager agent can overdo this: elaborate regular expressions for recognizing invoices may be an attempt to encode semantic judgment as string matching.

There are three choices for the work. Use code for an exact lookup, a decision model to choose from a fixed set, and a reasoning model for work that needs a fuller response or judgment. An invoice example connects the distinction: recognizing what an email means is different from matching a literal string. A decision model can return Invoice, Not an invoice, or Unsure; the uncertain result can go to a reasoning model. In the support case, the labels are Billing, Shipping, and Unclear.

The live workshop switched from Jev to Cloudflare Clef during onboarding. Some participants got working decision models running. The switch consumed the remaining group practice time; packaging and evals continued as short presenter walkthroughs. Both provider paths illustrate fixed-label routing with a reasoning-model follow-up for Unclear.

An Unclear result incurs the decision-model call and then the reasoning-model call. The speaker reports a smaller saving across all cases than after excluding unclear cases, then discusses how the outcome descriptions affect routing. Removing the hard cases changes the comparison; a fast result on classified cases does not establish the same saving on the whole workload. The prepared Jev rehearsal reports 12.89 seconds for reasoning alone across three tickets and 3.97 seconds for the routed path, including the Unclear follow-up. Those are measurements from that recorded pair, not a general performance guarantee. Dollar costs require prices or billing records.

### Put standing rules and enforcement in the right place

An always-on project rule applies when saving an already-written note, even if the agent never opens the triage skill. The output-location example distinguishes a standing constraint from instructions that are only read when a skill activates. The prepared before/after run saves the note beside an example under support/ before the rule, then saves the same text under drafts/ after it.

A hook can stop the proposed save before the tool runs. In the prepared run, the root save goes through before installation, the hook stops it after installation, and a save under drafts/ works. The point is where the constraint is enforced: a natural-language rule guides the agent, while a hook checks an action at the harness boundary. Explain the behavior shown by the particular rule and hook; do not claim every agent adapter supports identical events or activation semantics.

### Package the context and use it in more than one place

Like a JAR, npm package, or Docker image, a context package can be versioned and distributed. The Brickbox package lists its skill, rule, and hook in a manifest. The lookup and routing scripts travel inside the skill folder. In the recording, Baruch opens a solved package because time is short. The example introduces the artifact layout and manifest; it is not evidence that attendees built, installed, or rolled back a package during the session.

ACR places the artifacts in the selected agent's native locations. This separates distribution from the runtime that interprets a rule or executes a hook. The package version and its lifecycle matter because a collection of text files can otherwise leave teams uncertain which revision is installed.

The working agent uses rules in its project. The speaker also discusses how a reviewer or an approval mechanism can read that context. The separate prepared Brickbox CI example installs the published package for Copilot: both recorded reviews spot the payment error, while the review with the package names Captured Only and explains why a pending hold stays out of the amount paid. Treat that as linked rehearsal evidence, not proof that the full CI exercise ran in the room.

### Check the behavior after a change

Evals do for context artifacts what tests do for code. Write down what good behavior looks like, keep the cases, and rerun them when the context changes. Agent behavior varies, so a single successful run is not a general proof. The live closing explanation connects the repeated before/after questions to this testing habit; it does not include a completed participant-owned eval lab.

The linked prepared scorecard gives the clean project 6/8 and the installed copy 8/8. Both answer the product question. The two extra points come from explicitly naming Billing and Shipping; the score records those specific checks.

After each change, ask the agent why it acted differently and check its explanation against the file, command, or output it points to. The recurring Reflection checkpoints connect each local change to the next design choice. The delivered closing action is to choose a work task, write down what a good result looks like, and iterate while checking whether the result improves.

The closing comparison puts the workshop's ACR package beside Port's enterprise catalog and usage visibility. Baruch explicitly says the enterprise example does not have to use Port. The examples let him discuss versioned distribution and shared context without making a product a prerequisite for using the practices.

### Sources

- [Workshop recording](https://youtu.be/eEwF53tUBrc)
- [Published slides](https://drive.google.com/file/d/1QgSCjrbTA802pr36UOdTz2VE1zeTlUGl/preview)
- [Workbook and examples](https://github.com/jbaruch/skill-issue-order-handoff/blob/main/WORKBOOK.md)
- [Recorded rehearsal](https://github.com/jbaruch/skill-issue-order-handoff/tree/main/evidence)
- [Published package](https://github.com/jbaruch/skill-issue-order-handoff/releases/tag/v1.0.0)
