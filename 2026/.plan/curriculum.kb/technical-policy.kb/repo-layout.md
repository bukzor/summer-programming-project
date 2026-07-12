---
force: must
why:
  - ../design/050-components.kb/checkpoints-reference-implementations.md
  - ../design/060-deliverables.kb/project-bootstrap.md
source:
  - user (bukzor)
---

One repo, not two — but two audiences, split by dot-visibility (user,
2026-07-12). The repo root is Abby-facing: her `ls` is her UI, so
everything she doesn't benefit from seeing lives under `.plan/`, which
plain `ls` and the ChromeOS Files app don't show.

Abby-facing root: `projects/` holds her games, one directory per game,
each a single `main.py` (see `single-file-no-abstractions.md`) with the
same run command — Abby's Craft is `projects/abbys-craft/main.py`,
evolving in place across every session (user, 2026-07-12: this supersedes
the earlier `main.py`-at-repo-root rule). Beside `projects/` sit
`README.md` (kid-safe: what this is, how to run it), `ideas.md` (her
feature backlog), `playground/` (tracked experiments — mess allowed,
never graded), `python/` (her earlier practice files), the shared `uv`
tooling (one root `.venv` serves every project — `uv run` walks up to
find it), and a gitignored `trash/` for scratch/smoke-test throwaways.

Adult-facing `.plan/`: the discourse-graph `*.kb/` trees and their
schema links, `curriculum.kb/`, `sessions.log`, and `session/` — sessions
separated by subpath, not by file naming: `session/NN/` per numbered
session (e.g. `session/00/checkpoint.py`, `session/02b/` for a split),
`session/bootstrap/` for the one-time pre-session-0 setup in
`project-bootstrap.md`. Checkpoints are never shown to Abby, which is why
`session/` lives here. The root `CLAUDE.md` stays kid-safe and thin,
pulling the real instructions via `requires: .plan/CLAUDE.md`.

Sight-line coverage beyond `ls`: `.vscode/settings.json` `files.exclude`
hides `.plan/` from an editor's file tree; `git log` still shows planning
history, so keep commit messages bland rather than fighting it. The
standard for `.plan/` content is "fine if she reads it at 15" —
decluttering, not secrecy.

History: this supersedes the 2026-07-11 everything-at-root layout (see
git history), which replaced the earlier flat `checkpoints/session_NN.py`
convention (2026-07-09 draft, never actually built — see
`../../sources.kb/scratch-pygame-zero-repo.md` for the correction).

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
