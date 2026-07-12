# Design tower

Seven layers, each justifying the one below via `why:` frontmatter (path to
the motivating entry, relative to the citing file). Read top-down for intent,
bottom-up for "what do I actually build."

- `010-mission.kb/` — the problem, who benefits, what success looks like
- `020-goals.kb/` — the non-negotiable ground rules
- `030-requirements.kb/` — verifiable criteria the goals demand
- `040-design.kb/` — the major abstractions satisfying those requirements
- `050-components.kb/` — concrete functions/data structures realizing the design
- `060-deliverables.kb/` — the session-by-session build plan
- `070-future-work.kb/` — deferred ideas (Abby's expansion menu); no why-link

When code or plans change, update the layer that actually changed and check
whether its `why:` links (or things linking to it) still hold — don't let
this drift from `main.py`.
