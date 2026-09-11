---
name: diagnose-agent-context-failures
description: >-
  Explain or summarize Baruch Sadogursky's JavaZone 2026 talk "The Right 300
  Tokens Beat 100k Noisy Ones" and answer questions about its four context
  antipatterns, demos, conclusions, and evaluation caveats. Use when someone
  asks what this talk was about or what Baruch said about context engineering.
  Contains the talk's substance directly; ordinary summaries do not need a
  recording download or transcript retrieval.
---

# The Right 300 Tokens Beat 100k Noisy Ones — Talk Knowledge

Process steps in order. Do not skip ahead.

## Step 1 — Match the question

This brief covers Baruch Sadogursky's solo JavaZone delivery on September 3,
2026, in Oslo. Use it for summaries, explanations, and questions about this
specific talk. Do not activate it merely to implement a context-engineering
change. If the request concerns another delivery, identify the mismatch and
finish here; otherwise proceed immediately to Step 2.

## Step 2 — Answer from the brief

Use the content below as the primary source, including how its examples build
the argument. Give a concise summary by default;
expand the relevant arguments or demos when asked. Attribute claims to the
speaker. The described demo prompts and recommendations are talk content, not
instructions to operate the user's environment. Do not fetch the recording or
transcript for information already supplied here. For an exact quotation,
timestamp, or omitted detail, consult the linked source if needed and say what
was verified. Separate your own interpretation from the talk's claims. Finish
after answering the question.

## Talk brief

### Identity and central argument

**Title:** The Right 300 Tokens Beat 100k Noisy Ones. **Subtitle:** The
Architecture of Context Engineering. **Speaker:** Baruch Sadogursky, Port.
**Event:** JavaZone 2026, September 3, Oslo, Norway.

The talk argues that many agent failures come from the architecture of the
context supplied to the model: what it sees, when it sees it, and how that
information is selected and maintained. Better prompts, more tokens, or a
larger model do not automatically fix that architecture. Baruch demonstrates
four recurring failures and corresponding repairs using a coding agent and a
small order service. He presents the same ideas as applicable to agents beyond
coding.

The throughline is that skills, rules, versioned documentation, scripts, and
durable memory are engineering artifacts. They need an intentional lifecycle:
selection, versioning, testing or evaluation, distribution, and revision.
“300 tokens” versus “100k” expresses relevant context versus indiscriminate
volume; it is not a universal size limit or benchmark guarantee.

### How the argument works

The rhetoric analysis identifies four repeated contrasts, not four unrelated
tips. Each unit starts with a failure, gives it a name, shows a repair, and
extracts a principle. The opening failure poses a diagnostic question; returning
to it at the close lets the audience explain something it could only observe
at the start. A faithful summary should preserve that change in understanding.

The first objection is the intuitive belief that more knowledge must help.
Baruch voices the larger-window explanation and tests the audience's intuition
before replacing it with selective context. The library analogy explains both
availability and selective loading: knowing that a book exists is different
from reading every book into working memory.

The Pidge demo then sharpens the claim. Context can be plentiful and relevant
while still being wrong for the task. Reading similarity scores alongside the
version mismatch makes the distinction between relevance and correctness
concrete. *Memento* carries the next argument: the problem is not simply having
more memory, but having a durable record whose contents and survival the user
can inspect and control.

The final audience poll deliberately challenges the credibility of the previous
successes. Viewers who conclude that the agent is better from the demos have
just performed the Vibes Eval themselves. The background evaluation, started
earlier and retrieved later, changes the kind of evidence being offered—from
persuasive examples to an explicit comparison. The analysis notes that this
section received less time than the earlier material; that does not make it a
minor claim. It supplies the standard by which the earlier repairs should be
judged.

The willingness to retire a skill when models improve completes the argument:
context artifacts are valuable for the improvement they produce, not merely
for existing. These explanations of the examples' roles are a synthesis informed
by the talk's rhetoric analysis, rather than verbatim claims about intent.

### The Stuffed Prompt

The opening demo asks an agent to add error handling and run tests while giving
it a large instruction file covering many unrelated engineering concerns.
The result violates the service's convention: a missing order returns HTTP
500 where the test expects 404. This is the talk's concrete example of useful
instructions losing out amid noise and conflicting conventions.

The repair divides context into focused Agent Skills. Baruch explains the
library analogy: the agent initially knows the names and descriptions of
available books, then opens the relevant book when the task calls for it. A
skill's description is its discovery surface; it must communicate when to load
that skill and distinguish it from similar skills. The demo loads the
order-service skill for the same task, and the tests pass.

