---
status: asserted
kind: entailment
conclusion: ../claims.kb/recommended-environment-pydroid-primary.md
premises:
    - ../claims.kb/hardware-is-android-tablet.md
    - ../claims.kb/pydroid3-viable-python-pygame-env.md
    - ../claims.kb/physical-keyboard-input-unverified.md
    - ../claims.kb/trinket-pygame-zero-fallback.md
sources:
    - ../sources.kb/claude.md
tags: [environment]
---

Given the hardware is an Android tablet, Pydroid 3 is the only option
that preserves the original reason Python beat Scratch — a real language,
real files, real syntax errors, not a browser sandbox. It's free and
pygame is fully supported. The one real unknown is physical keyboard game
input, which is untested, not known-broken — so the right move is to try
Pydroid first and treat the first pygame test as the verification, not to
preemptively downgrade to Trinket's weaker (Skulpt-based) environment on
a risk that may not materialize.
