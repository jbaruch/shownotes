---
layout: talk
---

# Skill Issue: How to Write Skills That Actually Work

**Conference:** QCon San Francisco 2026
**Date:** 2026-11-19
**Slides:** [View slides (PDF)](https://drive.google.com/file/d/1QgSCjrbTA802pr36UOdTz2VE1zeTlUGl/preview)

A presentation at QCon San Francisco in November 2026 in San Francisco, USA by
{{ site.speaker.display_name | default: site.speaker.name }}

## Abstract

A Brickbox customer thinks they paid twice. In this workshop, you build a skill that helps an agent look up the order, separate the payment from the pending hold, and write a note for Billing. You'll see why a broad description sends a product question to the wrong skill, when to use a script or a decision model, and how a hook stops a tool call. Then you'll package the files, see the same rule used in a GitHub review, and compare agent behavior with and without the published package. After each change, you'll ask your agent why it acted differently and check the file, command, or result it points to.

## Resources

### Run the workshop

- [Starter repository and setup](https://github.com/jbaruch/skill-issue-order-handoff)
- [Attendee workbook](https://github.com/jbaruch/skill-issue-order-handoff/blob/main/WORKBOOK.md)
- [Working copies](https://github.com/jbaruch/skill-issue-order-handoff/tree/main/answers)
- [Recorded runs](https://github.com/jbaruch/skill-issue-order-handoff/tree/main/evidence)
- [Jev and reasoning comparison](https://github.com/jbaruch/skill-issue-order-handoff/blob/main/evidence/README.md#jev)
- [Scored eval example](https://github.com/jbaruch/skill-issue-order-handoff/blob/main/evidence/eval-scores.md)
- [Published ACR package v1.0.0](https://github.com/jbaruch/skill-issue-order-handoff/releases/tag/v1.0.0)
- [Copilot review that names the Captured Only rule](https://github.com/jbaruch/skill-issue-order-handoff/pull/1#pullrequestreview-5979515807)

### Tools and references

- [Baruch's Agentic Context Registry (ACR)](https://github.com/jbaruch/agentic-context-registry)
- [ACR package manifest](https://github.com/jbaruch/agentic-context-registry/blob/v0.6.0/docs/package-manifest.md)
- [Jev](https://docs.typesafe.ai/primitives/choice)
- [Gemini Decisions](https://blog.google/innovation-and-ai/technology/developers-tools/gemini-decisions-api/)
- [OpenAI Decisions](https://developers.openai.com/api/docs/guides/decisions)
- [Microsoft Decision](https://commandline.microsoft.com/microsoft-decision-model-ga/)
- [Automatic approval review](https://developers.openai.com/api/docs/guides/agents-api/sessions/approvals)
- [coding-policy](https://github.com/jbaruch/coding-policy)
- [Port Skills](https://docs.port.io/agent-management/skills/overview/)
- [Port skills usage analytics](https://docs.port.io/agent-management/skills/skills-usage-analytics/)
