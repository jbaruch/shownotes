---
layout: talk
---

# The Right 300 Tokens Beat 100k Noisy Ones

**Subtitle:** The Architecture of Context Engineering
**Conference:** QCon London 2026
**Date:** 2026-04-09
**Co-speaker:** Patrick Debois
**Slides:** [View Slides](https://drive.google.com/file/d/11VJn1tbxFZmGN82Tlk8xUgGx_mg-onpy/preview)

A presentation at QCon London in
                    April 2026 in
                    London, UK by
                    {{ site.speaker.display_name | default: site.speaker.name }} and Patrick Debois

## Abstract

Your agent has 100k tokens of context. It still forgets what you told it two messages ago.

Prompt engineering taught us to craft the perfect instruction. Context engineering asks a different question: what does your model need to see and what should it never see at all? It's the shift from writing prompts to designing context.

In this talk, we dissect four antipatterns killing your agents and the architectural fixes that actually work:

- **The Stuffed Prompt** -- You crammed everything upfront and hoped for the best. Static context doesn't scale. We explore dynamic loading and context refinement: fetching what's needed when it's needed.

- **The Wrong Tool for the Job** -- You picked one retrieval method and used it everywhere. RAG isn't always the answer. We break down when embeddings help, when versioned doc artifacts give you precision, and when a simple lookup beats both.

- **The Goldfish Agent** -- Your agent forgets everything between sessions. We explore short-term and long-term memory, what to persist, what to summarize, and when to let go.

- **The Vibes Eval** -- You shipped because it "felt right." We build eval strategies that prove your context choices work or expose the tokens you're wasting.

We use a coding agent to explain these patterns so you learn how they work under the hood -- but everything also applies to AI agents in general.

## Resources

### Talk Materials
- [Slides + Speaker Notes](https://drive.google.com/file/d/11VJn1tbxFZmGN82Tlk8xUgGx_mg-onpy/preview)
- [Demo Recordings (asciinema)](https://github.com/jbaruch/qcon-london-2026-300-tokens/tree/main/demo)
- [Order Service Skill (.claude)](https://github.com/jbaruch/qcon-london-2026-300-tokens/blob/main/.claude/skills/order-service/SKILL.md)
- [Pidge Tile (docs + rules + skill)](https://github.com/jbaruch/qcon-london-2026-300-tokens/tree/main/pidge-tile)
- [Pidge Tile on Tessl Registry](https://tessl.io/registry/jbaruch/pidge)
- [Four-Antipattern Cheat Sheet](#cheat-sheet)

### Context Engineering
- [Context Engineering -- Tobi Lutke](https://x.com/tobi/status/1935533422589399127)
- [Agent Skills Standard](https://agentskills.io/home)
- [Tessl -- Context Artifact Registry](https://tessl.io)

### Tools Used in Demos
- [Claude Code](https://www.anthropic.com/claude-code) -- The coding agent used in all demos
- [Pidge Tile](https://tessl.io/registry/jbaruch/pidge) -- Context tile for the pidge notification library used in demos
- [presenterm](https://github.com/mfontanini/presenterm) -- Terminal-based presentation tool

## Cheat Sheet

| Antipattern | Fix |
|-------------|-----|
| **Stuffed Prompt** | Skills. Lazy-load context on demand. Treat them as context artifacts. |
| **Wrong Tool** | Four context channels. Context artifacts bundle skills + rules + docs. |
| **Goldfish Agent** | Don't trust built-in memory or compaction. Write it down yourself. |
| **Vibes Eval** | LLM generates rubrics. You review. LLM judges. You assess the delta. |
