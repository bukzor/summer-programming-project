---
force: must
why:
  - ../design/050-components.kb/checkpoints-reference-implementations.md
  - ../design/060-deliverables.kb/project-bootstrap.md
source:
  - user (bukzor)
---

One repo, not two. No sibling `scratch.pygame-zero` project — the code
lives here, in this planning/decision-graph repo, alongside the `*.kb/`
trees. `main.py` (the kid-facing single file — see
`single-file-no-abstractions.md`) sits at repo root and evolves in place
across every session; `README.md`, `ideas.md`, `sessions.log`, and a
gitignored `trash/` for scratch/smoke-test throwaways sit beside it.

Sessions are separated by subpath, not by file naming: `session/NN/` per
numbered session (e.g. `session/00/checkpoint.py`, `session/02b/` for a
split), `session/bootstrap/` for the one-time pre-session-0 setup in
`project-bootstrap.md`. This replaces the earlier flat
`checkpoints/session_NN.py` convention (2026-07-09 draft, never actually
built — see `../../sources.kb/scratch-pygame-zero-repo.md` for the
correction).

**Environment gotcha, found during bootstrap (2026-07-11), must not
regress:** this machine's `python3`/`uv`-default interpreter resolves to a
Homebrew (Linuxbrew) build tied to Homebrew's own bundled glibc 2.35, which
cannot load the system's OpenGL libraries (`pyxel` needs `libGL.so.1`,
which needs `GLIBC_2.38` — the actual system glibc is 2.41, plenty new
enough, but Homebrew's Python never touches it). Fix: this project is
**not** a member of the ancestor `~/pyproject.toml` uv workspace (that
workspace's shared venv is the Homebrew-Python one), and its own
`.python-version` is pinned to `/usr/bin/python3.13` (the real system
interpreter) so `uv run`/`uv sync` build a standalone `.venv` here that can
actually open a pyxel window. Don't add this repo back to that workspace,
and don't delete `.python-version`.
