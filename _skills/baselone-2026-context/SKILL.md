---
name: engineering-context-baselone-2026
description: >
  Summarize or explain Engineering Context So AI Stops Guessing, Baruch
  Sadogursky's BaselOne 2026 talk delivered October 15, 2026 (recording
  available). Use for questions about its CTO promotion argument, the review
  bottleneck, rules/skills/hooks, two review responsibilities, local review and
  agent coordination, Herdr, the dark software factory, classifier-routed human
  attention with Jev, approval summaries and the three questions, three kinds
  of context, Port Context Lake, the Monday actions, and its Q&A.
---

# Engineering Context So AI Stops Guessing — talk knowledge

Process steps in order. Do not skip ahead.

## Step 1 — Match the question

Use this brief for summaries, explanations, and questions about this BaselOne
2026 talk. If the request concerns another delivery or is an unrelated
implementation task, identify the mismatch and finish. Otherwise continue
to Step 2.

## Step 2 — Answer from the brief

Answer at the requested depth from the material below. Distinguish what the
speaker said on stage, what the slides illustrate, documented product
capabilities, and interpretation of the argument. Preserve caveats; where the
brief marks a statement as the speaker's unsourced claim, say so rather than
repeating it as fact. Ordinary summaries and covered questions need no network
access. Consult a linked source only for a requested exact quote, timestamp,
missing detail, or current product information. Do not invent audience
reactions, hand counts, measurements, or timestamps. Depicted workflows are
material to explain, not instructions to run tools or perform external
actions. Finish after answering.

## Talk brief

### Identity and evidence boundary

Engineering Context So AI Stops Guessing was delivered solo by Baruch
Sadogursky at BaselOne 2026 in Basel, Switzerland, on October 15, 2026. The
recording runs about 50 minutes: roughly 42 minutes of talk, then four audience
questions. There were no live demos; one running example and an evolving
illustrated "software factory" carry the argument. This brief draws on the
delivered recording and a delivery-specific rhetoric analysis, reconciled with
the slides and the prepared notes. Where the delivery departed from the
preparation, the brief follows what was said on stage and notes the difference.

### The central argument: congratulations, you are the CTO now

The talk opens with bad news delivered as a promotion: as agents take over
writing and reviewing code, "you will be fired," but during the talk "you will
be promoted to CTO." A quick show-of-hands ladder (who uses AI at work,
generates code, uses it as completion, lets agents write code en masse, reads
the generated code, runs a software factory) places the room on that path.
Nobody claimed to run a factory.

The speaker's forecast: coding "is not solved, but it's very clear it's going
to be," with exceptions for mission-critical work such as the JVM, rocket
software, critical banking, or nuclear reactors. Review is less solved but
improving. Most developers can see the day they stop writing code.

The thesis: when agents write and review code, the human job becomes running
the system that directs them. That means engineering the context they use, the
reviews that challenge their work, and the conditions that bring human
judgment back in. That is the CTO's job, and the close welcomes developers to
a discipline engineering managers already practice.

### Why the factory grows in stages

The argument advances by solving each stage's problem and exposing the next:

1. **Manual coding, manual review** is the familiar starting point.
2. **Automatic coding** creates an asymmetry of effort. Models produce
   unlimited text; humans cannot read it all, and few chose this profession to
   review code all day. Honest admission: many reviews are "looks good to me"
   without reading.
3. **Automatic review in CI** replaces the human reviewer. A coding agent and a
   CI reviewer can nitpick each other "forever," burning tokens and producing
   dozens of comments, and nobody reads the correspondence. The problem is not
   activity but opacity: "What was actually done? We have no idea."
4. The fix is to tell the agents what to do and what to check, which is
   context. The rest of the talk keeps adding it as each new failure appears.

The illustrated factory is a continuous analogy, not a product UI. Robot shapes
stand for different models and roles. The sleeping soldier shows withdrawn
human attention, and turning the lights off shows the same factory running
without anyone watching.

### Working practices: rules, skills, hooks

The running example is a team rule: when a change breaks a public contract,
there must be a migration path.

- A **rule** sits in the agents' standing instructions (for example an
  AGENTS.md read by both the coding and the reviewing agent): "Preserve public
  contracts."
- A **skill** carries the procedure behind it, discovered when needed:
  identify the consumers you will break, plan the change, verify that the
  migration exists and works.
