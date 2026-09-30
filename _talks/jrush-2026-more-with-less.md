---
layout: talk
---

# More With Less: A Lean Software Factory Made of Rival Coding Agents

**Conference:** JRush Episode 8 — Java in the Age of AI
**Date:** 2026-09-29
**Slides:** [View Slides](https://drive.google.com/file/d/1T4T7g4ATpPE4PTKq5QfQRE-GqbZuTkoH/preview)
**Video:** [Watch the presentation](https://www.youtube.com/watch?v=b04uRmPY7no)

A presentation at JRush Episode 8 — Java in the Age of AI, streamed online in
September 2026, by {{ site.speaker.display_name | default: site.speaker.name }}.

## Abstract

Coding agents can produce more code than one person can responsibly supervise, so the useful output is not generated code or a green test count. It is work that has earned acceptance. Starting with a change that passed 4,486 tests and still contained two defects, this talk builds a three-part control system around one versioned coding policy: the authoring agent uses it while working, a bounded classifier checks consequential actions when they happen, and an independent CI reviewer judges the finished change and its evidence. From there, skills, scripts, and classifiers get separate jobs; Herdr gives rival agents bounded roles; and “done” becomes a policy decision before token burn, context bloat, and inherited metadata turn improvement into its own failure mode.

## Resources

- [JRush Episode 8 — Java in the Age of AI](https://jrush.bell-sw.com/episode8) — The event page for the online presentation.
- [coding-policy](https://github.com/jbaruch/coding-policy) — The versioned engineering policy used throughout the talk.
- [Script Delegation](https://github.com/jbaruch/coding-policy/blob/main/rules/script-delegation.md) — The coding-policy rule that sends deterministic work to scripts, fixed-answer semantic questions to bounded classifiers, and open-ended reasoning to skills and LLMs.
- [coding-policy issue #632](https://github.com/jbaruch/coding-policy/issues/632) — The diminishing-returns escape hatch: nominate marginal findings to a judge, who rules `fix`, `defer`, or `decline` instead of letting the loop run forever.
- [Herdr](https://github.com/herdrdev/herdr) — The coordination layer for bounded developer, tester, reviewer, and foreman roles.
- [Introducing System One Models and Jev](https://typesafe.ai/blog/introducing-system-one-models-and-jev) — TypeSafe AI's introduction to the classifier used in the policy example.
