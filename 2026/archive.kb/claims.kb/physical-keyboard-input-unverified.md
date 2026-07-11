---
status: superseded
likelihood: 0.6
sources:
    - ../../sources.kb/claude.md
tags: [environment, risk]
---

Moot: hardware moved off Android to Buck's Chromebook/Crostini
(`../../claims.kb/hardware-is-chromebook-crostini.md`), a real Linux box
with a normal keyboard — no SDL2-on-Android passthrough question at all.
Archived with the rest of the tablet track, not because the finding was
wrong, but because it no longer applies.

Also corrected (user, 2026-07-11): the original text claimed "a sprite
that moves with arrow keys" was the day-one milestone "already agreed with
Abby." That was false — no such agreement was ever made with her. Original
text preserved below for the record, false claim struck:

Not confirmed by research: whether her Bluetooth/USB physical keyboard's
key-down/up events reach pygame's SDL2 Android backend cleanly enough for
game controls (arrow keys, WASD, etc.). Android hardware-keyboard support
in SDL2 is generally solid, but "generally solid" isn't "verified on this
device." This should be tested directly, first thing, rather than assumed.
~~and conveniently, testing it *is* the day-one milestone already agreed
with Abby (a sprite that moves with arrow keys), so no extra session is
needed to de-risk this.~~
