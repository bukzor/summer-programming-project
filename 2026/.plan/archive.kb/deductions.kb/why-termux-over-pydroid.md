---
status: asserted
kind: entailment
conclusion: ../claims.kb/recommended-environment-termux-primary.md
premises:
    - ../claims.kb/pydroid-ads-fire-after-every-run.md
    - ../claims.kb/termux-pygame-viable-2026.md
    - ../claims.kb/pydroid3-viable-python-pygame-env.md
    - ../claims.kb/hardware-is-android-tablet.md
tags: [environment]
---

The concrete finding, not a generic "ads are bad for kids" worry: Pydroid
fires an ad after every code run, which specifically breaks the tight
edit-run feedback loop that's the whole reason pygame beat a plain-Python
console script in `why-pygame-zero.md`. Removing it is also no longer a
cheap one-time purchase (2026 pricing runs $3.99-$39.99 in tiers, not
~$10 flat). Termux has no ad model and no purchase question at all, and
happens to also better match the original pedagogical criterion (real
Linux beats a mobile-IDE wrapper, pgzero needs no workaround). The one
real cost is setup friction shifted onto Buck, which is the right place
for it to land — Abby should never be the one troubleshooting an X11
connection error.
