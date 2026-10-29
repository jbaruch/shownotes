---
layout: talk
---

# When a prototype becomes critical, does your GitHub policy know?

**Conference:** GitHub Universe 2026
**Date:** 2026-10-29

A presentation at GitHub Universe 2026 in
                    October 2026 in
                    San Francisco, CA, USA by
                    {{ site.speaker.display_name | default: site.speaker.name }}

## Abstract

A T-shirt sizing helper now feeds three print factories, but its GitHub repository still has the merge requirements it started with. At Printf, our fictional swag company, a routing mistake sent orders carrying bare size labels to factories using different size systems. Customers received 2,000 shirts they couldn't wear. Baruch Sadogursky uses that repository to show how ownership and business criticality from Port become GitHub custom properties. You'll find repositories by owning team, target a ruleset at critical services, and watch GitHub require another review on a pull request that met the old rules. Leave with the sync and ruleset configuration to try on one of your own repositories.

## Resources

In the demo, nobody types "critical". Port counts how many of Printf's factories
use `size-catalog` and derives its criticality: three or more makes it critical.
A Port workflow writes that value to the repository as the external custom
property `Port.criticality`, which GitHub shows as managed by Port and read-only.
An organization ruleset targeting `props.Port.criticality:critical` then applies
to the repository, and a pull request that already had its one approval and a
passing check needs a second review. In rehearsal the whole chain, from the
Port edit to the blocked merge, took about eight seconds.

### Configuration to try on one repository

- [printf-swag/demo-config — Port blueprints and workflows, both GitHub rulesets, reset script](https://github.com/printf-swag/demo-config)
- [Port: Sync Port properties to GitHub external custom properties](https://docs.port.io/guides/all/sync-port-properties-to-github-external-custom-properties/)
- [GitHub: Sync external custom properties](https://docs.github.com/en/organizations/managing-organization-settings/sync-external-custom-properties)
- [GitHub: Creating rulesets for repositories in your organization](https://docs.github.com/en/organizations/managing-organization-settings/creating-rulesets-for-repositories-in-your-organization)

### Background

- [GitHub changelog: Bring business context with external custom properties (public preview)](https://github.blog/changelog/2026-09-29-bring-business-context-with-external-custom-properties)
- [Port Community Session, October 2026, with Rohan Parakh from GitHub](https://www.youtube.com/watch?v=fe2hc5vHz78)
- [Port: aggregation properties recalculate every 15 minutes (why the demo counts consumers in a workflow)](https://docs.port.io/context-lake/data-model/setup-blueprint/properties/aggregation-property/)
