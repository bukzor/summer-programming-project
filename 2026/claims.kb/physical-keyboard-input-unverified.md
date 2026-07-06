---
status: asserted
likelihood: 0.6
sources:
    - ../sources.kb/claude.md
tags: [environment, risk]
---

Not confirmed by research: whether her Bluetooth/USB physical keyboard's
key-down/up events reach pygame's SDL2 Android backend cleanly enough for
game controls (arrow keys, WASD, etc.). Android hardware-keyboard support
in SDL2 is generally solid, but "generally solid" isn't "verified on this
device." This should be tested directly, first thing, rather than assumed
— and conveniently, testing it *is* the day-one milestone already agreed
with Abby (a sprite that moves with arrow keys), so no extra session is
needed to de-risk this.
