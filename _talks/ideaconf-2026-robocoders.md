---
layout: talk
---

# RoboCoders

**Conference:** IntelliJ IDEA Conf 2026
**Date:** 2026-09-09
**Slides:** [View Slides](https://drive.google.com/file/d/1LjV6IcEJi1u_h-6HDTSM-e8NndftREjH/preview)
**Video:** [Watch from 5:00:39](https://www.youtube.com/watch?v=sTcx0EvILr4&t=18039s)

A presentation at IntelliJ IDEA Conf 2026, streamed online in September 2026, by
{{ site.speaker.display_name | default: site.speaker.name }} and Viktor Gamov.

## Abstract

Coding agents make selfware practical: build the software you want for your own life, from an Ironman training app to personal utilities. Baruch Sadogursky and Viktor Gamov explore what happens when you scale that ability. Architecture decisions and explicit work items preserve project context; skills, scripts, hooks and rules turn engineering policy into software that can be developed, evaluated, reviewed and distributed. Agent teams, review loops and capacity-aware allocation help manage the work. Small, replaceable services simplify local factories while moving more complexity into their connections and shared responsibilities. At that point, organizational context and repeatable workflows matter as much as code generation. Through real projects and a Port demo, the conversation follows the Theory of Constraints from personal software factories to outer loops and factories that build factories: identify what limits useful results, improve it, and reassess.

## Resources

### Selfware and project context

- [Iron Trainer](https://github.com/gAmUssA/iron-trainer) — Viktor's personal training application: the recurring selfware exhibit.
- [Iron Trainer architecture decisions](https://github.com/gAmUssA/iron-trainer/tree/main/docs/adr) — Project decisions and their rationale, kept alongside the implementation.
- [ADR 0021: web UI information architecture](https://github.com/gAmUssA/iron-trainer/blob/main/docs/adr/0021-web-ui-information-architecture.md) — The architectural context behind the Today and Training Plan screens.
- [Today-card implementation Bean](https://github.com/gAmUssA/iron-trainer/blob/main/.beans/iron-trainer-6xpm--ui-pr2b-dashboard-today-todays-session-card-from-p.md) — A work item connecting the UI decision to implementation and review.
- [ADR 0020: backend replacement](https://github.com/gAmUssA/iron-trainer/blob/main/docs/adr/0020-backend-v2-quarkus-strangler.md) — The recorded decision to replace the FastAPI backend with Quarkus.
- [Backend cutover Bean](https://github.com/gAmUssA/iron-trainer/blob/main/.beans/iron-trainer-foi1--phase-7-cutover-decommission-fastapi-freeze-alembi.md) — Implementation work for the backend cutover and decommissioning.
- [Documenting Architecture Decisions — Michael Nygard](https://www.cognitect.com/blog/2011/11/15/documenting-architecture-decisions) — The original lightweight ADR format: context, decision, status and consequences.
- [Beans](https://github.com/hmans/beans) — A file-based issue tracker for people and coding agents, with work stored in the project.

### Harnesses and agent coordination

- [Herdr](https://herdr.dev/) — A runtime for keeping coding-agent terminals and workspaces running.
- [Paseo](https://github.com/getpaseo/paseo) — An interface for running and coordinating coding agents from desktop and mobile.
- [Paseo provider documentation](https://github.com/getpaseo/paseo/blob/main/public-docs/providers.md) — Provider integrations, including agents connected through ACP.
- [Agent Client Protocol](https://agentclientprotocol.com/get-started/introduction) — The protocol connecting coding agents to clients.
- [Claude Code agent teams](https://code.claude.com/docs/en/agent-teams) — Separate sessions with shared tasks and direct teammate messaging.

### Policy as software

- [Baruch’s coding-policy](https://github.com/jbaruch/coding-policy) — The shared engineering-policy plugin: rules, skills, scripts, hooks, review and team operation.
- [Viktor’s coding-policy](https://github.com/gAmUssA/coding-policy) — Viktor’s adaptation of the engineering policy for his own workflow.
- [Tessl](https://tessl.io/) — Tools for evaluating and distributing agent context.
- [coding-policy in the Tessl registry](https://tessl.io/registry/jbaruch/coding-policy) — The distributed policy package and its published context artifacts.
- [Agentic Context Registry](https://github.com/jbaruch/agentic-context-registry) — An experimental registry and packaging approach for versioned agent context.
- [Context package manifest example](https://github.com/jbaruch/agentic-context-registry/blob/d3bc96b33b42293aecd1702c04aa94513a3dab1b/examples/complete/agent-plugin.yaml) — A concrete manifest grouping the parts of an agent context package.
- [Context resolution and locking](https://github.com/jbaruch/agentic-context-registry/blob/d3bc96b33b42293aecd1702c04aa94513a3dab1b/README.md#L68) — How declared context dependencies resolve to concrete package evidence.
- [Policy PR #376: release channels](https://github.com/jbaruch/coding-policy/pull/376) — The policy itself became a constraint; this change separated channel-specific publishing obligations.

### Review loops

- [Policy PR #380: persistent retrospectives](https://github.com/jbaruch/coding-policy/pull/380) — Preserving factory feedback before changing workers, with review discussion.
- [Copilot’s review finding](https://github.com/jbaruch/coding-policy/pull/380#discussion_r3963949825) — The complementary reviewer’s finding in the retrospective change.
- [Response with reproduction evidence](https://github.com/jbaruch/coding-policy/pull/380#discussion_r3963972395) — The author’s evidence-based response to the finding.
- [Policy-aware Codex CI review](https://github.com/jbaruch/coding-policy/blob/2152f5a616cdf53be275308e5c03086eaa572acf/.github/workflows/review-codex.yml#L1) — The workflow connecting the engineering policy to automated pull-request review.

### Determinism and agent economics

- [Script delegation rule](https://github.com/jbaruch/coding-policy/blob/2152f5a616cdf53be275308e5c03086eaa572acf/rules/script-delegation.md#L8) — Encode known mechanics in scripts rather than re-inferring them for every run.
- [Precheck gating](https://github.com/jbaruch/coding-policy/blob/2152f5a616cdf53be275308e5c03086eaa572acf/rules/script-delegation.md#L65) — Skip agent invocation when deterministic checks establish that no work is needed.
- [Worker allocation planner](https://github.com/jbaruch/coding-policy/blob/2152f5a616cdf53be275308e5c03086eaa572acf/skills/herdr-teamlead/teamlead/planner.py#L1) — Executable eligibility and allocation logic for the agent team.
- [Shared-subscription-window test](https://github.com/jbaruch/coding-policy/blob/2152f5a616cdf53be275308e5c03086eaa572acf/skills/herdr-teamlead/tests/test_planner.py#L522) — Multiple worker names share one capacity pool; assignments account for that shared headroom.
- [Headroom allocation test](https://github.com/jbaruch/coding-policy/blob/2152f5a616cdf53be275308e5c03086eaa572acf/skills/herdr-teamlead/tests/test_planner.py#L195) — A small fixture showing how projected remaining capacity affects assignment.
- [Iron Trainer plan validator](https://github.com/gAmUssA/iron-trainer/blob/main/backend-v2/src/main/java/io/gamov/irontrainer/plan/PlanValidator.java) — A deterministic validator alongside model-generated training plans.
- [Validator test example](https://github.com/gAmUssA/iron-trainer/blob/dc5bbd8694fd4a623bfa425c40d155e44f6fcd4e/backend-v2/src/test/java/io/gamov/irontrainer/plan/PlanTemplateTest.java#L117) — Input, adjustment and assertion for an encoded plan rule.

### Outer loops and factories building factories

- [Port demo](https://youtu.be/zROR0PdVAQo) — The recorded Port demonstration used for the outer-loop example.
- [Port](https://www.port.io/) — The agentic SDLC platform used for the shared organizational context and workflow examples.
- [Port Context Lake](https://www.port.io/platform/context-lake) — Modeled software and organizational context with explicit relationships.
- [Port Workflows](https://docs.port.io/workflows/overview/) — Explicit workflow orchestration with agentic steps where reasoning is needed.
- [Printf order API change](https://github.com/printf-tshirts-printing/order-api/pull/1) — The code-change starting point for the fictional T-shirt company example.
- [Printf documentation output](https://github.com/printf-tshirts-printing/printf-docs/pull/50) — The merged documentation change produced in the demo scenario.
- [Printf sizing guide](https://github.com/printf-tshirts-printing/printf-docs/blob/c6681b85b2cb759163cb9ad36a088807360e8740/docs/guides/sizing.md) — A public documentation artifact connected to the release.
- [Printf factory-improvement issue](https://github.com/printf-tshirts-printing/order-api/issues/44) — The recorded work item behind the workflow-building example.

### Further reading

- [The Goal — Eliyahu M. Goldratt and Jeff Cox](https://www.toc-goldratt.com/en/product/the-goal-a-process-of-ongoing-improvement) — The Theory of Constraints novel behind the question: what limits useful results now?
- [The art of loop engineering — LangChain](https://www.langchain.com/blog/the-art-of-loop-engineering) — Further reading on nested execution, verification and orchestration loops.
- [Software factories, light and dark — Addy Osmani](https://addyo.substack.com/p/software-factories-light-and-dark) — Further reading on software factories and ownership of the outer loop.

### Optional public examples

- [Calliope review example](https://github.com/gAmUssA/calliope-md/pull/3) — A contributor’s keyboard-navigation fix, tests and review discussion.
- [Calliope architecture reversal](https://github.com/gAmUssA/calliope-md/blob/main/docs/adr/0011-revert-mermaid-to-beautiful-mermaid.md) — A recorded architectural reversal with explicit tradeoffs.
- [PopClip Summarize](https://github.com/gAmUssA/popclip-summarize) — Another personal utility, with on-device and API model paths.

### Next talk

Spec-driven development continues in Anton Arhipov’s session at [IntelliJ IDEA Conf 2026](https://lp.jetbrains.com/intellij-idea-conf-2026/).
