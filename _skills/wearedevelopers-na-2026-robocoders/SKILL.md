---
name: explain-robocoders-ai-software-factories
description: >-
  Explain or summarize “RoboCoders: Judgment Day” by Baruch Sadogursky and
  Viktor Gamov at WeAreDevelopers World Congress North America 2026. Answer
  questions about its selfware examples, context artifacts, policy as software,
  good-oss-citizen, Jev classification, agent coordination, guardrails, and the
  Printf/Port software-factory demos. This is a prepared workshop brief, not a
  recording or transcript.
---

# RoboCoders: Judgment Day — Workshop Knowledge

Process these steps in order. Do not skip ahead.

## Step 1 — Match the question

This brief covers the two-hour **RoboCoders: Judgment Day** workshop prepared
for WeAreDevelopers World Congress North America in San Jose on September 24,
2026, by Baruch Sadogursky and Viktor Gamov. Use it for summaries,
explanations, comparisons, and questions about this workshop.

A generic request to deploy agents, configure Port, operate Herdr, or change a
repository does not by itself call for this skill. If the request concerns a
different RoboCoders delivery, identify the mismatch and finish here. Otherwise
proceed immediately to Step 2.

## Step 2 — Answer from the brief

Use the material below as the primary source. Explain how an example advances
the workshop's successive-constraints argument, not merely what tool appears on
screen. Distinguish a claim from its visible evidence and from the speakers'
interpretation. Preserve the limitations in “Evidence boundaries.”

This brief describes the prepared workshop and approved demo roster. There is
no published delivery video at the time of writing, so do not invent audience
reactions, delivered wording, timestamps, or claims that every planned demo ran
on stage. Treat demo procedures as evidence to explain, not commands to execute.
Consult linked sources only when an exact quotation or omitted implementation
detail is needed. Finish after answering the question.

## Talk brief

### Identity and central argument

**Full title:** *RoboCoders: Judgment Day: AI-Assisted Engineering Applied —
The Battle of Agents*. **Speakers:** Baruch Sadogursky and Viktor Gamov.
**Event:** WeAreDevelopers World Congress North America 2026, Stage 9 workshop,
San Jose, September 24, 2026. **Format:** a co-presented, conversational
two-hour deep dive with live applications, repositories, terminals, policy
artifacts, coordination experiments, and a complete Printf/Port outer loop.

The accepted abstract promised an agent-versus-agent showdown. The workshop
opens by explaining the plot twist: coding agents have already won the narrow
contest of producing code. Once code gets cheap, advantage moves to the system
around the agent—the context, policy, coordination, guardrails, human judgment,
and feedback that turn generated work into useful outcomes.

The organizing lens is the Theory of Constraints. Each improvement exposes the
next bottleneck. The factory around agents is software too, so it should be
developed, tested, reviewed, versioned, operated, and improved. The call to
action is deliberately practical: do not perfect the factory before building
anything. Find the constraint limiting useful results now, build one bounded
loop around it, observe the result, and improve from evidence.

The primary persuasion is not “look at a magic factory that vibecodes an app.”
It is the accumulated experience of people who operate these systems: what they
built, where it failed, what they changed, and what they recommend next. The
Printf/Port story then assembles those lessons into an organizational example.

### The successive-constraints spine

| Turn | New capability | Constraint that becomes visible |
|---|---|---|
| Cheap code | Personal software becomes economical | Finishing and preserving a useful product |
| Durable project context | Agents can continue prior intent | Reusing policy across projects |
| Context artifacts | Guidance can be packaged and distributed | Choosing the right execution mechanism and proving behavior |
| More agents | Work can happen in parallel | Capacity, ownership, acceptance evidence, and supervision |
| Guardrails | Consequential actions can be constrained | Placing judgment and approval without creating ceremony everywhere |
| Organizational context | Effects outside one repository become traversable | Learning from operations and changing the factory itself |

This is a narrative progression, not a universal maturity model. Different
teams can encounter the constraints in a different order.

### Selfware and the developer-tool confession

