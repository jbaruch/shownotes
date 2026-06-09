---
layout: talk
permalink: /aidevcon-london-2026-dont-write-prompts/
---

# Don't Write Prompts, Write Software

**Conference:** AI Native DevCon 2026, London  
**Date:** 2026-06-02  
**Slides:** [View Slides](https://drive.google.com/file/d/1lRNiK6PKoZacB6rJoWmEhtsb4INeEelu/preview)  
**Video:** [View Video](https://www.youtube.com/watch?v=yNiyMkjXT9g)  

A presentation at AI Native DevCon 2026, London in
                    June 2026 in
                    London, United Kingdom by 
                    {{ site.speaker.display_name | default: site.speaker.name }} and Macey Baker

## Abstract

Skills are more than reusable prompts — they are composable units of behaviour. In this workshop we take a real, end-to-end agent workflow and turn it into a working system built from skills: identifying the right behavioural units, turning them into discrete skills, refining and optimising them with Tessl's review and eval tools, and bundling them into a reusable plugin. Along the way we explore why this approach is often more robust than relying on a single giant entry prompt, and how modular skills make agent behaviour easier to test, improve, and reuse.

## Resources

- [Workshop repository](https://github.com/jbaruch/context-workshop-aidevcon-london-2026) — the live build from the session
- [Stop Prompt Hacking](https://tessl.io/blog/stop-prompt-hacking/) — Macey's research: threatening the model, persona cosplay, and tip bribes don't actually help
- [Claude Code](https://docs.claude.com/en/docs/claude-code) — skills, plugins, hooks, and the agentic CLI
- [Model Context Protocol (MCP)](https://modelcontextprotocol.io) — the open standard for tool/context integration
- [Tessl](https://tessl.io) — author, review, and eval context artifacts
- [Tessl registry](https://tessl.io/registry) — publish and install plugins across teams
- [jbaruch/coding-policy](https://tessl.io/registry/jbaruch/coding-policy) — the meta-policy plugin the agentic reviewer enforces
- [GitHub Agentic Workflows (gh-aw)](https://github.github.com/gh-aw/) — agentic reviewers that run in GitHub Actions
- [GitHub Copilot code review](https://docs.github.com/en/copilot/concepts/agents/code-review) — the bot reviewer summoned in the demo
- [OpenRouter](https://openrouter.ai) — one API across many models; send cheap tasks to cheap models
- [LiteLLM](https://github.com/BerriAI/litellm) — unified LLM gateway with routing, fallbacks, and cost control
- [More talks by Baruch](https://speaking.jbaru.ch) — slides, videos, and shownotes
