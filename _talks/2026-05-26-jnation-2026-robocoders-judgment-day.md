---
layout: talk
---

# RoboCoders: Judgment Day — AI Coding Agents Face Off (JNation Extended Cut)

**Conference:** JNation 2026
**Date:** 2026-05-26
**Slides:** [View Slides](https://drive.google.com/file/d/1Egbfosfz_Ki7jVjlDCnne88Gq2tXeYIh/preview)

A presentation at JNation 2026 in
                    May 2026 in
                    Coimbra, Portugal by
                    {{ site.speaker.display_name | default: site.speaker.name }} and Viktor Gamov

## Abstract

Three hours, six stages, three AHA moments. The 180-minute extended cut of the talk that ran 45 minutes at KotlinConf 2026 four days ago — same dual-agent showdown (Claude Code on Opus 4.7 vs JetBrains' **Junie** on Gemini Flash 3.5), same Kotlin/JVM stack, same hardware (smart bulb, camera, two LED light bars), but with the runway to actually teach what's happening underneath. **Stage 0** lands the opening salvo: in a Kotlin Gradle project, "write a program that turns on my smart bulb" produces **Python** — and when you ask for Java instead, you get Java that calls Python via `ProcessBuilder`. One `tessl install jbaruch/kotlin-tutor` flips the language, the HTTP library, and the build tooling without a word of the prompt changing. **Stages 1-2** show face detection and identity recognition working *almost* — with a live audience-member enrollment beat, occlusion stress tests, and the calibration boundary visible to the room. **Stage 3** is the first AHA: a confidence semaphore on Govee H6056 light bars where the cloud API returns `200 OK` on commands targeting phantom segments, the textbook confidence formula compresses strong matches into the middle band, the fill direction is upside-down, and three more language-agnostic misses (rate-limit ignorance, color-space mismatch, retry-storm-amplifies-rate-limit) pile on — **seven** silent failures, all simultaneously, all without a single exception. Four Tessl plugins fix every one of them in a single install beat, with an extended walkthrough of *what's actually inside* each plugin. **Stage 4** is the second AHA: decompose into sub-agents and every Stage-3 gain disappears — six distinct delegation failure modes (fresh context, plus three new for the extended cut: context-window pollution, echo-skill spoof, interleaved tool-call corruption). The `sub-agent-delegation` meta-plugin restores correctness with explicit-handoff plus echo-validate-plus-sentinel-probe plus single-writer-per-actuator serialization. **Stage 5** — new for the extended cut — is the receipt: a live `tessl eval run` on `jbaruch/govee-h6056` showing **`27% → 100%`** with-context lift, on-screen, no extra hardware. The deep dive walks one positive scenario, one negative scenario, and one near-zero-lift scenario the speakers call out honestly as not pulling its weight. Headline thesis for the JVM audience: "AI engineering" isn't a tool choice. It's the discipline around the agent — the language defaults, the device facts, the calibration constants, the actuator patterns, the sub-agent handoff, and the eval suite that measures whether any of it is actually working.

## Resources

### Demo Code

- [Baruch's demo - ready version](https://github.com/jbaruch/robocoders-kagematch)
- [Viktor's demo - ready version](https://github.com/gAmUssA/robocoders-kagematch-2026)

### Context Engineering

- [Tessl — Agent Enablement Platform](https://tessl.io/) — Package manager for agent skills and context.
- [Tessl Registry](https://tessl.io/registry/) — Browse and install plugins.
- [Closing eval run (govee-h6056)](https://tessl.io/eval-runs/019e477c-22c7-75cc-a571-b342dcb578d3) — The `27% → 100%` measurement, run live in Stage 5.

### Tessl Plugins Demonstrated

- [`jbaruch/kotlin-tutor`](https://tessl.io/registry/jbaruch/kotlin-tutor) — Stage 0. 12 `alwaysApply` rules: 6 idiom + 6 stack-default (Kotlin 2.3 + JDK 21 + Gradle KTS, Ktor, coroutines, DJL, JavaCV, Koog).
- [`jbaruch/govee-h6056`](https://tessl.io/registry/jbaruch/govee-h6056) — Stage 3. Segment topology, bar mapping, rate-limit, color-space, retry-backoff.
- [`jbaruch/face-recognition-calibration-djl`](https://tessl.io/registry/jbaruch/face-recognition-calibration-djl) — Stage 3. Piecewise FaceNet cosine-distance bands measured on the DJL pipeline.
- [`jbaruch/iot-actuator-patterns-kotlin`](https://tessl.io/registry/jbaruch/iot-actuator-patterns-kotlin) — Stage 3. `Flow.debounce` + quantization + bottom-up progress-bar ordering for Kotlin coroutines.
- [`jbaruch/vision-pipeline-foundations-kotlin`](https://tessl.io/registry/jbaruch/vision-pipeline-foundations-kotlin) — Stage 3. JavaCV camera setup + frame-skip via `Flow.sample()`.
- [`jbaruch/shelly-duo-gu10`](https://tessl.io/registry/jbaruch/shelly-duo-gu10) — mDNS discovery, REST endpoints, color model.
- [`jbaruch/sub-agent-delegation`](https://tessl.io/registry/jbaruch/sub-agent-delegation) — Stage 4 meta-plugin. Explicit-handoff + echo validation + sentinel probe + single-writer-per-actuator.

### Kotlin / JVM Stack

- [Koog — JetBrains' Kotlin AI agent framework](https://github.com/JetBrains/koog) — Stage 4 sub-agent orchestrator. JVM, multiplatform, MCP integration.
- [DJL — Deep Java Library](https://djl.ai/) — Face_feature (ArcFace) embeddings + ONNX FER+ emotion classifier, all on JVM.
- [JavaCV](https://github.com/bytedeco/javacv) — OpenCV bindings for Kotlin/JVM. Camera capture + Haar cascade.
- [Ktor](https://ktor.io/) — HTTP client (CIO engine) + embedded server for the MJPEG preview.
- [kotlinx-coroutines](https://github.com/Kotlin/kotlinx.coroutines) — `Flow`, structured concurrency, `Dispatchers.IO` for the IoT controllers.

### Hardware Used

- [Shelly Duo GU10 RGBW](https://www.shelly.com/products/shelly-duo-gu10-rgbw) — Smart bulb with local REST API (~30 ms LAN latency).
- [DJI Osmo Pocket 3](https://www.dji.com/osmo-pocket-3) — 1" sensor USB webcam for face detection.
- [Govee Flow Plus Light Bars H6056](https://www.govee.com/products/flow-plus-light-bars) — Segmented LED bars via cloud API. The extended cut surfaces the ~10 req/s sustained cap (silently enforced — no `429`) and the HSV-with-gamma rendering quirk that makes pure-RGB yellow look green.

### Models

- [DJL face_feature](https://resources.djl.ai/test-models/pytorch/face_feature.zip) — ArcFace-derived 512-d face embeddings, PyTorch engine.
- [ONNX Model Zoo — emotion-ferplus-8](https://github.com/onnx/models/tree/main/validated/vision/body_analysis/emotion_ferplus) — 8-class FER+ emotion classifier (64×64 grayscale, ~30 MB).

### Coding Agents

- [Claude Code](https://www.anthropic.com/product/claude-code) — Baruch's agent, running on **Opus 4.7**.
- [Junie](https://www.jetbrains.com/junie/) — Viktor's agent, JetBrains-native, running **Gemini Flash 3.5**.
- [Claude Agent SDK — Sub-agents documentation](https://code.claude.com/docs/en/agent-sdk/subagents) — The source for Stage 4's "the only channel from parent to subagent is the Agent tool's prompt string" — the bug-by-design that the `sub-agent-delegation` meta-plugin works around.

### Conference

- [JNation 2026](https://jnation.tech/) — Coimbra, Portugal, May 2026.

### Speakers

- [Baruch Sadogursky — speaking.jbaru.ch](https://speaking.jbaru.ch/) — All talks, slides, and shownotes.
- [Viktor Gamov — speaking.gamov.io](https://speaking.gamov.io/) — Viktor's speaker profile.
- [@jbaruch on Twitter/X](https://x.com/jbaruch)
- [@gamussa on Twitter/X](https://x.com/gamussa)

### Related Talks

- [RoboCoders: Judgment Day @ KotlinConf 2026](/talks/2026-05-22-kotlinconf-26-robocoders-judgment-day/) — The 45-minute cut, four days earlier in Copenhagen. Same hardware, same dual-agent setup, same first two AHAs. The JNation extended cut adds three new Stage-3 failure modes (rate-limit, color-space, retry-storm), three new Stage-4 delegation failure modes (pollution, spoof, interleaving), and an entire new Stage 5 on live `tessl eval run` lift measurement.
- [RoboCoders: Judgment Day @ Arc of AI 2026](/talks/2026-04-16-arcofai26-robocoders-judgment-day/) — The Python original. Same thesis, different stack: dlib + transformers + Claude Agent SDK orchestrator instead of DJL + JavaCV + Koog.