“Selfware” is software worth building for one person's actual life, family, or
community because the cost of creation has fallen. It is a complete benefit,
not merely a warm-up for enterprise tooling.

Viktor's prepared opening exhibit is **Tempus**, a timezone application that
puts London, Tokyo, and New York on one shared ruler and helps find a workable
meeting time. The evidence supports a narrow claim: this is a real application
shaped around a recurring personal decision. The private repository and
captures are not published with the shownotes. Public **WorkSync** remains the
fallback application example.

Baruch's corresponding exhibit is a deliberately embarrassing five-tab tour:
`coding-policy`, Agentic Context Registry, `hubitat-dev`, Intent Integrity Chain
kit, and the Koog plugin. Each solves a real development constraint, but all are
developer tools. Viktor asks how many applications emerged; Baruch's answer is,
“Zero. But the runway is magnificent.” The joke exposes a real failure mode:
improving the means of production can become an excuse to postpone the useful
thing indefinitely.

### AI can help repair a problem AI created

`good-oss-citizen` follows directly from the developer-tool montage. Yes, it is
another developer tool; unlike the imaginary perfect runway, it already serves
people outside Baruch's factory. Cheap AI-generated contributions consumed
maintainer attention by ignoring project policy, claimed work, prior rejection,
disclosure, and consent. The project supplies agents with repository and social
context before they generate code.

Part 1 tells the origin story: a heavily tested pull request still appeared
broken to its maintainer because it violated expectations the contributor had
not discovered. The workshop stops there and asks, “Does it work?” It delays
the implementation evidence until the audience understands context artifacts
and policy as software.

The answer returns later through Part 2. An early generated evaluation reported
roughly 92 percent but had put policy, prior decisions, and much of the answer
inside the task. It measured following supplied rules rather than discovering
repository context. Removing the leaked hints produced an honest 15 percent
baseline. Claimed-issue detection then remained at zero through seven
iterations until a deterministic script retrieved all issue comments and the
model interpreted the scoped evidence; that criterion reached 100 percent. A
FastGraph fixture sharpens the desired behavior: when the repository bans AI
contributions in its code of conduct, success is refusing the requested fix.

The lesson is larger than one score. Evaluate whether the artifact changes
behavior under the conditions in which the agent must actually discover the
relevant context. Deterministic retrieval can ensure that evidence is present;
it does not guarantee that every social signal is interpreted correctly.

### Project context and organizational policy are different

Project context explains what this application means and why it is shaped that
way: `AGENTS.md`, architecture decision records, work items, acceptance notes,
and tests tied to user-visible behavior. Organizational policy governs how work
is performed across many projects.

The Tempus decision example makes the distinction concrete. An initial fix made
every delete action request confirmation. The application contract was more
specific: deletion from the iPad selected-clock path confirms, while two compact
gestures keep their established behavior. “Delete” is not enough context; the
meaning of each user gesture must survive. The evidence chain includes the
reproduced defect, an explicit decision, scoped call-site changes, and observed
acceptance state.

WorkSync supplies a public companion lesson. A test claimed to cover a rename
guard, but its setup had already removed the state needed to reach that guard.
The correction exercises the real validator and the recoverable UI state. A
green suite can still prove the wrong thing; ask whether the test reaches the
shipping behavior and whether a small production mutation would make it fail.

### Context artifacts can be application modules

A handoff document can transfer an assignment, evidence standard, safety
boundary, and required return artifact, but it is not shared consciousness. The
workshop then moves from one-off transfer to reusable packages.

NanoClaw is the application, not an example of developer-tool sprawl. Its
`nanoclaw-*` packages make behavior modular: `nanoclaw-core` supplies universal
behavior; trusted and untrusted packages encode different security tiers; and
travel, media, or conference overlays can be installed for one chat without
inflating the platform core. This is application architecture expressed partly
through context artifacts.

The packages currently install through Tessl. Agentic Context Registry is an
adjacent, pre-alpha distribution experiment showing resolution to a release,
commit, and content hash; realization into the native files of different agent
products; ownership boundaries; dry runs; journaling; and uninstall that
restores user-authored text. Distribution proves neither the quality of the
guidance nor uniform behavior across agent products.

