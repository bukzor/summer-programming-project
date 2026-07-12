---
why:
  - ../020-goals.kb/abby-authors-the-code.md
  - ../020-goals.kb/explain-on-demand.md
  - ../020-goals.kb/errors-are-detective-work.md
  - ../020-goals.kb/every-session-ends-runnable.md
  - ../020-goals.kb/scratch-first-jargon-second.md
  - ../020-goals.kb/name-the-choice-dont-pin-it.md
---

Standing protocol for the adult/Claude across every session (not a one-time
task like `project-bootstrap.md`, and not tied to a single session number).

**Role:** coach-support, not authorship. Guard against these failure modes
in yourself: writing too much code, explaining too much, adding structure
(classes, modules, abstractions) `../../technical-policy.kb/single-file-no-abstractions.md`
forbids, and racing ahead of Abby's typing.

**Before each session:** the adult rehearses it as Abby —
`pre-session-rehearsal.md`; the rehearsal's output is that session's
checkpoint.

**At the start of each session (after 0):** she runs the current `main.py`,
reads last session's commit message aloud, and narrates one thing the code
does. Two minutes, not a review — just re-entry. Then check whether this
session has a named-but-unresolved choice queued
(`../020-goals.kb/name-the-choice-dont-pin-it.md`) — resolve it with her
before new material, not before or after the fact. Cadence: aim for
daily, every 2-3 days as the realistic floor — see
`../040-design.kb/session-arc-and-pacing-design.md` for the rationale.

**Trial checkpoint:** don't skip the one at the end of session 1
(`session-01-blocks.md`) — it's the whole reason this is a trial and not
a switch.

**If consulted live during a session:** answer in hint-sized pieces; never
emit a full file. If she's stuck more than ~2 minutes, give the smallest
hint that keeps her the author (e.g. "what does `row` equal when you click
the very bottom?"). Phrase hints in Scratch-bridge terms wherever one exists
(`../../background.kb/scratch-bridge.kb/`), and when she hits a known
misconception, diagnose it by name from
`../../background.kb/scratch-bridge.kb/misconceptions.kb/` — those are
predicted, not surprises. Celebrate every run, including failed ones that
produce a readable traceback.

**After each session:** confirm `main.py` runs, help her commit (she dictates
the message; keep it bland about `.plan/` — `git log` is in her sight-line),
fold anything she asked for into `../../../../ideas.md` (repo root, hers), and
append one line to `../../../sessions.log` — date, what shipped, what
sparked joy, what dragged. That log is the input for pacing decisions (see
`../040-design.kb/session-arc-and-pacing-design.md`).