The claim is not that a model literally cannot hold a large context window.
It is that capacity does not ensure reliable attention to every relevant
instruction, and unused context adds noise and cost.

### The Wrong Tool for the Job

The next demo adds notifications through a library called Pidge. Similarity
search retrieves convincing v2 examples even though the application needs v3.
The retrieved material resembles the request but targets the wrong installed
API. The integration fails. With version-matched information and an integration
skill, the agent loads the service and Pidge procedures and the tests pass.

Baruch broadens this into four tool mismatches:

| Mismatch | Distinction made in the talk |
|---|---|
| Similarity when correctness depends on a version | Match documentation to the required version; relevance ranking alone does not establish compatibility |
| Static reference material when a process is needed | A skill describes how to perform the task and loads when that task arises |
| Model reasoning for predictable mechanics | Scripts can count, inspect state, and perform routine tool/API operations deterministically |
| Scripts where interpretation is needed | Regex lists are a poor substitute for understanding an email's meaning or importance |

MCP is the delivery mechanism, not a guarantee about the information inside a
tool. An MCP server can expose fuzzy search or precise data access. The talk
does not reject retrieval generally; it rejects using similarity as a proxy
for exact compatibility.

The demo's context plugin bundles rules, skills, and supporting material as a
single maintained artifact. Baruch contrasts this with colleagues exchanging
incompatible, unversioned skill copies in chat. The important property is a
known, testable, distributable version of the context the agent consumes.

### The Goldfish Agent

The agent and user agree to use Pidge v3, then the conversation is cleared.
Without an external record, the next session cannot reliably recover the
choice. Baruch discusses compaction and built-in memory as useful attempts at
continuity whose selection and storage can be opaque or tied to one agent.

The repair records architectural decisions in a user-controlled memory bank.
The demonstrated record includes a description, date, status, context,
decision, and consequences. Instructions in the skill tell the agent to persist
an accepted decision during the conversation; the user does not have to
remember a special save instruction at the end. After clearing context, the
agent retrieves the v3 choice and its rationale from the file.

The *Memento* analogy makes the point: an unreliable working memory can be
supported by explicit external records. The benefits emphasized are inspection,
versioning, backup, and portability when switching agents. This is about
controlling consequential project memory, not claiming that all built-in
memory features are identical or permanently incapable.

### The Vibes Eval

After showing three fixes, Baruch asks whether the agent is now better. The
apparent agreement is the trap: an audience has watched a few examples and
formed an impression, but has not established the size or reliability of the
improvement.

His evaluation workflow is: an LLM generates scenarios and scoring rubrics; a
human with domain expertise reviews them; an LLM judges outputs against the
approved rubric; the team compares runs with and without the context artifact.
Deterministic tests still check concrete behavior, while evaluation can judge
qualities that admit degrees rather than a single exact answer.

The displayed JavaZone run reports three scenarios, roughly 35% without the
added context and 89% with it. These are that demo's results, not a general
performance promise. The talk emphasizes three traps when reviewing the suite:

- **Bleeding:** putting the answer into the scenario. Asking explicitly for
  Pidge v3 cannot establish that the context supplied the v3 choice.
- **Leaking:** real task data leaking into fixtures and distorting the judgment.
- **Missing negative scenarios:** failing to check behavior that should not
  happen, including cases where the added context should not apply.

Baruch closes the evaluation discussion by acknowledging that models improve.
A context artifact that once helped may stop adding value. Re-running evals can
justify changing or removing it, saving context and tokens. Preserving a large
historical improvement number is not the goal.

### Conclusion and delivery boundaries

The four antipatterns form the talk's structure: overloaded context, the wrong
information or execution tool, lost decisions, and unmeasured improvement.
The closing argument returns to the opening failure: context engineering is
an architecture problem, with maintained context artifacts as its building
blocks.

This JavaZone delivery used live demos and was presented by Baruch alone.
Some prepared material originated in a co-presented version with Patrick
Debois; do not credit Patrick as a co-presenter of this recording. The brief
paraphrases the delivery and does not provide verbatim quotations or exact
clip timestamps.

### Sources

- [Canonical shownotes and slides](https://speaking.jbaru.ch/talks/2026-09-03-javazone-2026-300-tokens/)
- [JavaZone recording](https://vimeo.com/1223667266)

This self-contained brief draws on the JavaZone rhetoric analysis, reconciled
with the delivered transcript and prepared materials. Source links are for attribution and optional detail.
