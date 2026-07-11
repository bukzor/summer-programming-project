---
why:
  - ../020-goals.kb/errors-are-detective-work.md
---

A click anywhere in the bottom 120px (the UI strip) must never crash or mine
a world cell, from session 3 onward. This is a *deliberately excluded*
failure class — session-3/4/7's real deliberate bugs teach traceback
literacy elsewhere; this one is just an IndexError with no lesson attached.
