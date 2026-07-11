--- # workaround: anthropics/claude-code#13003
depends:
  - Skill(llm-design-kb)
  - Skill(llm-kb)
---

# Abby's Craft — design knowledge base

Layered design docs for the "Abby's Craft" curriculum — the concrete
build-out of `../claims.kb/resolved-next-tool-trial.md`, coded in the
sibling `scratch.pygame-zero` repo (see `../sources.kb/scratch-pygame-zero-repo.md`).
Relocated here 2026-07-09 from that repo's `docs/dev/` so the curriculum
and the decision graph that produced it live in one place; the sibling
repo now holds only the code (`main.py`, `checkpoints/`) and points here
for the plan. Distilled from the original `CURRICULUM.md` draft (long
removed, decomposed here in full — see that repo's git history for the
source prose); this is the authoritative structured form going forward.

- `background.kb/` — foundational context (who Abby is, how pyxel behaves,
  the Scratch→Python bridge). No why-chain; everything else assumes it.
- `design.md` + `design/010`–`070` — the why/how tower: mission → goals →
  requirements → design → components → deliverables → future work.
- `technical-policy.md` + `technical-policy.kb/` — binding code rules (the
  old "Technical constitution").
- `discourse.kb/` — open questions not yet decided by the user; claims are
  the assistant's recommendations, not settled facts.
