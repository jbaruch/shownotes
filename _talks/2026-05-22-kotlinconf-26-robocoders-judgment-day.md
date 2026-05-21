---
layout: talk
thumbnail_url: /assets/images/thumbnails/2026-05-22-kotlinconf-26-robocoders-judgment-day-thumbnail.png
---

<!-- TODO: confirm exact KotlinConf 2026 talk date + slide/video URLs + generate thumbnail PNG before publish -->
# RoboCoders: Judgment Day — AI Coding Agents Face Off (Kotlin Edition)

**Conference:** KotlinConf 2026
**Date:** 2026-05-22
**Co-speaker:** Viktor Gamov
**Slides:** [View Slides](#) <!-- TODO -->

A presentation at KotlinConf 2026 in
                    May 2026 in
                    Copenhagen, Denmark by
                    {{ site.speaker.display_name | default: site.speaker.name }} and Viktor Gamov

## Abstract

Both agents can write Kotlin that runs. Neither can write Kotlin that is RIGHT — until you engineer the context they both inherit. Baruch brings Claude Code on Opus 4.7. Viktor brings JetBrains' **Junie** running Gemini Flash 3.5. Same prompts, same hardware (a smart bulb, a camera, two LED light bars), different agents. The demo opens with the most damning beat: in a Kotlin Gradle project, "write a program that turns on my smart bulb" produces **Python** — until one `tessl install jbaruch/kotlin-tutor` flips the language, the HTTP library, and the build tooling without a word of the prompt changing. Stage 3 lands the first real aha: a confidence semaphore on Govee H6056 light bars where the cloud API returns `200 OK` on commands targeting segments that physically don't exist, the textbook confidence formula compresses strong matches into the middle band, and the fill direction is upside-down — four bugs, zero exceptions, all silent. Four Tessl plugins (device truth, calibration, actuator patterns, vision foundations) fix every one of them in a single install beat. Stage 4 lands the second aha: decompose into sub-agents using **Koog** (JetBrains' Kotlin-native agent framework) and every plugin gain disappears, because Koog sub-agents start with fresh context. The `sub-agent-delegation` meta-plugin teaches the orchestrator the explicit-handoff pattern (system-prompt skill injection + echo validation) and the pipeline snaps back to correctness. The headline measurement is **`27% → 100%`** on the `jbaruch/govee-h6056` plugin's Tessl eval — measurable, reproducible, on the public registry. This isn't a framework comparison. It's a live demonstration that for Kotlin developers in 2026, "AI engineering" means engineering the discipline around your agent: the language defaults, the device facts, the calibration constants, the actuator patterns, and the sub-agent handoff.

## Demo Code

- [robocoders-kagematch (full repo)](https://github.com/jbaruch/robocoders-kagematch) — Kotlin runtime (Stage 1–4), Koog sub-agent orchestrator, all docs, pre-flight checklist.

## Tessl Plugins

Context plugins we built for the demo. Install them and your coding agent inherits the same ground truth our stage agents had. The Stage 0 install (`kotlin-tutor`) changes the LANGUAGE; the Stage 3/4 installs fix the device + calibration + sub-agent behaviour.

### Language + stack defaults (Stage 0)
```bash
tessl install jbaruch/kotlin-tutor                  # Kotlin 2.3 + JDK 21 + Gradle KTS + Ktor + coroutines + DJL + JavaCV + Koog
```

### Device & calibration (Stage 3)
```bash
tessl install jbaruch/govee-h6056                          # Govee H6056 ground truth (phantom segments, bar mapping)
tessl install jbaruch/shelly-duo-gu10                      # Shelly Duo GU10 LAN REST + mDNS bind gotcha
tessl install jbaruch/face-recognition-calibration-djl     # FaceNet cosine distance bands + piecewise confidence
```

### Patterns (Stage 3)
```bash
tessl install jbaruch/iot-actuator-patterns-kotlin         # Debounce controller + quantization + progress bar (Kotlin coroutines)
tessl install jbaruch/vision-pipeline-foundations-kotlin   # JavaCV camera probe + frame-skip policy + 4x downscale
```

### Orchestration (Stage 4)
```bash
tessl install jbaruch/sub-agent-delegation                 # Sub-agent handoff + echo-skills validation
```

| Plugin | Version | Eval Score (baseline → with context) |
|--------|---------|--------------------------------------|
| [jbaruch/kotlin-tutor](https://tessl.io/registry/jbaruch/kotlin-tutor) | 0.5.0 | Idiom: 71–76% → 94–100% across scenarios |
| [jbaruch/govee-h6056](https://tessl.io/registry/jbaruch/govee-h6056) | 0.1.5 | **27% → 100%** (headline number) |
| [jbaruch/face-recognition-calibration-djl](https://tessl.io/registry/jbaruch/face-recognition-calibration-djl) | 0.1.1 | 46% → 100% |
| [jbaruch/iot-actuator-patterns-kotlin](https://tessl.io/registry/jbaruch/iot-actuator-patterns-kotlin) | 0.1.1 | 50% → 100% |
| [jbaruch/vision-pipeline-foundations-kotlin](https://tessl.io/registry/jbaruch/vision-pipeline-foundations-kotlin) | 0.1.1 | 53% → 100% |
| [jbaruch/shelly-duo-gu10](https://tessl.io/registry/jbaruch/shelly-duo-gu10) | 0.1.1 | 79% → 100% |
| [jbaruch/sub-agent-delegation](https://tessl.io/registry/jbaruch/sub-agent-delegation) | 0.1.5 | 64% → 95% |

## Resources

### Context Engineering

- [Tessl — Agent Enablement Platform](https://tessl.io/) — Package manager for agent skills and context.
- [Tessl Registry](https://tessl.io/registry/) — Browse and install plugins.
- [Closing eval run (govee-h6056)](https://tessl.io/eval-runs/019e477c-22c7-75cc-a571-b342dcb578d3) — The 27% → 100% measurement.

### Kotlin / JVM Stack

- [Koog — JetBrains' Kotlin AI agent framework](https://github.com/JetBrains/koog) — Stage 4 sub-agent orchestrator. JVM, multiplatform, MCP integration.
- [DJL — Deep Java Library](https://djl.ai/) — Face_feature (ArcFace) embeddings + ONNX FER+ emotion classifier, all on JVM.
- [JavaCV](https://github.com/bytedeco/javacv) — OpenCV bindings for Kotlin/JVM. Camera capture + Haar cascade.
- [Ktor](https://ktor.io/) — HTTP client (CIO engine) + embedded server for the MJPEG preview.
- [kotlinx-coroutines](https://github.com/Kotlin/kotlinx.coroutines) — `Flow`, structured concurrency, `Dispatchers.IO` for the IoT controllers.

### Hardware Used

- [Shelly Duo GU10 RGBW](https://www.shelly.com/products/shelly-duo-gu10-rgbw) — Smart bulb with local REST API (~30 ms LAN latency).
- [DJI Osmo Pocket 3](https://www.dji.com/osmo-pocket-3) — 1" sensor USB webcam for face detection.
- [Govee Flow Plus Light Bars H6056](https://www.govee.com/products/flow-plus-light-bars) — Segmented LED bars via cloud API (~7 req/min sustained).

### Models

- [DJL face_feature](https://resources.djl.ai/test-models/pytorch/face_feature.zip) — ArcFace-derived 512-d face embeddings, PyTorch engine.
- [ONNX Model Zoo — emotion-ferplus-8](https://github.com/onnx/models/tree/main/validated/vision/body_analysis/emotion_ferplus) — 8-class FER+ emotion classifier (64×64 grayscale, ~30 MB).

### Coding Agents

- [Claude Code](https://www.anthropic.com/product/claude-code) — Baruch's agent, running on **Opus 4.7**.
- [Junie](https://www.jetbrains.com/junie/) — Viktor's agent, JetBrains-native, running **Gemini Flash 3.5**.

### Conference

- [KotlinConf 2026](https://kotlinconf.com/) — Copenhagen, Denmark, May 2026.

### Speakers

- [Baruch Sadogursky — speaking.jbaru.ch](https://speaking.jbaru.ch/) — All talks, slides, and shownotes.
- [Viktor Gamov — speaking.gamov.io](https://speaking.gamov.io/) — Viktor's speaker profile.
- [@jbaruch on Twitter/X](https://x.com/jbaruch)
- [@gamussa on Twitter/X](https://x.com/gamussa)

### Related Talks

- [RoboCoders: Judgment Day @ Arc of AI 2026](/2026-04-16-arcofai26-robocoders-judgment-day.html) — The Python original. Same thesis, different stack: dlib + transformers + Claude Agent SDK orchestrator instead of DJL + JavaCV + Koog. KotlinConf edition rewrites every layer for the JVM audience.
