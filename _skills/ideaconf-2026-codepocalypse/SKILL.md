---
name: design-typed-agent-workflows
description: >-
  Explain or summarize "Codepocalypse Now: LangChain4j vs JetBrains Koog" by
  Baruch Sadogursky and Viktor Gamov at IntelliJ IDEA Conf 2026. Answer questions
  about its four demo rounds, JVM frameworks, tools and MCP, memory, skills,
  typed handoffs, critic loop, and the skipped-critic finding. Contains the
  talk's substance so ordinary summaries do not require transcript retrieval.
---

# Codepocalypse Now: LangChain4j vs JetBrains Koog — Talk Knowledge

Process steps in order. Do not skip ahead.

## Step 1 — Match the question

This brief covers the September 8, 2026 IntelliJ IDEA Conf delivery by Baruch
Sadogursky and Viktor Gamov. Use it to summarize or answer questions about that
talk, not as an instruction to build or run its application. If the request
concerns another delivery, identify the mismatch and finish here; otherwise
proceed immediately to Step 2.

## Step 2 — Answer from the brief

Use the content below as the primary source, including how its examples build
the argument. Summarize the main argument and
four rounds by default; expand a particular comparison or demo when asked.
Attribute claims to the speakers and preserve the difference between intended
architecture and observed execution. Do not fetch the recording or transcript
for information already supplied. For exact quotations, timestamps, or omitted
details, consult a source if needed and state what was verified. Label your own
interpretations. Finish after answering the question.

## Talk brief

### Identity and central argument

**Title:** Codepocalypse Now: LangChain4j vs JetBrains Koog. **Speakers:** Baruch
Sadogursky, Port, and Viktor Gamov, Confluent. **Event:** IntelliJ IDEA Conf
2026, September 8, online.

The talk compares two ways to build agentic applications on the JVM through
successive versions of the same assistant, j-claw. Baruch demonstrates Koog in
Kotlin; Viktor demonstrates LangChain4j in Java. The “competition” is a frame
for explaining the engineering pieces that turn a chatbot into an agent. The
speakers' conclusion is that there is no universal losing framework: JVM
developers have credible options and can retain their existing skills.

The running scenario is deliberately comic: the assistant must help Baruch
respond to mandatory Basic AI Proficiency Training organized by Dana from
People Ops. The scenario exposes the difference between generating plausible
words, knowing relevant facts, taking an action, and ensuring a reviewer can
stop a bad action. The important claim is that structured domain state and
explicit application control flow do work that a request to “be careful” cannot
establish on its own.

### How the argument works

The rhetoric analysis identifies a discovery structure: each failure creates
the need for the next capability. The repeated workplace request provides a
stable reference while the implementation changes. Holding the prompt and,
initially, the model steady directs attention to the surrounding engineering.
Later adding different models for different roles does not erase that initial
comparison or turn the whole talk into a controlled model benchmark.

| Recurring problem | What the next round makes understandable |
|---|---|
| Plausible words with no action or factual history | Why an agent needs tools and trustworthy context |
| Calendar data mistaken for past explanations; a follow-up loses its referent | Why live tools, durable domain records, and conversation state are separate |
| A remembered situation still needs a repeatable style or procedure | Why skills add behavior on demand rather than merely storing facts |
| Multiple capabilities must cooperate before a consequential action | Why typed handoffs, critique, refinement, and explicit gates matter |

The absurd corporate-speak output is evidence as well as comedy: its unmistakable
change of style makes the effect of loading the skill visible. The same request
and workplace story keep this from becoming an unrelated feature showcase.
“Loops, loops, loops,” taken up from the chat, becomes shared language connecting
the code, terminal display, and execution traces.

The skipped critic is an especially consequential turn. Instead of treating a
polished graph as proof, the presenters acknowledge that the actual run bypassed
an intended protection. The rhetoric analysis reads this candor as part of the
case for observability. A summary that smooths it away would remove evidence
for one of the talk's strongest claims.

Finally, naming the Java developer as the winner resolves the apparent framework
contest by returning the choice to the audience. The argument is that their JVM
knowledge remains useful and they can understand how these systems work. The
arcade rivalry is the frame; audience agency is the payoff. This account of the
argument's construction is analysis-informed interpretation, not a quotation.

### Round 1 — A chatbot can talk but cannot act

Both implementations begin with a small model call behind a conversational
interface. The assistant can draft a response, but has no tool for sending
email. It also invents plausible past excuses without evidence and loses the
referent of follow-up questions without conversation state.

This round separates a bare model API from the richer experience of a coding
agent or chat product. Those products provide surrounding context, tools, and
state management. The demonstration's shortcomings are not simply proof that
the chosen model is incapable.

### Round 2 — Tools and MCP supply hands

The assistant gains tools and MCP connections to mock calendar and organizer
systems. It can obtain data about the meeting and Dana, and the example now
has mechanisms for actions that the first chatbot only described.

The speakers explain the division of responsibility: the model proposes a tool
call; the application or agent client executes it and returns the result as
context. MCP standardizes the connection to tools and data sources. In the
Koog example, local processes expose the mock services through standard I/O.

