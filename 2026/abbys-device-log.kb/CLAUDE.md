--- # workaround: anthropics/claude-code#13003
requires:
    - Skill(llm-kb)
---

# abbys-device-log.kb

Durable state changes to Abby's tablet (Lenovo Idea Tab Plus -- see
`../claims.kb/hardware-is-android-tablet.md`), one dated event per file,
named `YYYY-MM-DD-slug.md`. Frontmatter per
`../abbys-device-log.jsonschema.yaml`.

Belongs here: anything that changes what a future agent will find on the
device or how to reach it -- system settings changed (especially via adb),
apps sideloaded/removed, OS updates, hardware pairings, access channels
(adb, ssh). Each entry says what changed, why, and how to revert or
re-establish it.

Does not belong: attempt narratives (those are the owning experiment's run
log, e.g. `../installing-termux.kb/runs.kb/`), or beliefs about the device
(those are `../claims.kb/`). A run entry should link to the device-log
entries it produced.

Write the entry when the change is made, not at session end. If a later
event reverts an earlier one, write a new entry; don't edit the old one.

When the change is command-driven (adb shell, ssh, etc.), draft the
`$SLUG.sh` *before* running anything and hand it to the user for review --
the tablet isn't a lab device, changes to it should be inspectable before
they happen, not just after. Only run it once reviewed; run it verbatim
(if the user edits it during review, what actually ran is the edited
version). Write the `$SLUG.md` narrative afterward, once the change is
verified: what changed, why, how to verify/revert. Pair `$SLUG.md` with
the same-named `$SLUG.sh` so it's reiterable standalone (a future
agent/session can re-run it verbatim to reproduce or re-apply the
change). Skip the `.sh` when the change wasn't command-driven (a manual
Settings-app toggle, a physical pairing step).
