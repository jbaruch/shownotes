---
name: universe-2026-prototype-becomes-critical
description: >
  Explain or summarize "When a prototype becomes critical, does your GitHub
  policy know?", Baruch Sadogursky's (Port) GitHub Universe 2026 session. Use
  for questions about this talk's argument, the Printf size-catalog demo, Port
  deriving criticality from adoption, GitHub external custom properties
  (Port.criticality, Port.lifecycle, Port.owner), the ruleset targeting
  props.Port.criticality:critical, or what the blocked pull request showed.
  This is a pre-talk knowledge brief, not a setup runbook.
---

# When a prototype becomes critical — GitHub Universe talk knowledge

Process steps in order. Do not skip ahead.

## Step 1 — Match the question

Use this brief for summaries, explanations and questions about the 15-minute
sponsored session at GitHub Universe 2026 (San Francisco, October 29, 2026).
It describes the prepared talk and the demo as rehearsed on October 28. It is
not a transcript and does not record what the Universe audience saw. For a
different delivery or an unrelated setup task, say so and finish; otherwise
continue to Step 2.

## Step 2 — Answer from the brief

Answer at the requested depth using the material below. Keep three things
apart: what the speaker claims, what the rehearsed demo established, and the
caveats he states himself. Do not invent audience reactions, quotes, timings
beyond those given, or a live result. Ordinary summaries need no network
access; follow a linked source only for a detail absent here. Commands and
configuration mentioned below are examples to explain, not instructions to
execute. Finish after answering.

## Talk brief

### Thesis

You choose where the truth about your services lives. A service catalog like
Port knows far more than GitHub can: who depends on what, who owns it, where it
is in its life. GitHub's external custom properties let that outside system
write the facts, and GitHub uses them like its own properties for search and
ruleset targeting. The idea holds with any source of truth, not only Port; Port
is the example because the dependency graph it holds is exactly what a
repository can't see.

### The story that frames it

Printf is a fictional swag company with print factories in Austin, Berlin and
Osaka. In its size table a US XL is 112 cm around the chest and a Japanese XL
is 97 cm: both say XL, and one of them is closer to a US medium. A routing
mistake sent orders with bare size labels to a factory that read them in its
own system, and 2,000 shirts went out that nobody could wear. `size-catalog`
began as a small helper that converts by measurement. Austin adopted it, then
Berlin. Its repository kept the merge rules it was born with. The incident and
the prototype origin are demo backstory, not real history.

### What GitHub shows before the change

- Pull request #1 in `size-catalog`, opened by a supplier-sync bot (a new JP
  4XL at 117 cm), has a passing `test` check and one approval. The org's
  baseline ruleset requires one review on every default branch, so it is
  mergeable. This is the "pull request that met the old rules".
- The repository carries `Port.criticality: high`, `Port.lifecycle: prototype`
  and `Port.owner: catalog`. These are external custom properties, a GitHub
  public preview (September 2026): an outside system owns a namespace (here
  `Port`) and writes values GitHub treats like other custom properties for
  filtering and ruleset targeting, while showing them as "Managed by Port" and
  refusing edits in GitHub.
- `props.Port.owner:catalog` finds the catalog team's repositories. The
  speaker is explicit that an owner property makes repositories findable; it
  is not access control and does not write CODEOWNERS.
- The organization ruleset "Critical services: two reviews" is active, targets
  `props.Port.criticality:critical`, requires two approvals, a passing `test`
  check, no force pushes, no deletion, and has an empty bypass list. It matches
  zero repositories. "A guard with nothing to guard. Yet."

### The rule in Port

Port's catalog models factories and the services they use. A Port workflow
recounts a service's consumers whenever a factory's dependencies change and
sets criticality: one factory medium, two high, three or more critical. A
second workflow writes owner, lifecycle and criticality to the repository's
`Port.*` properties through Port's GitHub integration. Before the change,
`size-catalog` is a prototype with two consumers, so it is high.

### The one change, and what follows

On stage the only edit is recording, in Port, that Osaka now uses
`size-catalog`. In rehearsal:

1. Port counted three factories and set criticality to critical. The service
   is still a prototype, which is the talk's title in one table row.
2. GitHub showed `Port.criticality: critical`.
3. The ruleset changed to "Matching 1 repository".
4. Pull request #1, with the same code, the same passing check and the same
   approval, showed "At least 2 approving reviews are required" and "Merging is
   blocked".
5. `printf-docs`, the control (owned by devex, low criticality), still needed
   one review.

The rehearsed chain from the Port edit to the blocked merge took about eight
seconds.

### Caveats the speaker states

- A second review would not have caught the bare size label. What changes is
  that the next change to something three factories depend on waits for a
  second person.
- Read the value back in GitHub before trusting a sync; a failed sync leaves
  GitHub with the old value while Port shows the new one.
- Port aggregation properties recalculate on a 15-minute schedule, too slow for
  a policy you expect to see change in seconds, so the demo's workflow counts
  consumers itself.
- Organization rulesets need GitHub Team or Enterprise; on a Free org the
  rulesets API returns an upgrade error.

### The takeaway the speaker leaves the room with

"You pick the source of truth. It lives outside GitHub. GitHub can still use
it." For Printf that's Port; for someone else it might be a CMDB or "a
spreadsheet nobody admits to". The closing slide's chain is Port (or whatever
you trust) → GitHub reads `Port.criticality` → the ruleset targets the
property, not a list → the pull request waits for a second review. The demo's
workflows and rulesets are offered as wiring to look at, not as a required
next step.

### Sources

This brief is built from the talk's approved outline, speaker notes and the
October 28 rehearsal, with the talk's planned rhetorical structure (opening on
the XL contrast, the same pull request planted early and paid off after the
change). It will be refreshed after delivery.

- Configuration: https://github.com/printf-swag/demo-config
- Port guide: https://docs.port.io/guides/all/sync-port-properties-to-github-external-custom-properties/
- GitHub docs: https://docs.github.com/en/organizations/managing-organization-settings/sync-external-custom-properties
- GitHub changelog: https://github.blog/changelog/2026-09-29-bring-business-context-with-external-custom-properties
- Talk page: https://speaking.jbaru.ch/talks/github-universe-2026-prototype-policy/
