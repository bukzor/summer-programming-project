---
status: asserted
kind: contradiction
conclusion: ../claims.kb/recommended-environment-termux-primary.md
premises:
    - ../claims.kb/termux-x11-has-recurring-unresolved-bugs.md
    - ../claims.kb/termux-practical-risk-estimate.md
sources:
    - ../sources.kb/claude.md
tags: [environment]
---

`why-termux-over-pydroid.md` was right about the philosophy (no ad
model beats a taxed one) but didn't check whether the recipe was actually
reliable in practice — it treated "a guide exists that works" as
equivalent to "this works reliably for most people," which the GitHub
issue history contradicts: years of recurring black-screen bugs, an
install method that's already shifted once, and GPU-driver problems on
the same chip family as this tablet (unconfirmed on the exact model).
A ~15-25% chance of burning an evening and still not having a working
setup is too large a risk to gate the actual project kickoff on, however
philosophically appealing zero-ads is.
