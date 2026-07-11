---
why:
  - ../050-components.kb/draw.md
  - ../040-design.kb/editor-and-environment-design.md
  - ../020-goals.kb/her-domain-stays-hers.md
  - ../020-goals.kb/name-the-choice-dont-pin-it.md
status: not-started
---

**Goal:** a window she owns, and hands that trust the editor.

This session is "session zero" merged with the first code (user,
2026-07-11 — see `../../../claims.kb/session-zero-agenda.md` and
`../../../definitions.kb/session-zero.md`): planning first, building
second, one logical session. If planning runs long, split across two
calendar sittings rather than compressing either half or renumbering —
it's still "session 0" either way; the trial-checkpoint count in
`session-01-blocks.md` refers to this logical session and the next one,
not calendar days.

**Part A — Planning (no computer, ~15-20 min):** run
`../../../claims.kb/session-zero-agenda.md`'s agenda: ground it with a
short reference game clip, let her name the game's theme/setting/
character/win-condition-or-not (her call, entirely — don't offer a
shortlist), show her the pyxel window and say plainly it's the technical
default (not an A/B), agree working terms (she types, session length,
cadence). Comes out of this with a short shared note, not a contract.

**Part B — Build (30-40 min):** delete the stub `main.py`. `import pyxel`; `WIDTH`, `HEIGHT`,
`TITLE`; `pyxel.init(WIDTH, HEIGHT, title=TITLE)`; `def update(): pass`;
`def draw():` with `pyxel.cls(...)`, her name via `pyxel.text(...)`, the
dark UI-strip rect; `pyxel.run(update, draw)` last. Deliberately trivial
Python so attention goes to the edit→save→run mechanics; every predict-run
cycle is also a vim rep. Mid-session, stage the vim fire drill on purpose
(type in normal mode, watch it scramble, `Esc`/`u`/`u`/`u` back) so the
first *accidental* one is a drill she's already run.

**Concepts:** a program is text in a file; the saved file is what runs;
variables, strings.

**Done when:** her title/color/name on screen, and she's recovered a
scrambled buffer herself at least once.

**Deliberate bug:** misspell a color name; read the error together.

**Pitfall:** forgetting `pyxel.run(update, draw)` at the end — the window
just never opens, no error; "nothing changed" after a save usually means
"didn't actually save."
