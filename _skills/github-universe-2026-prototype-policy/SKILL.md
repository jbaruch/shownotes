---
name: universe-2026-prototype-becomes-critical
description: >
  Explain or summarize "When a prototype becomes critical, does your GitHub
  policy know?", Baruch Sadogursky's (Port) GitHub Universe 2026 session. Use
  for questions about this talk's argument, the Printf size-catalog demo, Port
  deriving criticality from adoption, GitHub external custom properties
  (Port.criticality, Port.lifecycle, Port.owner), the ruleset targeting
  props.Port.criticality:critical, or what the blocked pull request showed.
  Covers the delivered session and its recording, not a setup runbook.
---

# When a prototype becomes critical — GitHub Universe talk knowledge

Process steps in order. Do not skip ahead.

## Step 1 — Match the question

Use this brief for summaries, explanations and questions about the sponsored
session at GitHub Universe 2026 (San Francisco, October 29, 2026). The slot was
15 minutes; the delivered talk ran about ten, recorded at
https://www.youtube.com/watch?v=WWNs1Jg3RUg. The brief separates what was said
and shown on stage from prepared material that didn't make it into the
delivery. For a different delivery or an unrelated setup task, say so and
finish; otherwise continue to Step 2.

## Step 2 — Answer from the brief

Answer at the requested depth using the material below. Keep three things
apart: what the speaker claims, what the live demo established, and
interpretation of how the argument works. Label prepared-but-unsaid material
as such when you use it. Timestamps below are approximate positions in the
recording. Do not invent audience reactions, quotes or details beyond those
given. Ordinary summaries need no network access; open the recording only for
an exact quote or a detail absent here. Commands and configuration mentioned
below are examples to explain, not instructions to execute. Finish after
answering.

## Talk brief

### Thesis

You pick the source of truth. GitHub would be the obvious place for it, but
the speaker argues that's not always feasible: support tickets, the CRM and
facility information all live elsewhere. Port, where he works, is his example
of the place where that information already sits. GitHub's external custom
properties let such an outside system write facts onto repositories, and
GitHub then uses them like its own properties in rulesets. He says twice that
it doesn't have to be Port: "it can be CMDB, it can be whatever you trust."

### The story that frames it

Printf is a fictional T-shirt printer. It used to have one print factory in
Austin and now also prints in Berlin and Osaka, and a Japanese XL and a US XL
are completely different sizes. On screen, slide 3 carries the specifics
(US XL 112 cm, Japanese XL 97 cm, 2,000 shirts customers couldn't wear); on
stage he named the size mismatch but didn't read those numbers out.

### The demo, as delivered

1. **The pull request meets the old rules** (about 2:28–3:00). An organization
   rule requires one human review on every pull request. Pull request #1 in
   Printf's repository has one approval and can be merged. "Nothing interesting
   here" is the point: this is the baseline.
2. **A prototype with one user** (about 3:08–3:50). Someone ("let's call them
   Joe") created `size-catalog`, a utility that converts between the
   incompatible size systems. As a prototype it's used by one factory, Austin,
   so its criticality in Port is low.
3. **External custom properties** (about 3:50–4:42). He introduces them as a
   new GitHub feature, which he called two weeks old; GitHub's changelog dates
   it September 29, 2026. He showed the mapping screen where the GitHub
   connection is chosen and Port's values are mapped to external properties.
   In GitHub the properties then appear as coming from an external source,
   not configured in GitHub, and read-only there.
4. **Adoption changes criticality** (about 5:02–5:39). He records in Port that
   Berlin and Osaka also use `size-catalog`. With three factories using it,
   criticality becomes critical. He first called it "high", then read the
   actual value, critical.
5. **The ruleset catches up** (about 5:57–6:31). The ruleset "critical services
   require two reviews" applies only when `Port.criticality` is critical. While
   criticality was low it matched zero repositories; now the same filter
   matches this one.
6. **The payoff** (about 6:40–6:59). The exact pull request from step 1 now
   requires two reviewers, and merging is blocked. Nothing in GitHub was edited.

He then recapped (about 7:19–8:12): criticality rose not because someone
remembered to change it but because more factories started using the
prototype, and GitHub applied different rules as a result. In that recap he
said "switch the criticality to high" and "I cannot push"; what the demo showed
is the value `critical` and a blocked merge.

### How the argument works

- **The same pull request is the spine.** Showing it mergeable first, then
  unchanged but blocked, is what makes the claim concrete: the code, the check
  and the approval didn't change; the knowledge about who depends on the code
  did. The proof is a live state change, not an assertion, which is also why
  the "high" and "push" slips matter: the precise result is the property value
  `critical` and a blocked merge.
- **The objection is answered up front.** "Why not keep everything in GitHub?"
  gets its answer in the first minute and a half, before the demo, so the demo
  only has to show the mechanism.
- **Vendor-neutral framing.** Saying it can be a CMDB or anything you trust
  keeps the takeaway about the GitHub feature and the policy pattern, with
  Port as one example of the source.
- **The ruleset was shown after the flip.** The prepared order showed the
  ruleset matching zero repositories before the change ("a guard with nothing
  to guard. Yet."). On stage it was shown once it already matched, and the
  zero-match state was explained in retrospect.

### The takeaway he closed on

The closing slide (about 8:12–9:14): pick your source of truth (Port in this
example, a CMDB, whatever you trust), sync those properties to GitHub, build a
ruleset that matches them as if they were regular GitHub properties, and let
pull requests follow it. "Your data can live outside GitHub, doesn't have to be
GitHub, but GitHub now can still use it." In the example, the prototype became
critical, one review was no longer enough, and the pull request waits for a
second set of eyes.

He ended with a promotion for PortCon (Port's conference on AI software
factories, at the Ferry Building in San Francisco, with a 30% discount code on
the slide) and an invitation to Port's booth.

### Prepared material not delivered on stage

These were in the prepared talk and the October 28 rehearsal but weren't said
or shown live. Use them only with that label:

- A repository search by `props.Port.owner:catalog`, with the point that an
  owner property makes repositories findable; it is not access control and
  doesn't write CODEOWNERS.
- A control repository, `printf-docs` (low criticality), that still needed one
  review after the change.
- The limit: a second review wouldn't have caught the bare size label; what
  changes is that the next change to something three factories depend on
  waits for a second person.
- Operational caveats: read the value back in GitHub before trusting a sync;
  Port aggregation properties recalculate on a 15-minute schedule, so the demo
  counts consumers in a workflow; organization rulesets need GitHub Team or
  Enterprise.
- In rehearsal, the chain from the Port edit to the blocked merge took about
  ten seconds. The live delivery didn't state a time.

### Sources

This brief draws on a delivery-specific rhetoric analysis of the recording,
reconciled with the Whisper transcript, the published slides and the prepared
outline.

- Recording: https://www.youtube.com/watch?v=WWNs1Jg3RUg
- Talk page: https://speaking.jbaru.ch/talks/github-universe-2026-prototype-policy/
- Configuration: https://github.com/printf-swag/demo-config
- Port guide: https://docs.port.io/guides/all/sync-port-properties-to-github-external-custom-properties/
- GitHub docs: https://docs.github.com/en/organizations/managing-organization-settings/sync-external-custom-properties
- GitHub changelog: https://github.blog/changelog/2026-09-29-bring-business-context-with-external-custom-properties
