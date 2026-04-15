---
layout: talk
thumbnail_url: /assets/images/thumbnails/2026-04-14-arcofai26-ai-native-dev-thumbnail.png
---

# The AI-Native Developer: From Tools to Teammates

**Conference:** Arc of AI 2026
**Date:** 2026-04-14
**Speakers:** Simon Maple & Baruch Sadogursky
**Slides:** [View Slides](https://drive.google.com/file/d/1sRoSrOn4YH5bwDATlow9UR4JlOuLJCED/preview)
**Video:** [Watch Video](https://youtu.be/M5AXc8iNY9Y)

## Abstract

A year ago, the industry was debating AI coding assistants. Today, we're building with AI agents as collaborative teammates, and that changes everything.

In a few pockets of conversation our thoughts have evolved beyond "will AI take our jobs?" to more interesting questions: How do we engineer context for reliable AI systems? What does evaluation look like when agents are making decisions? How do we build workflows where humans and AI agents contribute their distinct strengths? However others are firmly stuck in the worry of a future without software development as we know it today.

In this session, we'll explore what it means to be an AI-native developer in 2026, someone who thinks in terms of agent skills, context engineering, and orchestrated workflows rather than just autocomplete. These changes aren't about replacing developers. They're about expanding what's possible and building systems we couldn't imagine a year ago, and developing new skills that make us more valuable, not less. Our future is a fundamentally creative, deeply human job.

## Resources

### Writers, Word Processors, and the Fear of New Tools

- [Track Changes: A Literary History of Word Processing by Matthew G. Kirschenbaum](https://www.hup.harvard.edu/books/9780674417076) — Harvard University Press, 2016. The definitive history of how writers adopted word processors, including the fear, shame, and eventual creative liberation.
- [How Literature Became Word Perfect](https://newrepublic.com/article/133011/literature-became-word-perfect) — The New Republic review of the word processor revolution in literary culture.
- [Picturing the Literary History of Word Processing](https://www.theparisreview.org/blog/2016/05/11/this-faithful-machine/) — The Paris Review on the machines that changed writing.
- [The Kaypro II: An Early Computer With A Writer's Heart](https://www.npr.org/sections/alltechconsidered/2014/09/16/349027131/the-kaypro-ii-an-early-computer-with-a-writers-heart) — NPR on the Kaypro that Amy Tan and other writers used.
- [Isaac Asimov's Technophobia: Why He Feared the Word Processor](https://www.devinbyrka.com/isaac-asimovs-technophobia-why-he-feared-the-word-processor/) — Asimov adopted a TRS-80 in 1981 at age 61 and wrote over 11 million words with Scripsit.

### Grace Hopper and the First Compiler

- [Grace Hopper — Wikipedia](https://en.wikipedia.org/wiki/Grace_Hopper) — Rear Admiral Grace Hopper (1906–1992), pioneer of computer programming who developed the first compiler (A-0, 1952) and helped create COBOL.
- [Grace Hopper — Wikiquote](https://en.wikiquote.org/wiki/Grace_Hopper) — "I had a running compiler and nobody would touch it, because they carefully told me computers could only do arithmetic."
- [The Wit and Wisdom of Grace Hopper](https://www.cs.yale.edu/homes/tap/Files/hopper-wit.html) — Yale CS collection of Hopper's most famous quotes and anecdotes.
- [Grace Hopper: Computer Pioneer](https://www.biography.com/scientist/grace-hopper) — Biography covering her Navy career and computing contributions.

### The Parade of Panic: Every Abstraction Leap

- [Deterministic vs. Nondeterministic Systems](https://en.wikipedia.org/wiki/Nondeterministic_algorithm) — The fundamental distinction at the heart of the talk: every previous abstraction leap (compilers, VMs, cloud) was deterministic; AI is not.
- [Mr. Fusion — Back to the Future Wiki](https://backtothefuture.fandom.com/wiki/Mr._Fusion) — The "inverse Mr. Fusion" metaphor: you put in expertise and sometimes get garbage out.

### Prompt Engineering Is Dead

- [Stop Prompt Hacking — Macey Baker](https://tessl.io/blog/stop-prompt-hacking/) — Macey Baker's experiment showing that prompt hacking techniques (threatening agents, begging, all-caps constraints) produce zero measurable improvement on strong current models. Tested across Codex, Claude Code, and Gemini with rigorous evals.
- [Mastering LLM Prompting in the Real World — Macey Baker](https://tessl.io/podcast/mastering-llm-prompting-in-the-real-world/) — AI Native Dev podcast episode with Macey Baker on the evolution from prompting to structured context.

### Evals: From Vibes to Engineering

- [Introducing Task Evals: Measure Whether Your Skills Actually Work](https://tessl.io/blog/introducing-task-evals-measure-whether-your-skills-actually-work/) — Tessl's approach to structured evaluation of agent skills: scenarios, rubrics, automated scoring.
- [Three Context Eval Methodologies at Tessl](https://tessl.io/blog/three-context-eval-methodologies/) — Skill reviews (unit tests), task evals (integration tests), and plugin evals (system tests) for agent context.

### Context Engineering

- [Effective Context Engineering for AI Agents — Anthropic](https://www.anthropic.com/engineering/effective-context-engineering-for-ai-agents) — Anthropic's definitive guide to context engineering: the art and science of curating the optimal token set for reliable agent behavior.
- [Context Engineering for AI Agents: Lessons from Building Manus](https://manus.im/blog/Context-Engineering-for-AI-Agents-Lessons-from-Building-Manus) — Practical lessons from building production AI agents with structured context.
- [The New Skill in AI Is Not Prompting, It's Context Engineering](https://www.philschmid.de/context-engineering) — Why context engineering has replaced prompt engineering as the critical developer skill.

### The good-oss-citizen Case Study (15% to 99%)

- [Our AI Is the Bright Kid with No Manners, Part 1](https://tessl.io/blog/our-ai-is-the-bright-kid-with-no-manners-part-1/) — Why maintainers are banning AI contributions: the code is fine, but the manners are terrible.
- [Our AI Is the Bright Kid with No Manners, Part 2](https://tessl.io/blog/our-ai-is-the-bright-kid-with-no-manners-part-2/) — The eval journey from 92% (open-book lie) to 15% (realistic baseline) to 99% (with the good-oss-citizen skill).
- [good-oss-citizen on the Tessl Registry](https://tessl.io/registry/tessl-labs/good-oss-citizen) — The packaged skill that teaches agents open source etiquette: check AI policy, detect claimed issues, sign the DCO, add disclosure.
- [Developer Certificate of Origin (DCO)](https://developercertificate.org/) — The sign-off attestation required by many open source projects, referenced in the good-oss-citizen skill.

### Agent Security: The Supply Chain Problem

- [ToxicSkills: Snyk Study of Agent Skills Supply Chain Compromise](https://snyk.io/blog/toxicskills-malicious-ai-agent-skills-clawhub/) — Snyk scanned 3,984 public agent skills; 36% had at least one security flaw, including hardcoded secrets, suspicious downloads, and credential leaks.
- [Snyk Agent Scan — GitHub](https://github.com/snyk/agent-scan) — Open-source security scanner for AI agents, MCP servers, and agent skills.
- [Agent Scan — Skill Inspector (Snyk Labs)](https://labs.snyk.io/experiments/skill-scan/) — Web-based tool to scan agent skills for security vulnerabilities.
- [OWASP Agentic Skills Top 10](https://owasp.org/www-project-agentic-skills-top-10/) — The 10 most critical security risks in agentic AI skills, with evidence-based mitigations.
- [OWASP Top 10 for Agentic Applications 2026](https://genai.owasp.org/resource/owasp-top-10-for-agentic-applications-for-2026/) — Security framework for autonomous AI systems, developed by 100+ industry experts.
- [Snyk — Developer Security Platform](https://snyk.io/) — The security platform behind the ToxicSkills research.

### Patrick Debois: "What If Context Was Like Code?"

- [Context Is the New Code — Patrick Debois, QCon London 2026](https://qconlondon.com/presentation/mar2026/context-new-code) — Patrick Debois's QCon London talk where the person who coined "DevOps" asks: "What if Context was like Code?"
- [Patrick Debois — jedi.be](https://www.jedi.be/) — Patrick Debois's site with presentations and publications.
- [The DevOps Handbook, 2nd Edition](https://itrevolution.com/product/the-devops-handbook-second-edition/) — By Gene Kim, Jez Humble, Patrick Debois, John Willis, and Nicole Forsgren. IT Revolution Press, 2021.
- [The Incredible True Story of How DevOps Got Its Name](https://newrelic.com/blog/nerd-life/devops-name) — How Patrick Debois coined "DevOps" by organizing the first DevOpsDays in 2009.

### Olivier Pomel: Autonomous Incident Response

- [Datadog CEO Olivier Pomel on AI, Trust, and Observability — Tessl Podcast](https://tessl.io/podcast/datadog-ceo-olivier-pomel-on-ai-trust-and-observability/) — The AI Native Dev podcast episode where Pomel discusses autonomous incident response and observability for AI systems.
- [Observability for AI Systems — Pigment Perspectives Podcast](https://www.pigment.com/perspectives-podcast/datadog-olivier-pomel-reimagining-observability-for-the-ai-powered-enterprise) — Pomel on Pigment's podcast: "In a large number of cases, by the time customers wake up, there is already a hypothesis of what is wrong."
- [Datadog](https://www.datadoghq.com/) — Cloud-scale observability and security platform.

### AI Coding Agents and IDEs

- [GitHub Copilot](https://github.com/features/copilot) — GitHub's AI pair programmer, powered by OpenAI models.
- [Cursor](https://cursor.com/) — AI-native code editor built on VS Code with agent mode.
- [Claude Code — Anthropic](https://www.anthropic.com/product/claude-code) — Anthropic's agentic coding tool that lives in your terminal.
- [Windsurf](https://windsurf.com/) — AI-native code editor by Codeium with the Cascade agentic engine.
- [OpenAI Codex](https://openai.com/codex/) — OpenAI's coding agent with CLI and cloud-based development.
- [Gemini Code Assist — Google](https://codeassist.google/) — Google's AI coding assistant with agent mode for multi-file tasks.

### The Agentic SDLC and Context Lifecycle

- [Tessl — Agent Enablement Platform](https://tessl.io/) — The platform for the agentic context software development lifecycle: build, evaluate, distribute, and optimize agent skills.
- [Tessl Registry](https://tessl.io/registry/) — The package manager for agent skills. Shareable, versioned, quality-scored context packages.
- [Tessl Documentation](https://docs.tessl.io/) — Getting started with skills, evals, and the context lifecycle.
- [Announcing Skills on Tessl: The Package Manager for Agent Skills](https://tessl.io/blog/skills-are-software-and-they-need-a-lifecycle-introducing-skills-on-tessl/) — Why skills need a lifecycle, not just a folder.

### Previous Versions of This Talk

- [Devoxx UK 2025 Keynote by Simon Maple (YouTube)](https://www.youtube.com/watch?v=eD93rxaf5XA) — Earlier version of the keynote with a different audience and format.
- [DevNexus 2026: Back to the Future of Software](https://speaking.jbaru.ch/talks/2026-03-06-devnexus-bttf-2026/) — Simon and Baruch's DevNexus 2026 talk covering related themes.

### Books by the Speakers

- [Liquid Software by Baruch Sadogursky](https://amzn.to/47AoDug) — On continuous updates and the future of software delivery.
- [DevOps Tools for Java Developers by Baruch Sadogursky](https://amzn.to/3OWsgTP) — Practical DevOps tooling for the Java ecosystem.

### Conference

- [Arc of AI 2026](https://www.arcofai.com/) — The conference where this keynote was delivered. Austin, TX, April 13–16, 2026.

### Speakers

- [Baruch Sadogursky — speaking.jbaru.ch](https://speaking.jbaru.ch/) — All talks, slides, and shownotes.
- [Simon Maple — Sessionize](https://sessionize.com/simon-maple/) — Simon's speaker profile and upcoming talks.
- [@jbaruch on Twitter/X](https://x.com/jbaruch)
- [@simon_maple on Twitter/X](https://x.com/simon_maple)
