---
layout: talk
---

# The Software Factory of Factories

**Conference:** AI DevCon NYC 2026
**Date:** 2026-11-04
**Slides:** [View Slides](https://drive.google.com/file/d/1rKR028s_0XAZvmK2LJK5cL3pk795Obh7/preview)
**Video:** [View Video](https://youtu.be/rGT3sxA7TwM)

A presentation at AI DevCon NYC 2026 in
                    November 2026 in
                    Brooklyn, NY, USA by
                    {{ site.speaker.display_name | default: site.speaker.name }}

## Abstract

Guy just showed you a working software factory. Now Bill, our fictional VP of Engineering, wants one for every team, and Brent, the checkout service owner, gets release sign-off "within existing responsibilities." The pull requests arrive faster than anyone can read them, and it isn't only Brent: Security, SRE, Finance, Product and Compliance each own a decision, and each is under pressure to sign faster. Over four fictional (and painfully familiar) meetings, the Enterprise Autonomous Delivery Enablement Steering Committee learns to ask what each approval actually means, and then to engineer the signal that supplies the evidence for it. Brent's evidence lives in the repository. Everyone else's lives in the incident tracker, the agent logs, billing, the CRM and the audit trail, so the real work is a shared context lake the whole company can build signals on, with governed workflows that cost practically nothing to assemble on top of it. And Compliance turns out to be the happy ending: the decision process they engineered is exactly the oversight Ruth needed to demonstrate. Leave with one approval from your own organization and the sentence "When I hit Approve, I am saying that…"

## Resources

The research and documentation behind the claims in the talk, grouped the way the talk runs.

### The factory this talk continues

- [Guy Podjarny's AI DevCon NYC 2026 keynote](https://www.youtube.com/live/kPB9y6ZWXxk): the working software factory this talk picks up from
- [Tessl: Build your first factory](https://docs.tessl.io/introduction-to-tessl/build-your-first-factory)
- [Tessl: Context-driven factories](https://tessl.io/blog/context-driven-factories)

### What an approval means

- [DORA: Streamlining change approval](https://dora.dev/capabilities/streamlining-change-approval/): heavyweight external approval slows delivery and isn't associated with fewer failed changes; peer review plus automation meets segregation of duties
- [Google: The Standard of Code Review](https://google.github.io/eng-practices/review/reviewer/standard.html): an approval meaning written down in one sentence
- [Modern Code Review: A Case Study at Google](https://research.google/pubs/modern-code-review-a-case-study-at-google/)
- [Buçinca, Malaya, Gajos: To Trust or to Think (CSCW 2021)](https://arxiv.org/abs/2102.09692): why people rubber-stamp AI-assisted decisions, and what reduces it

### Engineering the signals

- [Google SRE Workbook: Example error budget policy](https://sre.google/workbook/error-budget-policy/): a release decided by a signal, not a meeting
- [SLSA: Security levels](https://slsa.dev/spec/v1.1/levels): provenance as security evidence
- [OpenSSF Scorecard](https://scorecard.dev/): automated security signals for dependencies
- [Open Policy Agent](https://www.openpolicyagent.org/docs/latest/): evaluating a condition instead of collecting a signature
- [OpenTelemetry: Semantic conventions for GenAI metrics](https://opentelemetry.io/docs/specs/semconv/gen-ai/gen-ai-metrics/): standard token-usage telemetry from agent runs (still marked "Development")
- [FinOps Foundation: FinOps for AI](https://www.finops.org/wg/finops-for-ai-overview/): allocating and forecasting AI spend

### Shared context and governed workflows

- [Port: Context lake overview](https://docs.port.io/context-lake/overview/)
- [Port: Business context](https://docs.port.io/context-lake/business-context/overview/)
- [Port: Workflows overview](https://docs.port.io/workflows/overview/)
- [Port: Build workflows with MCP](https://docs.port.io/guides/all/build-port-workflows-with-mcp/)
- [Port: Governance overview](https://docs.port.io/governance/overview/)
- [Port AgentOps: Access and accountability](https://docs.port.io/solutions/agentops/governance-enforcement/access-and-accountability/): owners, access and activity records for agents, skills and MCP servers
- [Port: Track AI coding assistant costs](https://docs.port.io/guides/all/track-ai-coding-assistants-costs/)
- [Port AgentOps: ROI measurement](https://docs.port.io/solutions/agentops/continuous-optimization/roi-measurement/)

### Oversight and regulation

These apply to high-risk AI systems and regulated financial entities; a coding factory is usually neither, but they show what "demonstrable oversight" asks for.

- [EU AI Act, Article 12: Record-keeping](https://ai-act-service-desk.ec.europa.eu/en/ai-act/article-12)
- [EU AI Act, Article 14: Human oversight](https://ai-act-service-desk.ec.europa.eu/en/ai-act/article-14): oversight commensurate with risk, by people who can understand, interpret and stop the system
- [EU AI Act, Article 26: Obligations of deployers](https://ai-act-service-desk.ec.europa.eu/en/ai-act/article-26)
- [DORA (EU) 2022/2554: Digital Operational Resilience Act](https://eur-lex.europa.eu/eli/reg/2022/2554/oj)
- [NIST AI Risk Management Framework](https://www.nist.gov/itl/ai-risk-management-framework)

### Things to do tomorrow

- [PortCon](https://portcon.port.io/): 30% off with code `DevRel_Guest30%`
- [Port pricing and free tier](https://www.port.io/pricing): pick one decision and build one workflow