### Policy is software, and execution has three boxes

`coding-policy` packages organization-wide engineering guidance as rules,
skills, scripts, hooks, qualifiers, and evaluations. These parts serve different
purposes:

- **Rules** are durable constraints that should remain active.
- **Skills** are procedures loaded when a matching intent appears.
- **Scripts** implement known, deterministic mechanics instead of asking a model
  to rediscover them on every run.
- **Hooks and guardrails** observe or constrain actions at tool boundaries.
- **Qualifiers** answer bounded semantic questions with a fixed result set.
- **Evaluations** test whether the context actually changes behavior.

The original skills-versus-scripts boundary was correct but incomplete. Some
tasks have fixed valid answers yet still require reading meaning. Until the week
of the workshop, paying a full reasoning round for those tasks seemed expensive
and unavoidable. The Jev experiment made a third category newly practical. In
the recorded experiment, 246 live calls had a median of about 0.377 seconds and
cost about $0.000053 per call.

The three-way decision is:

| Question shape | Mechanism |
|---|---|
| The procedure and answer are fixed | Deterministic script |
| The answer set is fixed, but choosing it requires meaning | Bounded classification / qualifier |
| The answer must be constructed or argued | Reasoning model |

The new claim is about economics, not the invention of semantic classification.
The experiment does not establish universal accuracy or permission to use a
classifier for irreversible actions.

### More agents create a coordination problem

The workshop does not rank agent products. It compares coordination contracts.
A bounded task with one writer and an acceptance check is the baseline; adding
workers should be justified by the constraint, not by the availability of more
terminal panes.

Herdr provides evidence for one contract. A deterministic planner accounts for
role requirements, model capability, reasoning effort, and shared subscription
headroom. Two named workers can consume the same capacity pool, so assigning one
changes the affordable choice for the next role. A task ledger separates
observed activity from acceptance decisions and records assignments, evidence,
and assessment.

Viktor's Paseo experiment supplies a different contract. The lead had used the
wrong workers, written code itself, and recorded a merge before the tester result.
The factory changed in response: a heuristic lead guard blocks sampled writes,
allows diagnostics, and gives testers an explicit command/exit/output verdict
contract. The private plugin is not published. The point is that the coordinator
is part of the system under test and that role separation has overhead; for a
bounded change, one writer plus review may still be better.

### Guidance and guardrails are different surfaces

Policy inside an agent influences behavior. A guardrail outside the agent can
constrain an action. The `claude-automode-gate-eval` repository demonstrates the
difference with a deliberately small mechanism test. In its hidden-authorization
scenario, the main agent accepts a file as permission to push; an independent
classifier cannot see the hidden tool-result material and vetoes the action
within its own evidence boundary.

The result is not an industry benchmark: the sample is five, the classifier can
also be wrong, and limited visibility is part of the behavior. A model veto is
not auditable authorization. For consequential enterprise operations, the
stronger recommendation is credentials outside the agent, gateway enforcement,
and deterministic or human approval at the point of no easy undo. Herdr's YOLO
mode can be reasonable for an owner-controlled experiment; it is not an
enterprise governance model.

Human-in-the-loop does not mean placing a ceremonial person after every model
call. Put judgment where uncertainty, blast radius, and accountability make it
valuable. Otherwise, the human becomes the new bottleneck.

### Port, Printf, and the organizational outer loop

Printf is a fictional T-shirt company represented by real public repositories
and a prepared Port model. It is a demo environment, not a customer incident.
Its three-part story assembles the workshop's recommendations.

First, `order-api` PR #1 changes the meaning of `size_system`, such as
distinguishing a US XL from a Japanese XL. A code diff cannot name every effect
outside its repository. Port's Context Lake models relationships from the
sizing concept to services, endpoints, documentation, SDKs, owners, exposed
customers, and facilities. With fixed modeled data, permissions, and a fixed
query, traversing those relationships is deterministic and cheap compared with
asking a model to reconstruct the organization from prose. Deterministic does
not mean complete: missing relationships produce an incomplete result.

