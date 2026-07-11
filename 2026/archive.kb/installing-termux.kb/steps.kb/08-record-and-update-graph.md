# 08 -- Record the run and update the discourse graph

Do this while terminal scrollback still exists -- exact versions and error
text lose fidelity fast. This step runs after *every* attempt, not just
successful ones.

1. Write `../runs.kb/YYYY-MM-DD.md` (frontmatter per
   `../runs.jsonschema.yaml`): versions installed, last step completed,
   outcome, duration, deviations from the written steps.

2. Update the discourse graph nodes this experiment exists to resolve:

   - `../../claims.kb/termux-pygame-viable-2026.md` -- move likelihood
     (currently 0.75) toward 1.0 or down, and add the run file as a
     source.
   - `../../claims.kb/termux-practical-risk-estimate.md` -- the
     60-70%-within-one-evening estimate now has a data point; say whether
     it verified.
   - `../../claims.kb/recommended-environment-termux-primary.md`
     (contested, 0.5) -- on full success through step 07, the launch-risk
     objection (`../../deductions.kb/why-not-termux-for-launch.md`) is
     answered *for this device* and the Pydroid-vs-Termux question can be
     reopened with Buck; on a blocked run, mark it retracted.
   - `../../claims.kb/physical-keyboard-input-unverified.md` -- partial
     resolution only; see the scope note in `05-keyboard-input-test.md`.

**Success:** run file validates (`llm.kb-validate`), graph nodes updated,
nothing left in your head.