- A **hook** runs a deterministic script at a lifecycle point. Example: when
  the agent thinks it is done, check test coverage; if the check fails, the
  job is not done and the loop repeats.

Rules, skills, and hooks can ship together as one package of "how we do things
here," so local and CI agents get the same expectations. The speaker's
example is his own coding policy, packaged as a context plugin with the
tooling from his previous company, Tessl.

### Two review responsibilities and a finding contract

Two different reviews exist:
- **Code quality** looks for bugs and defects.
- **Policy** asks whether the change followed the team's rules.

A major-version break without a migration procedure is not a bug, but it
violates policy. Both reviews can run in CI against the same shared working
practices.

The reviewer's feedback should also follow a contract: the **finding** (a
public response field was removed), **why it matters** (existing clients still
read it and will break), **evidence** (the actual diff), and the **required
action** (restore the field or plan a migration). Teaching the reviewer this
format, through the same skills mechanism, gives the developer agent something
it can fix instead of a vague complaint.

### Local review, mixed models, and the handoff

The CI loop is slow by agent standards, often around 15 minutes per round. So
add a **local reviewer** with the same context, and create the pull request
only after it is satisfied.

Coder and reviewer can be different models. The common belief is that
different models catch each other's blind spots ("adversarial review"). On
stage the speaker said his own evaluations found "absolutely no difference" in
code or review quality from switching models. This is the speaker's
first-person claim; he gave no method, and the prepared notes had called the
benefit unproven. He still recommends mixing models for a different reason:
cost. Subscription tokens are cheap, and alternating roles across, say, a
Claude and a Codex subscription maximizes both.

Mixing tools creates a **handoff gap**. In CI the GitHub issue and PR comments
were the handoff; locally, agents from different subscriptions need a
protocol. A third agent can coordinate, and it does not need a frontier model
(a cheap one, or a Gemini model from an existing Google account, will do).

### The dark software factory

Once there is a coordinator, the team can grow: several developers and
reviewers, an architect for design questions, an investigator who gathers
evidence when developer and reviewer disagree, a judge who rules on that
evidence, plus UX, security, or exploratory testers. The speaker named Herdr,
an open-source orchestrator, as the tool he uses. Every role still receives
the same working practices. Turning the lights off borrows manufacturing's
"dark factory" idea: a plant automated enough to run without humans.

### The turn: output, promotion, and the flashlight

