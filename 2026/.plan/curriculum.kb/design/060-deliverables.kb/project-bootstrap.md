---
why:
  - ../050-components.kb/checkpoints-reference-implementations.md
  - ../../technical-policy.kb/repo-layout.md
status: done
---

Before session 0, in `session/bootstrap/`: smoke-test the stack (throwaway
pyxel script in this repo's `trash/`, confirm a window opens, delete it);
`uv init` at repo root for `main.py`; write and confirm
`session/00/checkpoint.py`; replace `README.md` with what/how-to-run/where-
the-plan-lives; create `ideas.md` seeded with an opening line; gitignore
`trash/`. One repo throughout — see `repo-layout.md`.

**Done 2026-07-11.** Smoke test passed (window confirmed live by the
user — dark blue window, white "smoke test" text), but only after
discovering and fixing an environment gotcha — see `repo-layout.md`'s
"Environment gotcha" note: this repo runs its own standalone `.venv`
pinned to the system Python, not the Homebrew-Python workspace venv.
`session/00/checkpoint.py`, `README.md`, `ideas.md`, `sessions.log`, and
`.gitignore` (`trash/` + `.venv/` + `__pycache__/`) all exist and are
committed. The `uv init`-generated `main.py` stub was moved to `trash/`
rather than kept or committed (user, 2026-07-12: "trash goes in the
trash") — it was uv boilerplate, not Abby's, and would have muddied her
first commit's history. `main.py` gets created fresh, live, as the first
thing that happens in session 0 Part B — not pre-written by bootstrap.
