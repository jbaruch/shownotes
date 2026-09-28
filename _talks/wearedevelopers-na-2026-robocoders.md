---
layout: talk
---

# RoboCoders: Judgment Day

**Conference:** WeAreDevelopers World Congress North America 2026 — Stage 9 workshop
**Date:** 2026-09-24
**Slides:** [View Slides](https://drive.google.com/file/d/1BWR6VTV622PN2U2OUqoo0-CHSvKhHP_P/preview)
**Video:** [View Video](https://www.youtube.com/watch?v=DZSrePBL2Lg)

A two-hour workshop at WeAreDevelopers World Congress North America 2026 in San Jose, California, by {{ site.speaker.display_name | default: site.speaker.name }} and Viktor Gamov.

## Abstract

The abstract promised an agent-versus-agent showdown. This workshop starts with the plot twist that the contest is no longer the interesting part: coding agents have made producing code cheap enough for personal “selfware,” and the bottleneck has moved to everything around the code. Through applications, repositories, evaluations, coordination experiments, and an end-to-end Port workflow, we follow the new constraints as they appear: preserving project decisions, packaging organizational policy as maintained software, choosing between deterministic scripts, bounded classification, and open-ended reasoning, coordinating multiple agents without mistaking activity for progress, enforcing guardrails at consequential boundaries, and putting human judgment where it changes the outcome. The point is not to wait for a perfect stack. It is to find the constraint limiting useful results today, build one bounded part of the factory around it, observe what happens, and improve the factory from evidence.

## Resources

### Session and slides

- [Conference session](https://www.wearedevelopers.com/events/world-congress-2026-north-america/sessions/1697-robocoders-judgment) — The published workshop listing.
- [Workshop slides](https://drive.google.com/file/d/1BWR6VTV622PN2U2OUqoo0-CHSvKhHP_P/preview) — The fourteen-slide Industrial Documentary deck.

### Selfware and project context

- [WorkSync](https://github.com/gAmUssA/worksync) — Viktor's public macOS calendar utility and the fallback example for application-specific decisions.
- [WorkSync PR #17](https://github.com/gAmUssA/worksync/pull/17) — A green test that did not reach the behavior its name promised, followed by the accepted correction.
- [NanoClaw core](https://github.com/jbaruch/nanoclaw-core) — Universal communication, verification, memory, formatting, and temporal behavior packaged as application context.
- [NanoClaw trusted](https://github.com/jbaruch/nanoclaw-trusted) and [NanoClaw untrusted](https://github.com/jbaruch/nanoclaw-untrusted) — Different policy packages for different trust tiers.
- [NanoClaw travel](https://github.com/jbaruch/nanoclaw-travel) — A per-chat capability installed independently from the application core.

### Context artifacts and policy as software

- [coding-policy](https://github.com/jbaruch/coding-policy) — Shared engineering policy for coding agents: rules, skills, scripts, hooks, qualifiers, evaluations, and team operation.
- [Agentic Context Registry](https://github.com/jbaruch/agentic-context-registry) — An experimental packaging, locking, realization, ownership, and removal path for versioned context artifacts.
- [Tessl](https://tessl.io/) — A registry and toolchain for distributing and evaluating agent context.
- [hubitat-dev](https://github.com/jbaruch/hubitat-dev) — Agent guidance and executable development loops for Hubitat software.
- [Intent Integrity Chain kit](https://github.com/intent-integrity-chain/kit) — Context artifacts for preserving intent from idea through specification, behavior, and code.
- [Koog plugin](https://github.com/jbaruch/koog-plugin) — Framework-specific guidance derived from the current Koog source when the documentation lagged it.
- [Script delegation rule](https://github.com/jbaruch/coding-policy/blob/main/rules/script-delegation.md) — The decision boundary between fixed mechanics, bounded classification, and constructed reasoning.
- [Jev experiment in issue #479](https://github.com/jbaruch/coding-policy/issues/479) — The evidence behind the workshop's “third box”: fixed answer sets selected by meaning at a newly practical cost and latency.

### AI repairing an AI-created problem

- [good-oss-citizen](https://github.com/tesslio/good-oss-citizen) — Context that helps coding agents behave like considerate open-source contributors before they write code.
- [Our AI is the bright kid with no manners — Part 1](https://tessl.io/blog/our-ai-is-the-bright-kid-with-no-manners-part-1) — The maintainer-attention problem and the incident that started the project.
- [good-oss-citizen research](https://github.com/tesslio/good-oss-citizen/blob/main/RESEARCH.md) — Documented OSS contribution failure modes used to shape the behavior.
- [Our AI is the bright kid with no manners — Part 2](https://tessl.io/blog/our-ai-is-the-bright-kid-with-no-manners-part-2) — Implementation evidence, the leaky “open-book” evaluation, and the deterministic retrieval fix.

### Coordination and guardrails

- [Herdr](https://herdr.dev/) — A runtime for keeping coding-agent terminals and workspaces running; the workshop uses its planner and evidence contract to discuss deterministic coordination.
- [Paseo](https://github.com/getpaseo/paseo) — A different interface and coordination surface for running coding agents from desktop and mobile.
- [Claude automode gate evaluation](https://github.com/jbaruch/claude-automode-gate-eval) — A small mechanism experiment showing the difference between guidance inside an agent and an independent boundary that can deny an action.
- [OneCLI](https://github.com/jbaruch/onecli) — An example of keeping credentials and enforceable policy outside the agent rather than treating prompt instructions as authorization.

### The organizational outer loop

- [Port](https://www.port.io/) — The platform used for the organizational context and workflow examples.
- [Port Context Lake](https://www.port.io/platform/context-lake) — Modeled software and organizational entities with explicit, traversable relationships.
- [Port Workflows](https://docs.port.io/workflows/overview/) — Workflow orchestration that can combine deterministic steps, agent reasoning, guardrails, and approval.
- [Printf order API PR #1](https://github.com/printf-tshirts-printing/order-api/pull/1) — The local code change that begins the fictional company's sizing-impact story.
- [Printf documentation PR #50](https://github.com/printf-tshirts-printing/printf-docs/pull/50) — A delivered documentation artifact from the demo environment.
- [Printf factory-improvement issue #44](https://github.com/printf-tshirts-printing/order-api/issues/44) — A postmortem action that asks the factory to build its next workflow.

### Further reading

- [The Goal](https://www.toc-goldratt.com/en/product/the-goal-a-process-of-ongoing-improvement) — Eliyahu M. Goldratt and Jeff Cox's Theory of Constraints novel behind the workshop's recurring question: what limits useful results now?
- [The art of loop engineering](https://www.langchain.com/blog/the-art-of-loop-engineering) — Further reading on nested execution, verification, and orchestration loops.
- [Software factories, light and dark](https://addyo.substack.com/p/software-factories-light-and-dark) — Addy Osmani on the promise and obligations of software-factory thinking.
