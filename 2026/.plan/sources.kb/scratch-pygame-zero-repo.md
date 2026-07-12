---
kind: repo
title: "Abby's Craft (scratch.pygame-zero) — abandoned sibling-repo plan"
path: /home/bukzor/claude/scratch.pygame-zero
---

**Correction (user, 2026-07-11): this repo was never actually created.**
The 2026-07-09 text below describes it as already pivoted to pyxel and
"committed" — that was aspirational, written ahead of execution, not a
verified fact; no such path exists on disk, `pyxel` was never installed,
and `project-bootstrap.md` was (correctly) still `status: not-started`.
The user has now settled it for good: one repo, the current one — see
`../curriculum.kb/technical-policy.kb/repo-layout.md`. Kept here, not
deleted, as the record of the abandoned plan and the name "Abby's Craft."

Original 2026-07-09 text, preserved for that record:

Buck's concrete build-out of the trial resolved in
`../claims.kb/resolved-next-tool-trial.md`: a Minecraft-like built with
Abby across ~8 sessions. As of 2026-07-09 it's pivoted from pgzero to
pyxel (committed), and its design tower + discourse.kb — previously at
that repo's `docs/dev/` — has been relocated into `../curriculum.kb/`
here, so the curriculum and the decision graph that produced it live in
one repo. `scratch.pygame-zero` itself is now just the code (`main.py`,
`checkpoints/`) plus `uv`-managed environment on Buck's machine.

With hardware/environment resolved to Buck's own Chromebook
(`../claims.kb/hardware-is-chromebook-crostini.md`), the old "how does
this reach Abby's tablet" deployment question is moot — sessions run
directly against this repo, no transfer needed.
