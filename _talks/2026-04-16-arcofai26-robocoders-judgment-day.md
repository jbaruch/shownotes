---
layout: talk
thumbnail_url: /assets/images/thumbnails/2026-04-16-arcofai26-robocoders-judgment-day-thumbnail.png
---

# RoboCoders: Judgment Day — AI Coding Agents Face Off

**Conference:** Arc of AI 2026
**Date:** 2026-04-16
**Co-speaker:** Viktor Gamov
**Slides:** [View Slides](https://drive.google.com/file/d/1ykjblzGZuiORaMtIkv1EMaKX8YdN-swK/preview)

A presentation at Arc of AI 2026 in
                    April 2026 in
                    Austin, TX by
                    {{ site.speaker.display_name | default: site.speaker.name }} and Viktor Gamov

## Abstract

Both agents can write code that runs. Neither can write code that is RIGHT — until you engineer the context they both inherit. And when you delegate, you have to engineer the context PROPAGATION too — because by default, sub-agents get nothing.

Baruch brings Claude Code. Viktor brings GitHub Copilot in VS Code. Same tasks, same hardware (a smart bulb, a camera, two LED light bars), different agents. Five stages, escalating complexity: turn on a bulb, detect a face, recognize WHO, show confidence on a light bar, detect emotion via sub-agents. Both agents succeed at the easy stages. Both fail at Stage 3 — silently. The API returns 200, the code looks correct, but three segments on the light bar don't physically exist. The confidence formula is textbook-correct and demo-wrong. The fill direction is upside down.

The fix: four Tessl plugins encoding device ground truth, calibration data, actuator patterns, and camera setup — installed in one command. Same agent, same prompt, different context, four bugs gone. Then Stage 4: sub-agents lose everything. The concept of "emotion on the second bar" collapses because the IoT sub-agent doesn't know what bar mapping IS. One meta-plugin that teaches the orchestrator explicit skill handoff restores the pipeline.

This isn't a framework comparison. It's a live demonstration that the future of AI-assisted development isn't about which agent is smartest — it's about the engineering discipline around the agent.

## Demo Code

- [robocoders (full repo)](https://github.com/jbaruch/robocoders) — Demo scripts, plugins, enrollment, stage code.

## Tessl Plugins

Context plugins we built for the demo — install them to give your coding agent the same ground truth:

### Device & Calibration
```bash
tessl install jbaruch/govee-h6056                  # Govee H6056 light bar ground truth
tessl install jbaruch/face-recognition-calibration  # Piecewise confidence + enrollment + persistence
```

### Patterns
```bash
tessl install jbaruch/iot-actuator-patterns         # Debounce controller + quantization + progress bar
tessl install jbaruch/vision-pipeline-foundations    # Camera setup + frame-skip policy
```

### Orchestration
```bash
tessl install jbaruch/sub-agent-delegation          # Sub-agent handoff + echo-skills validation
```

| Plugin | Version | Eval Score (baseline → with context) |
|--------|---------|--------------------------------------|
| [jbaruch/govee-h6056](https://tessl.io/registry/jbaruch/govee-h6056) | 0.1.4 | 27% → 100% |
| [jbaruch/face-recognition-calibration](https://tessl.io/registry/jbaruch/face-recognition-calibration) | 0.1.4 | 37% → 100% |
| [jbaruch/iot-actuator-patterns](https://tessl.io/registry/jbaruch/iot-actuator-patterns) | 0.1.1 | 35% → 100% (quantization scenario) |
| [jbaruch/vision-pipeline-foundations](https://tessl.io/registry/jbaruch/vision-pipeline-foundations) | 0.1.2 | 73% → 100% |
| [jbaruch/sub-agent-delegation](https://tessl.io/registry/jbaruch/sub-agent-delegation) | 0.1.5 | 64% → 95% |

## Resources

### Context Engineering

- [Tessl — Agent Enablement Platform](https://tessl.io/) — Package manager for agent skills and context.
- [Tessl Registry](https://tessl.io/registry/) — Browse and install plugins.

### Hardware Used

- [Shelly Duo GU10 RGBW](https://www.shelly.com/products/shelly-duo-gu10-rgbw) — Smart bulb with local REST API.
- [DJI Osmo Pocket 3](https://www.dji.com/osmo-pocket-3) — 1" sensor USB webcam for face detection.
- [Govee Flow Plus Light Bars H6056](https://www.govee.com/products/flow-plus-light-bars) — Segmented LED bars via cloud API.

### Libraries

- [face_recognition](https://github.com/ageitgey/face_recognition) — dlib-based face recognition (128-d embeddings).
- [trpakov/vit-face-expression](https://huggingface.co/trpakov/vit-face-expression) — ViT emotion classifier.
- [Claude Agent SDK](https://github.com/anthropics/claude-agent-sdk) — Sub-agent orchestration.

### Tools

- [presenterm](https://github.com/mfontanini/presenterm) — Terminal-based markdown presentation tool.
- [Claude Code](https://www.anthropic.com/product/claude-code) — Baruch's coding agent.
- [GitHub Copilot](https://github.com/features/copilot) — Viktor's coding agent.

### Conference

- [Arc of AI 2026](https://www.arcofai.com/) — Austin, TX, April 13–16, 2026.

### Speakers

- [Baruch Sadogursky — speaking.jbaru.ch](https://speaking.jbaru.ch/) — All talks, slides, and shownotes.
- [Viktor Gamov — speaking.gamov.io](https://speaking.gamov.io/) — Viktor's speaker profile.
- [@jbaruch on Twitter/X](https://x.com/jbaruch)
- [@gamussa on Twitter/X](https://x.com/gamussa)
