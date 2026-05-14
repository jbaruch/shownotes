---
layout: talk
---

# You're Absolutely Right (and Other Lies My AI Told Me)

**Subtitle:** Engineering Context for Agentic AI
**Conference:** GeeCON 2026
**Date:** 2026-05-14
**Slides:** [View Slides](https://drive.google.com/file/d/10ZbYU0r9w0kJ75QHIOmZRBRR8KdXcS_g/preview)

A presentation at GeeCON in
                    May 2026 in
                    Kraków, Poland by
                    {{ site.speaker.display_name | default: site.speaker.name }}

## Abstract

Your agent agrees with you. Every time. It removes tests "for clarity." It changes `floor` to `round` because that's "more accurate." It says "you're absolutely right" — and then ships the bug you were about to talk yourself out of.

The failure has two missing pieces. The agent can't see the constraints that would let it push back (your company's rules aren't in any training set, and they never will be). And the agent has no rule empowering pushback when the operator is wrong (RLHF trained it to agree by default). Bigger models won't fix this. The two largest labs in the world keep redirecting you to write a rules file — for the half they can fix *and* the half they can't.

This talk treats context as an engineering problem: packaged, versioned, distributed, evaluated. Three primitives — **skills** (reusable workflows), **rules** (always-loaded invariants and pushback gates), **scripts** (deterministic transformations) — composed into context artifacts the agent installs like dependencies. The chapter on rules-vs-scripts-vs-skills is a decision frame, not a taxonomy: when a rule beats a prompt, when a script beats a rule, when a hook beats a script. The chapter on evaluation kills the vibes-eval antipattern and gives you skill / plugin / project tiers that map onto unit / integration / system tests you already know how to write.

And then — the meta reveal. The talk itself is a plugin. Every prescription on stage is a real rule in `jbaruch/coding-policy` on the Tessl registry. The medium is the message.

## Resources

- [**AI Native DevCon London — June 1, 2026 — 50% off with code BARUCH50**](https://jbaru.ch/aidevcon-ldn26-baruch50)

### The Receipts (Cold Open & Inoculation)
- [Anthropic Claude Code Issue #3382 — "you're absolutely right"](https://github.com/anthropics/claude-code/issues/3382) — closed as "completed" August 2025, no fix commit, recommended workaround: write a rules file
- [Sycophancy in GPT-4o: What happened and what we're doing about it — OpenAI](https://openai.com/index/sycophancy-in-gpt-4o/) — April 2025, five-day rollback after the model praised a "shit on a stick" business idea and validated a user who'd stopped his meds
- [Expanding on what we missed with sycophancy — OpenAI](https://openai.com/index/expanding-on-sycophancy/) — follow-up postmortem: short-term thumbs-up training drowned out the anti-sycophancy reward signal

### Public Catastrophes (Slide 15 — context starvation in production)
- [Replit AI deletes Jason Lemkin's production database — The Register](https://www.theregister.com/2025/07/21/replit_saastr_vibe_coding_incident/) — July 2025, "told it not to ELEVEN TIMES IN ALL CAPS", agent admitted "catastrophic error in judgment", 1,206 executives + 1,196 companies wiped
- [Replit CEO: What really happened when AI agent wiped Lemkin's database — Fast Company](https://www.fastcompany.com/91372483/replit-ceo-what-really-happened-when-ai-agent-wiped-jason-lemkins-database-exclusive)
- [Cursor + Claude Opus 4.6 wipes PocketOS production database AND backups in 9 seconds — The Register](https://www.theregister.com/2026/04/27/cursoropus_agent_snuffs_out_pocketos/) — April 2026, agent's own postmortem opened with "NEVER FUCKING GUESS!" while describing itself guessing
- ['I violated every principle I was given' — Cursor agent deletes PocketOS database — Fast Company](https://www.fastcompany.com/91533544/cursor-claude-ai-agent-deleted-software-company-pocket-os-database-jer-crane)
- [Google Gemini CLI deletes user's files, confesses "gross incompetence" — Slashdot](https://developers.slashdot.org/story/25/07/26/0642239/google-gemini-deletes-users-files-then-just-admits-i-have-failed-you-completely-and-catastrophically) — July 2025, "I have failed you completely and catastrophically. My gross incompetence…"

### The Plugins
- [jbaruch/coding-policy on Tessl Registry](https://tessl.io/registry/jbaruch/coding-policy) — **the talk itself, packaged.** Every prescriptive claim in chapters 3, 4, and 5 is a real rule in this plugin. Sixteen rules, skills with delegated scripts, eval scenarios, versioned, peer-reviewed.
  - Install: `tessl install jbaruch/coding-policy`
- [jbaruch/kotlin-tutor on Tessl Registry](https://tessl.io/registry/jbaruch/kotlin-tutor) — the running example throughout the talk: a teaching plugin for idiomatic Kotlin. Skill `kotlinify-tests`, rules K-1..K-6 (`prefer-val`, `nullable-question-mark`, `use-data-class`, `kotest-over-junit`, `prefer-stdlib-scope`, `extension-over-util`), script `verify-no-junit-assertions`.
  - Install: `tessl install jbaruch/kotlin-tutor`

### Context Engineering
- [Tessl — Agent Enablement Platform](https://tessl.io) — versioned, distributed plugins for AI agents
- [Tessl Registry](https://tessl.io/registry) — the package manager for agent skills
- [Agent Skills Standard](https://agentskills.io/home) — the modern de-facto standard for giving agents instructions (yes skills, no prompts)
- [Anthropic Agent Skills announcement](https://www.anthropic.com/news/skills)
- [Model Context Protocol (MCP)](https://modelcontextprotocol.io) — plumbing for tools and context
- [Context Engineering — Tobi Lütke](https://x.com/tobi/status/1935533422589399127) — "the term I much prefer over prompt engineering"

### Tessl Blog — Context Engineering
- [The Context Development Lifecycle (CDLC): Better Context for AI Coding Agents](https://tessl.io/blog/context-development-lifecycle-better-context-for-ai-coding-agents/) — context as an engineering artifact: generate, distribute, test, observe
- [The Context Flywheel: Why the Best AI Coding Teams Will Win on Context](https://tessl.io/blog/the-context-flywheel-why-the-best-ai-coding-teams-will-win-on-context/) — better context produces better signals produces better context; context doesn't commoditize
- [Context Maturity for AI Coding Teams](https://tessl.io/blog/context-maturity-for-ai-coding-teams/) — three dimensions maturing together (Agents & Tools / Context / People & Organization)
- [CI/CD for Context in Agentic Coding: Same Pipeline, Different Rules](https://tessl.io/blog/cicd-for-context-in-agentic-coding-same-pipeline-different-rules/) — evals are to context what tests are to code
- [Context-Bench: Benchmarking AI's Context Engineering Proficiency](https://tessl.io/blog/context-bench-benchmarking-ais-context-engineering-proficiency/) — how efficiently a model manages memory, revisits prior context, and what it costs
- [Making Claude Good at Go using Context Engineering with Tessl](https://tessl.io/blog/making-claude-good-at-go-using-context-engineering-with-tessl/) — applied example

### Tessl Blog — Skills
- [Announcing Skills on Tessl: the package manager for agent skills](https://tessl.io/blog/skills-are-software-and-they-need-a-lifecycle-introducing-skills-on-tessl/) — skills as software with a lifecycle (versioned, tested, reusable, composable)
- [What Are Agent Skills? (And Why You'll Never Want to Push Code Without One Again)](https://tessl.io/blog/what-are-agent-skills-and-why-youll-never-want-to-push-code-without-one-again/)
- [My Coding Agent Needed a Package Manager for Its Own Brain (And I Gave It One Using a Skills Registry)](https://tessl.io/blog/my-coding-agent-needed-a-package-manager-for-its-own-brain-and-i-gave-it-one-using-a-skills-registry/)
- [Do Agent Skills Actually Help? A Controlled Experiment](https://tessl.io/blog/do-agent-skills-actually-help-a-controlled-experiment/) — the lift-not-attainment proof
- [Anthropic, OpenAI, or Cursor model for your agent skills? 7 learnings from running 880 evals (including Opus 4.7)](https://tessl.io/blog/anthropic-openai-or-cursor-model-for-your-agent-skills-7-learnings-from-running-880-evals-including-opus-47/) — skills lift every configuration tested
- [Best Agent Skills for AI Code Review: 8 Evaluated Skills](https://tessl.io/blog/best-agent-skills-for-ai-code-review-8-evaluated-skills-for-dev-workflows/)
- [Evaluating Kimi 2.5 vs Kimi 2.6: What happens to agent skills when the model gets smarter?](https://tessl.io/blog/kimi-k26-agent-skills-evaluation/) — skills still matter as models get better

### Tessl Blog — Evals
- [Your AGENTS.md file isn't the problem. Your lack of AI Agent Evaluations is.](https://tessl.io/blog/your-agentsmd-file-isnt-the-problem-your-lack-of-evals-is/) — unvalidated context is useless and often harmful
- [If agents use your tool, you need evals](https://tessl.io/blog/why-you-need-evals/) — for maintainers
- [Three Context Eval Methodologies at Tessl — Skill Review, Task and Repo Evals](https://tessl.io/blog/three-context-eval-methodologies/) — the three eval surfaces (maps to the talk's skill / plugin / project tiers)
- [Introducing Task Evals: Measure Whether Your Skills Actually Work](https://tessl.io/blog/introducing-task-evals-measure-whether-your-skills-actually-work/) — baseline vs with-skill, the lift methodology
- [Improving your skills with Tessl evals](https://tessl.io/blog/improving-your-skills-with-tessl-evals/) — `tessl skill lint`, `tessl skill review`, `tessl skill eval`
- [Evaluate skill quality using scenarios — Tessl Docs](https://docs.tessl.io/evaluate/evaluate-skill-quality-using-scenarios)
- [How to Evaluate AI Agents: An Introduction to Harbor](https://tessl.io/blog/how-to-evaluate-ai-agents-an-introduction-to-harbor/) — Terminal-Bench heritage; containerized agent eval
- [Anthropic brings evals to skill-creator. Here's why that's a big deal](https://tessl.io/blog/anthropic-brings-evals-to-skill-creator-heres-why-thats-a-big-deal/) — Create / Eval / Improve / Benchmark
- [Evaluating context compression in AI agents](https://tessl.io/blog/factory-publishes-framework-for-evaluating-context-compression-in-ai-agents/) — structured state beats compressed text

### Prompt Caching (Q&A — cost objection)
- [Anthropic prompt caching](https://docs.anthropic.com/en/docs/build-with-claude/prompt-caching)
- [OpenAI prompt caching](https://platform.openai.com/docs/guides/prompt-caching)
- [Google Gemini context caching](https://ai.google.dev/gemini-api/docs/caching)

### Agents Referenced
- [Claude Code](https://www.anthropic.com/claude-code) — the agent used in all demos
- [Cursor](https://cursor.com)
- [OpenAI Codex](https://developers.openai.com/codex)
- [Aider](https://aider.chat)
- [Gemini CLI](https://github.com/google-gemini/gemini-cli)

### Vendor Plugin Systems (Slide 31 — "Claude plugins, Codex plugins, equivalents from every vendor")
- [Plugins for Claude Code and Cowork — Anthropic](https://claude.com/plugins)
- [anthropics/claude-plugins-official — official Claude Code plugin directory](https://github.com/anthropics/claude-plugins-official)
- [Agent Skills — OpenAI Codex](https://developers.openai.com/codex/skills) — Codex's skill packaging mechanism (2% context-window cap for the initial skills list)
- [AGENTS.md — Codex custom instructions](https://developers.openai.com/codex/guides/agents-md) — the rules-file convention Codex reads on session start

### Conventional Commits & Commitlint (DEMO 02, R-10)
- [Conventional Commits specification](https://www.conventionalcommits.org/) — the format R-10 prescribes
- [commitlint](https://commitlint.js.org/) — the deterministic gate that rejects the agent's "fix stuff" commit and forces a retry
- [Semantic Versioning](https://semver.org/) — the versioning row in the package-management-generalized table

### The Three Primitives

| Primitive | What it is | When to reach for it |
|---|---|---|
| **Skill** | Labeled procedure the agent invokes by name — lazily loaded, versioned, packaged | Reusable workflow that requires reasoning |
| **Rule** | Always-loaded text constraint — invariant or pushback gate | Always-true / never-do behavioral constraint |
| **Script** | Deterministic transformation — same input, same output | Computation or check that must not be left to agent judgment |

### Two Kinds of Rules

| Flavor | Shape | Example |
|---|---|---|
| **Invariant** | "Never X / Always Y" | `K-1 prefer-val` — properties default to immutable |
| **Pushback gate** | "Before doing X, stop and ask" | `R-7` — ask before removing any guard, feature flag, or rate-limiter |

Pushback gates belong on work that's hard to reverse. Cheap reversible work flows freely. Over-scope them and your day turns into "yes proceed, yes proceed, yes proceed."

### The Eval Hierarchy

| Tier | Maps to | What it catches |
|---|---|---|
| **Skill eval** | Unit test | Does one skill produce the expected shape on its scenarios? |
| **Plugin eval** | Integration test | Do the skills + rules + scripts inside one plugin compose without contradicting each other? |
| **Project eval** | System test | With multiple plugins installed, do the rules conflict across plugins? |

Watch out for **bleeding** (criterion value appearing verbatim in the task description) and **leaking** (criteria referencing tile-internal implementation details). Always run a baseline — attainment without lift is a vanity metric.

### Operating Principles

- **3-1** — Package your context. Skills, rules, scripts. Versioned, tested, distributed.
- **4-1** — When in doubt, assume *not judgment*. Default toward the deterministic primitives.
- **4-2 (hook principle)** — When the agent has motive to skip the script, move the script outside the agent's control (pre-commit hook, CI gate, server-side enforcement).
- **4-3 (the wisdom prayer)** — *Grant me the rules for what's always true, the scripts for what mustn't be judged, the skills for what must be — and the wisdom to know which is which.*
- **5-1** — You're either measuring or you're waving. Stop waving.
- **6-1** — If your agent keeps agreeing with you even when you're wrong — the problem isn't the agent.

### Three Monday Actions

1. **Write a skill** — pick one procedure you keep rewriting in chat
2. **Add a rule** — one invariant or one pushback gate
3. **Write an eval** — fixed task, deterministic criteria, comparable across runs
4. **Package it** — `tile.json`, version, CHANGELOG
5. **Share it with one teammate** — registries exist for a reason

If you do all five by next Friday, you'll have replaced about 30% of your team's vibes-based evaluation with structure.

### Speaker
- [Baruch Sadogursky — @jbaruch](https://x.com/jbaruch) — Context Sommelier (self-certified)