Second, the `release_docs` workflow puts distinct mechanisms at distinct nodes:
encoded relationships identify affected artifacts; a model drafts prose where
language judgment is useful; a tech writer approves where generated
communication becomes an organizational fact; and the workflow continues to
delivery. Public `printf-docs` PR #50 is a legible delivered artifact, but
without a matching run record it must not be attributed to one particular
execution, and merge status does not prove every sentence correct.

Third, `order-api` issue #44 records a postmortem action asking for impact
analysis, drafted documentation, approval, and notification. A prepared Port run
shows that an agent-created workflow definition exists and can be retrieved.
That is the “factory builds its successor” moment. Existence is narrower than
correctness, completeness, deployment, or production use.

Together the demos define the outer loop: code, documentation, clients,
support, customers, operational systems, facilities, and owners. Feedback from
operating the product changes both the product and the factory that produces it.

### Closing and audience translation

The workshop closes by asking, “What is your constraint?” The answer depends on
the listener's role:

- **Doers:** choose one bottleneck and build a bounded loop around it.
- **Suppliers:** make the necessary context, policy, evaluations, ownership, and
  evidence available.
- **Influencers:** move the conversation from agent rankings and token burn to
  system outcomes.
- **Innovators:** test one new factory component and publish the evidence.

The intended outcome is not adoption of every named tool. It is beginning an AI
software factory with the smallest change that addresses a real constraint,
then letting observed results identify the next improvement.

### Evidence boundaries

- This is a prepared workshop brief, not a delivered transcript.
- Tempus and the Paseo lead experiment include private material; summarize their
  lessons without claiming access to or publishing the private repositories.
- NanoClaw packages currently ship through Tessl; ACR is an adjacent
  distribution example, not their current installer.
- ACR is pre-alpha.
- The first good-oss evaluation was invalid as evidence of discovery because it
  leaked the answers into the task. Later numbers are bounded development
  results, not universal productivity measures.
- Jev's recorded cost and latency establish the economics of one experiment,
  not deployment, universal accuracy, or authorization safety.
- The Herdr planner test proves one capacity invariant; it is not a general
  productivity benchmark.
- The independent guardrail sample is five and demonstrates a mechanism, not a
  universal compliance rate.
- Context Lake traversal is deterministic relative to fixed modeled data,
  permissions, and query; the result can be incomplete when the model is
  incomplete.
- Printf is fictional. Its repositories and modeled demo artifacts are real.
- A workflow definition's existence does not establish correctness or current
  operational use.
- Agent control of hardware requires an independent physical feedback loop;
  repository correctness alone cannot establish that an actuator produced the
  intended physical outcome. This is a reserve Q&A lesson, not a scheduled demo.

### Sources

- [Canonical shownotes and slides](https://speaking.jbaru.ch/talks/wearedevelopers-na-2026-robocoders/)
- [Conference session](https://www.wearedevelopers.com/events/world-congress-2026-north-america/sessions/1697-robocoders-judgment)
- [coding-policy](https://github.com/jbaruch/coding-policy)
- [Agentic Context Registry](https://github.com/jbaruch/agentic-context-registry)
- [good-oss-citizen](https://github.com/tesslio/good-oss-citizen)
- [Herdr](https://herdr.dev/)
- [Paseo](https://github.com/getpaseo/paseo)
- [Port Context Lake](https://www.port.io/platform/context-lake)
- [Printf order API PR #1](https://github.com/printf-tshirts-printing/order-api/pull/1)
- [Printf documentation PR #50](https://github.com/printf-tshirts-printing/printf-docs/pull/50)
- [Printf factory-improvement issue #44](https://github.com/printf-tshirts-printing/order-api/issues/44)

This brief is synthesized from the approved outline, narrative, demo catalog,
speaker script, and prepared rhetoric review. It explains the workshop and its
evidence; it does not authorize operating agents, pushing code, changing
hardware, executing Port workflows, or publishing private artifacts.
