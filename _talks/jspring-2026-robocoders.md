---
layout: talk
---

# RoboCoders: Judgment Day — AI Coding Agents Face Off

**Conference:** J-Spring 2026, Utrecht
**Date:** 2026-06-04
**Slides:** [View Slides](https://drive.google.com/file/d/1-vD_Xs1ZhYizsH45-AP0EBRU1Jrxa9U7/preview)

A presentation at J-Spring 2026 in
                    June 2026 in
                    Utrecht, Netherlands by
                    {{ site.speaker.display_name | default: site.speaker.name }} and Viktor Gamov

## Abstract

Two AI coding agents, same prompts, same hardware, no rehearsal — Baruch on Claude Code (Opus 4.7), Viktor on JetBrains Junie (Gemini Flash 3.5) — race to build a Kotlin/JVM app that watches your face, recognises who you are, shows how confident it is, and reads your emotions, all driving real IoT hardware: a smart bulb, a camera, and two segmented LED light bars. Last year the question was "which agent is smarter?" This year it matters far less than the context you give them. Capability is now trivial and commoditised — what used to need a research team is a one-liner, and both agents happily write Kotlin that RUNS. Neither writes Kotlin that is RIGHT until you engineer the context they inherit: versioned plugins of skills and rules that encode the device truth, the empirical calibrations, and the actuator patterns no code reviewer would ever catch (four silent semantic failures, every HTTP call returning 200 OK). And the moment the coding agent delegates the build to sub-agents, context doesn't inherit — every delegation is a regression until a meta-plugin engineers the hand-off explicitly. The headline for a JVM crowd: "AI engineering" isn't a tool choice, it's the discipline around the agent — the language defaults, the device facts, the calibration constants, the actuator patterns, the sub-agent hand-off, and the eval that measures whether any of it actually works (govee-h6056: 26% → 100%, a 3.84× lift). The variable was never the agent. It's the context.

## Resources

### Demo Code

- [Baruch's demo — robocoders-jspring](https://github.com/jbaruch/robocoders-jspring) — Claude Code build, Kotlin/JVM.
- [Viktor's demo — robocoders-jspring](https://github.com/gamussa/robocoders-jspring) — Junie build, Kotlin/JVM.

### Context Engineering

- [Tessl — Agent Enablement Platform](https://tessl.io/) — Package manager and registry for agent skills, rules, and context.
- [Tessl Registry](https://tessl.io/registry/) — Browse and install plugins.
- [Closing eval run (govee-h6056)](https://tessl.io/eval-runs/019e477c-22c7-75cc-a571-b342dcb578d3) — The `26% → 100%` (3.84× lift) measurement behind the Monday-morning "write an eval" ask: baseline (no context) vs with-context, scored by an LLM judge.

### Tessl Plugins Demonstrated

- [`jbaruch/kotlin-tutor`](https://tessl.io/registry/jbaruch/kotlin-tutor) — Stage 0. `alwaysApply` rules: Kotlin idioms + stack defaults (Kotlin 2.x + JDK 21 + Gradle KTS, Ktor, coroutines, DJL, JavaCV). Flips the agent from Python to Kotlin on the same prompt.
- [`jbaruch/govee-h6056`](https://tessl.io/registry/jbaruch/govee-h6056) — Stage 3. Segment topology (12 physical, not 15), bar mapping, phantom-segment caveat, rate-limit + retry-backoff, color-space.
- [`jbaruch/face-recognition-calibration-djl`](https://tessl.io/registry/jbaruch/face-recognition-calibration-djl) — Stage 3. Piecewise FaceNet cosine-distance bands measured empirically on the DJL pipeline (so a strong match doesn't read as 40%).
- [`jbaruch/iot-actuator-patterns-kotlin`](https://tessl.io/registry/jbaruch/iot-actuator-patterns-kotlin) — Stage 3. `Flow.debounce` + quantization + bottom-up progress-bar ordering for Kotlin coroutines (kills the Stage-1 flicker).
- [`jbaruch/vision-pipeline-foundations-kotlin`](https://tessl.io/registry/jbaruch/vision-pipeline-foundations-kotlin) — Stage 1-2. JavaCV camera setup + frame-skip via `Flow.sample()`.
- [`jbaruch/shelly-duo-gu10`](https://tessl.io/registry/jbaruch/shelly-duo-gu10) — mDNS discovery name, REST endpoints, color model for the smart bulb.
- [`jbaruch/sub-agent-delegation`](https://tessl.io/registry/jbaruch/sub-agent-delegation) — Stage 4 meta-plugin. Teaches the orchestrator that sub-agents start fresh and inherit nothing: explicit hand-off + echo-skills validation + single-writer-per-actuator.

### Sub-Agents — How Delegation Drops Context (Stage 4)

The "agentic" stage is about the **coding agents** (Claude Code, Junie) spawning sub-agents to **write the code** — not about embedding AI in the generated app (the RoboCoders app is pure Kotlin/DJL/JavaCV with zero runtime AI). Sub-agents start with fresh context and inherit none of the parent's plugins, so every delegation regresses until the hand-off is engineered.

- [Claude Agent SDK — Subagents](https://code.claude.com/docs/en/agent-sdk/subagents) — The source for "the only channel from parent to subagent is the Agent tool's prompt string" — the bug-by-design the meta-plugin works around.
- [Junie — Custom subagents](https://junie.jetbrains.com/docs/junie-cli-subagents.html) — JetBrains Junie's subagents: Markdown + YAML in `.junie/agents/`, with per-subagent tool restrictions, models, and agent skills.
- [Junie — Agent skills](https://junie.jetbrains.com/docs/agent-skills.html) — How Junie loads skills (the Junie-side equivalent of the plugins demonstrated here).
- [Junie — Guidelines & memory](https://junie.jetbrains.com/docs/guidelines-and-memory.html) — `AGENTS.md` / `.junie/AGENTS.md` always-on guidelines.

### Kotlin / JVM Stack

- [DJL — Deep Java Library](https://djl.ai/) — RetinaFace detect, FaceNet/ArcFace embeddings, ViT/FER+ emotion — all on the JVM (PyTorch engine).
- [JavaCV](https://github.com/bytedeco/javacv) — OpenCV bindings for Kotlin/JVM: camera capture + Haar cascade.
- [Ktor](https://ktor.io/) — HTTP client (CIO engine) for the Shelly/Govee REST + embedded server for the MJPEG preview.
- [kotlinx-coroutines](https://github.com/Kotlin/kotlinx.coroutines) — `Flow`, structured concurrency, `Dispatchers.IO` for the IoT controllers.
- [Gradle (Kotlin DSL)](https://gradle.org/) — Single multi-module build (`live/`, `ready/`).
- [Koog — JetBrains' Kotlin AI agent framework](https://github.com/JetBrains/koog) — JVM-native, multiplatform agent orchestration with MCP integration (for taking sub-agent orchestration into the app itself).

### Hardware — Specs & Device APIs

- [Shelly Duo GU10 RGBW](https://www.shelly.com/products/shelly-duo-gu10-rgbw) — Smart bulb, local REST API (~30 ms LAN latency). · [Shelly Gen1 HTTP API docs](https://shelly-api-docs.shelly.cloud/gen1/) — the `/light/0` / `/color/0` color + gain endpoints.
- [DJI Osmo Pocket 3](https://www.dji.com/osmo-pocket-3) — 1" sensor, 1080p/60 USB-C webcam mode, used as the face-detection camera.
- [Govee Flow Plus Light Bars H6056](https://www.govee.com/products/flow-plus-light-bars) — Segmented LED bars via cloud API (the ~10 req/s sustained cap and HSV-with-gamma color quirk are the Stage-3 traps). · [Govee Developer API](https://developer.govee.com/) — `Govee-API-Key` header; `turn` / `brightness` / `color` device commands.

### Models

- [DJL face_feature](https://resources.djl.ai/test-models/pytorch/face_feature.zip) — ArcFace-derived 512-d face embeddings, PyTorch engine.
- [ONNX Model Zoo — emotion-ferplus](https://github.com/onnx/models/tree/main/validated/vision/body_analysis/emotion_ferplus) — 8-class FER+ emotion classifier (64×64 grayscale, ~30 MB).

### Coding Agents

- [Claude Code](https://www.anthropic.com/product/claude-code) — Baruch's agent, running on **Opus 4.7**.
- [Junie](https://www.jetbrains.com/junie/) — Viktor's agent, JetBrains-native, running **Gemini Flash 3.5**.

### Conference

- [J-Spring 2026](https://jspring.nl/) — The International Java Conference by NLJUG. Utrecht, Netherlands, 4 June 2026.

### Speakers

- [Baruch Sadogursky — speaking.jbaru.ch](https://speaking.jbaru.ch/) — All talks, slides, and shownotes.
- [Viktor Gamov — speaking.gamov.io](https://speaking.gamov.io/) — Viktor's speaker profile.
- [@jbaruch on X](https://x.com/jbaruch)
- [@gamussa on X](https://x.com/gamussa)

### Related Talks

- [RoboCoders: Judgment Day @ KotlinConf 2026](/talks/2026-05-22-kotlinconf-26-robocoders-judgment-day/) — The original 45-minute Kotlin cut. Same hardware, same dual-agent setup, same five-stage escalation.
- [RoboCoders: Judgment Day @ JNation 2026](/talks/2026-05-26-jnation-2026-robocoders-judgment-day/) — The 180-minute extended cut: three new Stage-3 failure modes, three new Stage-4 delegation failure modes, and a live `tessl eval run` Stage 5.
- [RoboCoders: Judgment Day @ Arc of AI 2026](/talks/2026-04-16-arcofai26-robocoders-judgment-day/) — The Python original. Same thesis, different stack: dlib + transformers + Claude Agent SDK orchestrator instead of DJL + JavaCV.
