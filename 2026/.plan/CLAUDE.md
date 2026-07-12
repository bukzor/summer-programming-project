--- # workaround: anthropics/claude-code#13003
requires:
    - Skill(llm-discourse-graph)
---

# Summer Programming Project (2026)

Designing a summer programming curriculum for a 10-year-old whose only prior
experience is a game-making Scratch camp.

This directory (`.plan/`) is the adult-facing side of the repo, dot-hidden
from Abby's `ls`; the repo root is hers (see
`curriculum.kb/technical-policy.kb/repo-layout.md`). The hiding standard is
"fine if she reads it at 15" — declutter, don't keep secrets.

## Structure

For an overview, run (from `.plan/`): `tree -a -I 'CLAUDE.md|*.jsonschema.yaml'`

```
questions.kb/    → open design questions (what to build, what tool, cadence, session zero agenda)
claims.kb/       → beliefs about her, about kids this age, about tools
deductions.kb/   → why the claims add up to a recommendation
sources.kb/      → who asserted what (parent vs. assistant general knowledge)
definitions.kb/  → terms like "session zero"
curriculum.kb/   → plan of record: design tower, technical policy, session-by-session deliverables
session/         → adult-facing reference implementations (session/NN/checkpoint.py) — never shown to Abby
sessions.log     → running per-session record (date, what shipped, what sparked joy, what dragged)
archive.kb/      → parked Android/Pydroid/Termux track (claims, deductions, sources, the installing-termux.kb runbook, abbys-device-log.kb) — superseded by the Chromebook/Crostini pick, kept for a possible pivot back, out of the way of daily work
```

## Current Work

Check `../.claude/todo.md` for active items.

## Key Insight

Scratch already taught her the hard conceptual part (events, loops, conditionals,
variables) — the summer project should spend its budget on a text-syntax transition
tool that keeps the same "make a game, see it move" feedback loop, not on generic
exercises. See `deductions.kb/why-pyxel.md` and `deductions.kb/why-session-zero.md`.
