--- # workaround: anthropics/claude-code#13003
depends:
  - Skill(llm-design-kb)
  - Skill(llm-kb)
---

# Abby's Craft — design knowledge base

Layered design docs for the "Abby's Craft" curriculum — the concrete
build-out of `../claims.kb/resolved-next-tool-trial.md`. Originally planned
as a sibling `scratch.pygame-zero` repo (see
`../sources.kb/scratch-pygame-zero-repo.md`); that repo was never actually
created, and 2026-07-11 the user settled it for good: one repo, this one —
`main.py` at root, sessions separated by `session/NN/` subpath (see
`technical-policy.kb/repo-layout.md`). Distilled from the original
`CURRICULUM.md` draft (an early, since-abandoned prose version — not
recoverable from any repo history, since the code repo it would have lived
in never existed); this is the authoritative structured form going
forward.

- `background.kb/` — foundational context (who Abby is, how pyxel behaves,
  the Scratch→Python bridge). No why-chain; everything else assumes it.
- `design.md` + `design/010`–`070` — the why/how tower: mission → goals →
  requirements → design → components → deliverables → future work.
- `technical-policy.md` + `technical-policy.kb/` — binding code rules (the
  old "Technical constitution").
- `discourse.kb/` — open questions not yet decided by the user; claims are
  the assistant's recommendations, not settled facts.
