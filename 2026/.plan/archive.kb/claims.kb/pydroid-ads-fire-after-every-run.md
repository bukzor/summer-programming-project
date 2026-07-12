---
status: asserted
likelihood: 0.85
sources:
    - ../../sources.kb/claude.md
depends:
    - ../../claims.kb/visual-feedback-sustains-motivation.md
tags: [environment, risk]
---

Checked directly (Play Store / App Store listings + user reviews), not
assumed. Two separate, concrete findings:

1. **Ads fire after every code run**, not just on app open. Multiple
   reviews describe this specifically in the context of iterative
   debugging: "spending more time watching the same 2 ads than I am
   coding," to the point some restart the app to skip through faster. No
   evidence either way on ad *content* safety (not confirmed risky, not
   confirmed fine) — the confirmed problem is different and more
   concrete: an ad after every run directly breaks the tight edit-run
   feedback loop that's the entire reason pygame beat plain-Python-with-
   print-statements in the first place
   (`../../claims.kb/visual-feedback-sustains-motivation.md`). For a kid
   iterating fast, that's not a minor annoyance, it's friction on the
   exact mechanic the tool was chosen to preserve.
2. **Removing ads is no longer a simple one-time ~$10 purchase.** An
   older ~$9.99 one-time price (2023 reviews) has since become a tiered
   structure — App Store currently lists $3.99 / $19.99 / $39.99 options,
   and multiple reviewers explicitly complain there's no longer a
   straightforward one-time ad-removal tier at the old price. Unclear
   which tier (if any) removes ads without also bundling the
   premium-library features; worth checking directly in-app rather than
   assuming a cheap fix.
