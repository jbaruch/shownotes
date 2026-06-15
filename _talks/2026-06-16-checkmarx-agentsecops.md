---
layout: talk
---

# DevSecOps Is Dead. Meet AgentSecOps.

**Conference:** Checkmarx Agentic AppSec Unleashed Virtual Summit 2026  
**Date:** 2026-06-16  
**Slides:** [View Slides](https://drive.google.com/file/d/1Kjn6qv6dYgaUlqqikHRsIpwBZV_W4YqE/preview)  

A presentation at Checkmarx Agentic AppSec Unleashed Virtual Summit 2026 in
                    June 2026 by
                    {{ site.speaker.display_name | default: site.speaker.name }}

## Abstract

DevSecOps already automated the scan — SAST, SCA, DAST, IaC wired into CI — and those scanners are System 1: fast, automatic, pattern-matching. Show one a known shape and it fires, instantly, every time. But the vulnerabilities that actually hurt have no fixed shape — broken access control, business-logic flaws, an authorization check removed because the code read cleaner without it — and catching those is System 2: slow, deliberate reasoning about what the code is for. DevSecOps automated the System 1 and left the System 2 where it had always lived: in a human author who understood the system. AI agents remove that author from the seat, and here is the trap — an agent is System 1 too. You did not add a second mind; you replaced your only System 2 with another System 1, so now a pattern-matcher writes the code and a pattern-matcher checks it, and the vulnerabilities that need slow thinking sail through every green gate and ship exploitable. And no, the new "reasoning" models do not rescue this: Veracode's data shows security pass rates flat near 55 percent regardless of model size or generation, because scaling System 1 never adds up to System 2. The reframe follows from the diagnosis — you cannot upgrade a System 1 into a System 2, so supply the System 2 from outside: hand the agent the threat model, the secure patterns, and the reason each control exists as explicit, versioned, machine-readable context it reads at generation time, then wrap it in guardrails that force a deliberate verification step it cannot skip. That is AgentSecOps: security stops being a gate the pipeline passes through and becomes context the agent is built from. And the context layer cuts both ways — the same place you load your slow thinking is where an attacker injects, because a System 1 follows the instructions in front of it and cannot stop to ask "should I trust this?" Prompt injection is SQL injection reborn one plane up, and AppSec's oldest law, "never trust user input," becomes "never trust the agent's input."

## Resources

### The data behind the talk

- [Veracode: 2025 GenAI Code Security Report](https://www.veracode.com/blog/genai-code-security-report/) — ~45% of AI-generated code ships with a known OWASP Top 10 vulnerability; security pass rate flat near 55% across 100+ models and 80+ tasks
- [Veracode: Spring 2026 GenAI Code Security Update](https://www.veracode.com/blog/spring-2026-genai-code-security/) — syntax climbed to ~95% while security never moved; bigger and "reasoning" models don't change the security number
- [Checkmarx: Future of AppSec in the Era of AI — 2026 Outlook](https://checkmarx.com/report-future-of-appsec-2025/) — survey of 2,350 CISOs, AppSec managers, and developers across 14 countries
- [Checkmarx: 75% of companies ship code they know is vulnerable](https://checkmarx.com/press-releases/75-of-companies-ship-vulnerable-code-despite-a-startling-increase-in-threat-velocity-agentic-appsec-unleashed-26-is-changing-that/) — the "three out of four" stat; orgs with 81–100% AI-generated code are ~3× more likely to ship known-vulnerable software

### The thinking behind the talk

- [Daniel Kahneman: Thinking, Fast and Slow](https://en.wikipedia.org/wiki/Thinking,_Fast_and_Slow) — System 1 (fast, automatic, pattern-matching) vs System 2 (slow, deliberate reasoning), the spine of the whole talk

### The new attack surface

- [OWASP Top 10 for LLM Applications (2025)](https://genai.owasp.org/resource/owasp-top-10-for-llm-applications-2025/) — prompt injection, insecure tool use, data exfiltration; sits on top of, not instead of, the classic Top 10
- [OWASP Top 10 (Web Application Security Risks)](https://owasp.org/www-project-top-ten/) — the original list the LLM Top 10 layers onto, including the injection family prompt injection belongs to
- [Simon Willison: Prompt injection attacks against GPT-3](https://simonwillison.net/2022/Sep/12/prompt-injection/) — where the term was coined, by direct analogy to SQL injection: untrusted data crossing into the instruction plane
- [Simon Willison: The lethal trifecta for AI agents](https://simonw.substack.com/p/the-lethal-trifecta-for-ai-agents) — private data + untrusted content + external communication = exploitable
- [Tessl: Anthropic on attackers weaponising Claude Code — and why AI will favor defenders](https://tessl.io/blog/anthropic-details-how-attackers-are-weaponising-claude-code-but-says-ai-will-ultimately-give-defenders-the-edge/) — a real-world Axis 2, and the case for the sharper System 1

### Security as context

- [Tessl — Agent Enablement Platform](https://tessl.io/) — security as context, not gate: explicit, versioned, machine-readable context the agent consumes at generation time
- [Tessl — Spec-Driven Development](https://docs.tessl.io/use/spec-driven-development-with-tessl) — capture intent, constraints, and secure patterns as specs the agent reads before it writes code

- [More talks by Baruch](https://speaking.jbaru.ch) — slides, videos, and shownotes
