---
layout: talk
---

# Skill Issue: How to Write Skills That Actually Work

**Conference:** AgentCon 2026, Miami
**Date:** 2026-06-12
**Slides:** [View Slides](https://drive.google.com/file/d/1nwhvo-Kh5IAzGsbbbEIjOXsmPb-EgQo6/preview)

A presentation at AgentCon in
                    June 2026 in
                    Miami, USA by
                    {{ site.speaker.display_name | default: site.speaker.name }}

## Abstract

A skill is software — so write it like software. You already wrote skills; the reason they don't actually work is that you stopped at the prompt. This talk fixes that across five practices: kill the non-determinism with **scripts** (tested green and red), make the mandatory behavior certain with **rules**, test the fuzzy parts with **evals** that isolate the context's own contribution (bleeding, leaking, and lift — not vibes), review them across models with versioning and rollback, scan them as both code AND prompts, and distribute them through a **registry** with discovery and telemetry that measures install and activation. And because the policy that governs all of this is itself a context artifact, it gets the same treatment — reviewed, tested, and gated in CI. The talk itself is a plugin: every prescription on stage is a real rule shipping on the Tessl registry.

## Resources

### The Repos & Plugins
- [jbaruch/skill-issue-brickbox](https://github.com/jbaruch/skill-issue-brickbox) — the live demo project (a tiny Lego brick-inventory FastAPI). The "tickets" are issues against this repo; DEMO 01–03 run here.
- [jbaruch/skill-issue-policy](https://github.com/jbaruch/skill-issue-policy) — the `fix-the-ticket` plugin (skill + script + rule) authored, packaged, and published **live on stage** across the five practices.
- [jbaruch/skill-issue-policy on Tessl Registry](https://tessl.io/registry/jbaruch/skill-issue-policy) — the published plugin. Install: `tessl install jbaruch/skill-issue-policy`
- [jbaruch/coding-policy](https://github.com/jbaruch/coding-policy) — the **production** policy plugin. Cross-family `gh-aw` reviewers, eval-gated, auto-published to the registry on every PR across every repo — including itself.
- [jbaruch/coding-policy on Tessl Registry](https://tessl.io/registry/jbaruch/coding-policy) — the talk's prescriptions, packaged and shipping. Install: `tessl install jbaruch/coding-policy`
- [jbaruch/kotlin-tutor](https://github.com/jbaruch/kotlin-tutor) — a companion teaching plugin (idiomatic Kotlin rules + skill + verification script), [also on the Tessl Registry](https://tessl.io/registry/jbaruch/kotlin-tutor).

### Skills — Standard & Platform
- [Agent Skills Standard](https://agentskills.io/home) — the de-facto standard for giving agents instructions (yes skills, no prompts)
- [Anthropic Agent Skills announcement](https://www.anthropic.com/news/skills)
- [Plugins for Claude Code and Cowork — Anthropic](https://claude.com/plugins)
- [Agent Skills — OpenAI Codex](https://developers.openai.com/codex/skills) — Codex's skill packaging mechanism
- [Model Context Protocol (MCP)](https://modelcontextprotocol.io) — plumbing for tools and context

### Tessl — Platform & Registry
- [Tessl — Agent Enablement Platform](https://tessl.io) — versioned, distributed plugins for AI agents
- [Tessl Registry](https://tessl.io/registry) — the package manager for agent skills

### Tessl Blog — Skills
- [Announcing Skills on Tessl: the package manager for agent skills](https://tessl.io/blog/skills-are-software-and-they-need-a-lifecycle-introducing-skills-on-tessl/) — skills as software with a lifecycle (versioned, tested, reusable, composable)
- [What Are Agent Skills? (And Why You'll Never Want to Push Code Without One Again)](https://tessl.io/blog/what-are-agent-skills-and-why-youll-never-want-to-push-code-without-one-again/)
- [My Coding Agent Needed a Package Manager for Its Own Brain (And I Gave It One Using a Skills Registry)](https://tessl.io/blog/my-coding-agent-needed-a-package-manager-for-its-own-brain-and-i-gave-it-one-using-a-skills-registry/)
- [Do Agent Skills Actually Help? A Controlled Experiment](https://tessl.io/blog/do-agent-skills-actually-help-a-controlled-experiment/) — the lift-not-attainment proof

### Tessl Blog — Evals
- [Your AGENTS.md file isn't the problem. Your lack of AI Agent Evaluations is.](https://tessl.io/blog/your-agentsmd-file-isnt-the-problem-your-lack-of-evals-is/) — unvalidated context is useless and often harmful
- [If agents use your tool, you need evals](https://tessl.io/blog/why-you-need-evals/)
- [Three Context Eval Methodologies at Tessl — Skill Review, Task and Repo Evals](https://tessl.io/blog/three-context-eval-methodologies/) — maps onto the talk's skill / plugin / project tiers
- [Introducing Task Evals: Measure Whether Your Skills Actually Work](https://tessl.io/blog/introducing-task-evals-measure-whether-your-skills-actually-work/) — baseline vs with-skill, the lift methodology
- [Improving your skills with Tessl evals](https://tessl.io/blog/improving-your-skills-with-tessl-evals/) — `tessl skill lint`, `tessl skill review`, `tessl skill eval`
- [Evaluate skill quality using scenarios — Tessl Docs](https://docs.tessl.io/evaluate/evaluate-skill-quality-using-scenarios)

### Tessl Blog — Context Engineering
- [The Context Development Lifecycle (CDLC): Better Context for AI Coding Agents](https://tessl.io/blog/context-development-lifecycle-better-context-for-ai-coding-agents/) — context as an engineering artifact: generate, distribute, test, observe
- [CI/CD for Context in Agentic Coding: Same Pipeline, Different Rules](https://tessl.io/blog/cicd-for-context-in-agentic-coding-same-pipeline-different-rules/) — evals are to context what tests are to code

### Determinism in the Demos
- [Conventional Commits](https://www.conventionalcommits.org/) — the commit format the script-backed rule enforces
- [commitlint](https://commitlint.js.org/) — the deterministic gate that rejects a sloppy commit and forces a retry
- [Semantic Versioning](https://semver.org/) — the versioning the package-management story builds on

### Agents Referenced
- [Claude Code](https://www.anthropic.com/claude-code) — the agent used in all demos

### Speaker
- [Baruch Sadogursky — @jbaruch](https://x.com/jbaruch) — Context Sommelier (self-certified)