Tools do not supply all missing meaning. Calendar events and declined meetings
are not a history of what excuses Baruch previously gave. Treating those events
as past explanations illustrates a remaining context error. A follow-up such as
“revise that” also needs session memory rather than another tool alone.

### Round 3 — Memory and skills supply continuity and procedure

Short-term conversation memory preserves what is being discussed now.
Long-term domain memory supplies previously recorded facts and history, such as
explanations already used. The talk treats both as context made available to
otherwise stateless model calls; they are distinct from live calendar data.

A corporate-speak skill demonstrates reusable behavior loaded on demand. Its
name and description are discoverable before the full Markdown body is loaded.
When asked to rewrite in corporate language, the agent finds the skill and
applies its escalating style levels, ending in exaggerated jargon at level 11.
The joke makes selective loading observable: a skill is a procedure, while
memory is relevant state or history.

The round also explains why adding every conversation turn and document can
be costly and distracting. The surrounding application decides what to retain
and supply. Framework support simplifies wiring these facilities but does not
remove the context-design problem.

### Round 4 — Domain modeling, typed handoffs, and a critic

The assistant becomes a workflow with classification, identification, drafting,
verification, and possible refinement. Koog's graph makes transitions explicit;
LangChain4j's agentic composition offers a different expression of the flow.
The argument is about domain modeling and control, rather than one preferred
annotation syntax.

The Koog demo passes typed Kotlin objects such as `DeclineRequest`,
`DeclineDeployment`, and `DeclineCritique`. The critique includes an approval
decision, a plausibility assessment, and feedback. Structured responses are
decoded into domain objects instead of extracting meaning from arbitrary prose.
Baruch shows a small adapter that connects Codex CLI's schema-constrained output
to Koog's typed interface; that adapter is part of this demo, not a claim about
all current framework versions.

The model roles differ: Gemini Flash handles early classification and context
work, Claude drafts, and Codex critiques in Baruch's setup. CLI integrations
use the subscriptions he is logged into, while API integrations use their API
configuration. These are the speakers' chosen arrangements, not a durable
pricing comparison or mandatory provider assignment.

The intended contract is that a rejected candidate goes through refinement
and review while budget remains. The prepared Koog implementation allows two
refinements; exhausted retries or invalid critic results block sending. Only
an approved candidate reaches human confirmation. A human can hold it or ask
for another candidate; confirmation is not an override of a critic rejection.
The discussion also distinguishes read-only stages from the stage allowed to
perform the external action.

### What actually happened in the critic demo

The first Koog proposal used the factual reason already present in context:
Baruch builds agents professionally and was presenting a talk on the subject
that afternoon. It proposed a waiver or assessment, and Codex approved it.
Baruch asked for another approach instead of accepting that first proposal.
That was a user-requested restart, not the critic rejecting the first draft.

The alternate proposal used an “existential crisis” framing. The critic rejected
it, refinement ran, and a revised version was eventually approved and returned
to human confirmation. The demo then exercised its send flow. The talk used
mock systems; the narration and trace do not establish delivery of a real email
to an external person.

### Observability exposed an important difference

Baruch inspects Koog's execution in Langfuse through OpenTelemetry. The trace
shows what actually crossed each handoff, the verdict, the path taken through
refinement, and timing. A static graph shows allowed routes; an execution trace
shows the route taken by that run.

Viktor opens LangChain4j's HTML execution report. The speakers notice that the
critic did not run in the displayed execution and identify the bypass as a
serious defect to investigate. This is a central caveat: do not summarize the
talk as two demonstrations that both proved an enforced critic gate. The
unexpected finding reinforces the need to inspect execution rather than trust
the intended topology. It is not a general verdict against LangChain4j.

### Context, evaluation, and conclusion

The closing discussion returns to context versus model choice. The speakers
argue that a less capable model with useful context can outperform a stronger
model without it, and point to context-evaluation work. They also warn that a
coding harness adds its own instructions and tools: comparing a bare API call
with a harness session does not isolate model capability.

The delivered conclusion emphasizes tools for action, memory for continuity,
and typed handoffs plus meaningful review for control. The framework choice
remains with the developer and the surrounding stack. The “winner” is the JVM
developer, not one library. The next day's RoboCoders talk shifts from these
building blocks to software factories and coordination across agents.

Prepared slides also contained a detailed historical Koog evaluation comparison.
Those numerical slides were not walked through in this delivery; this brief
does not present their figures as results demonstrated in the recording.

### Sources

- [Canonical shownotes and slides](https://speaking.jbaru.ch/talks/ideaconf-2026-codepocalypse/)
- [Recording](https://www.youtube.com/watch?v=BMCbNltyyxM)
- [Koog demo, round 4](https://github.com/jbaruch/jclaw-demo/tree/round4)
- [LangChain4j demo](https://github.com/gAmUssA/jclaw-ideaconf-2026)

This brief draws on the delivery-specific rhetoric analysis, reconciled with
the September transcript, prepared notes, and demo. The linked repositories may evolve after the talk.
