---
layout: talk
---

# Skill Issue: How to Write Skills That Actually Work

**Conference:** QCon San Francisco 2026
**Date:** 2026-11-19
**Slides:** [View slides (PDF)](https://drive.google.com/file/d/1QgSCjrbTA802pr36UOdTz2VE1zeTlUGl/preview)
**Video:** [Watch the workshop](https://youtu.be/eEwF53tUBrc)

A presentation at QCon San Francisco in November 2026 in San Francisco, USA by
{{ site.speaker.display_name | default: site.speaker.name }}

## Abstract

A Brickbox customer thinks they paid twice. This workshop follows a skill that helps an agent look up the order, separate the payment from the pending hold, and write a note for Billing. A broad description sends a product question to the wrong skill; a saved script removes repeated lookup work; a rule sets the output location; and a hook can stop a tool call. Decision models add a way to classify requests without asking a reasoning model to do every step. The recording includes the live switch from Jev to Cloudflare Clef, followed by a short walkthrough of packaging and evals. Throughout, Baruch asks the agent why it acted differently and checks the file, command, or result it points to. The workbook and working copies let you continue the exercises after the recording.

## Resources

### Run the workshop

- [Slides (Google Drive)](https://drive.google.com/file/d/1QgSCjrbTA802pr36UOdTz2VE1zeTlUGl/view)
- [Starter repository and setup](https://github.com/jbaruch/skill-issue-order-handoff)
- [Attendee workbook](https://github.com/jbaruch/skill-issue-order-handoff/blob/main/WORKBOOK.md)
- [Working copies](https://github.com/jbaruch/skill-issue-order-handoff/tree/main/answers)
- [Recorded runs](https://github.com/jbaruch/skill-issue-order-handoff/tree/main/evidence)
- [Decision-model comparison and recorded runs](https://github.com/jbaruch/skill-issue-order-handoff/blob/main/evidence/README.md)
- [Scored eval example](https://github.com/jbaruch/skill-issue-order-handoff/blob/main/evidence/eval-scores.md)
- [Published ACR package v1.0.0](https://github.com/jbaruch/skill-issue-order-handoff/releases/tag/v1.0.0)
- [Copilot review that names the Captured Only rule](https://github.com/jbaruch/skill-issue-order-handoff/pull/1#pullrequestreview-5979515807)

### Tools and references

- [Baruch's Agentic Context Registry (ACR)](https://github.com/jbaruch/agentic-context-registry)
- [ACR package manifest](https://github.com/jbaruch/agentic-context-registry/blob/v0.6.0/docs/package-manifest.md)
- [Jev](https://docs.typesafe.ai/primitives/choice)
- [Cloudflare Clef](https://developers.cloudflare.com/workers-ai/models/clef/)
- [Gemini Decisions](https://blog.google/innovation-and-ai/technology/developers-tools/gemini-decisions-api/)
- [OpenAI Decisions](https://developers.openai.com/api/docs/guides/decisions)
- [Microsoft Decision](https://commandline.microsoft.com/microsoft-decision-model-ga/)
- [Automatic approval review](https://developers.openai.com/api/docs/guides/agents-api/sessions/approvals)
- [coding-policy](https://github.com/jbaruch/coding-policy)
- [Port Skills](https://docs.port.io/agent-management/skills/overview/)
- [Port skills usage analytics](https://docs.port.io/agent-management/skills/skills-usage-analytics/)