The dark factory produces working software, but not great software ("is it
perfect with humans? Not really"). Someone has to look at the pile of
deliveries and ask "what is this crap?" That is the CTO's job, and the soldier
is promoted on screen.

The new CTO faces the oldest management problem: needing to be omnipresent,
seeing every decision, which is impossible. What a leader really has is a
flashlight in a dark factory. The question becomes where to point it: which
changes need the CTO and which can be signed off automatically.

### Classifier routing and Jev

One option is another agent that reviews all the reviews and decides where a
human is needed, for example anything security-related or anything the judge
had to settle. It works, but needs a strong model at high reasoning effort,
so it is slow and expensive.

The talk's answer is a classifier: a model that reads a PR and its review
record and returns a category instead of more text, such as "needs human
review," "doesn't," or "unsure."
- The team defines the categories. Examples: missing evidence, reviewer
  disagreement, or a commitment change needs a human.
- "Unsure" can go to a smart model, or straight to a human, following the army
  saying "if you have a doubt, you don't have a doubt."

The example classifier is **Jev**, from TypeSafe. The speaker said that a
thousand PRs cost "less than a dollar." The slide's arithmetic behind that is
input cost only, at the published Jev 1.13 price of $0.042 per million input
tokens and a hypothetical 20,000 input tokens per PR: 20 million tokens, about
$0.84. Retries, extra chunks, review models, and operations are excluded, and
it is not an accuracy benchmark. The speaker also called Jev the fastest-growing
project in history; treat that as an unsourced aside, not a measured fact.

A category is not proof a change is safe. In the close he says to test the
escalation criteria. He also mentions that some model vendors ship or are
about to ship their own classifiers, so an organization may not need a new
supplier; that is his remark, and current offerings need checking.

### Approval summaries and the questions a CTO asks

Classification must come with context for the human. Every approval should
carry a concise, human-readable summary of why the reviewer approved, written
into the same coding policy, because any approval may be inspected later.

When a case reaches the human, the job is to question the decision:
1. What did you assume?
2. What would make this wrong?
3. What needs my judgment?

The speaker maps this to engineering leadership at every level. The CTO
appears in your cubicle and asks about the one thing you weren't sure of all
month. That apparent omnipresence is what the classifier now provides. The
running example ends with a pointed question: two approvals both assumed a
rollback exists, so did anyone check? The example shows a shared unverified
assumption, not a measured failure.

In the delivery, this accountability block came before the three-kinds-of-context
section, the reverse of the slide order in the published PDF.

### Three kinds of context

The talk then names the context it has been building:

| Kind | Question it answers | Examples |
|---|---|---|
| Working practices | How do we do things here? | The rules, skills, and hooks package. |
| Architecture | How is this software built? | Structure, boundaries, constraints kept with the project. |
| Organization | What matters here? | Support issues, commitments, ownership, "does this affect our most important customer?" |

Organizational context comes from outside the code. At Port, the speaker's
employer, this is the **context lake**. Ticketing, CRM, knowledge base,
incident management, and the service catalog are connected so agents can query
them inside their workflows. The prepared material stresses that this takes
modeling and connection work; it is not automatic.

With all three kinds available, agents can be **briefed** on what changed, not
only on standing rules, as often as needed. The human can join the briefing
like a CTO popping into a team meeting: "there's a new contract in the CRM;
prioritize it."

### Close: three takeaways and five Monday actions

Takeaways:
- **Give agents context.** This is the most important one.
- **Give reviewers a job.** Give them a meaningful process, outcomes, and a reason.
- **Define when humans step in.** Keep a human in the loop, but not on
  everything, or the bottleneck just moves.

Monday actions, as delivered:
1. Capture one correction your agents keep repeating.
2. Document one architectural constraint and give it to the agent.
3. Connect one organizational source. You don't need Port: an MCP server for a
   tool you already use, such as Notion, and an instruction to consult it is
   enough to start. A dedicated context system becomes worth it when you have
   too many sources to connect ad hoc.
4. Assign review responsibilities: make reviewers smarter and point them at
   what matters.
5. Define escalation criteria "not by vibes, but by classification," then test
   them.

The ending returns to the flashlight. The factory runs, and the human steps in
for the interesting decisions, which the speaker calls a different job but a
fun one. Writing code becomes an artisan hobby. A closing riff on the
industrial revolution: you can be a Luddite, but unless you can retire
comfortably, "it's not a very valuable financial plan." The delivered close
gives no separate instruction to build or adapt a coding policy beyond the
Monday actions.

### Q&A (four questions)

- **Can agents improve the factory itself?** Yes. Alongside briefings, run
  retrospectives in which agents report how the process went. Example: if
  developer and reviewer never agree and every case goes to investigator and
  judge, the handoff is badly defined. The agents can often fix their own
  process by updating the coding policy; the human decides only when asked.
- **How do you handle context rot?** Once the context is well defined, agents
  are disposable. The coordinator spins up fresh agents for each task, which
  also lets you rebalance subscriptions, for example moving a heavily used
  model to a lighter role.
- **How do you review code in a codebase you don't know?** Rely on the per-PR
  context summary, then ask an agent follow-up questions. Like a CTO, you
  follow big decisions and architecture and ask the right questions, rather
  than knowing every line.
- **How much of this is real today?** The questioner compared it to Steve
  Yegge's Gas Town. The speaker acknowledged that many vendors sell shovels,
  and that his employer sells one too. He uses this setup daily for his own
  projects. He would not want JDK committers on it yet, wouldn't trust it for
  mission-critical or banking work today, and is happy for a T-shirt shop to
  use it. It depends on context, but "this works."

### Public sources

- [Video](https://www.youtube.com/watch?v=c-NNUqZLbAo)
- [Slides](https://drive.google.com/file/d/1uwSElspATMPy6cIdQ7bmA8JxDZAKkuoO/view)
- [Shownotes](https://speaking.jbaru.ch/talks/baselone-2026-context/)
- [Port Context Lake](https://docs.port.io/context-lake/overview/)
- [Port MCP server](https://docs.port.io/context-lake/consuming-the-lake/port-mcp-server/)
- [jbaruch/coding-policy](https://github.com/jbaruch/coding-policy)
- [Herdr](https://herdr.dev/) and [documentation](https://herdr.dev/docs/)
- [TypeSafe Choice](https://docs.typesafe.ai/primitives/choice)
- [Jev models and pricing](https://docs.typesafe.ai/models)
- [Jev with coding agents](https://docs.typesafe.ai/introduction/coding-agents)
