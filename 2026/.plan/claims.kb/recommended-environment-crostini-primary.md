---
status: asserted
likelihood: 1.0
sources:
    - ../sources.kb/buck.md
    - ../sources.kb/scratch-pygame-zero-repo.md
depends:
    - ../claims.kb/hardware-is-chromebook-crostini.md
    - ../deductions.kb/why-crostini.md
tags: [recommendation, environment]
---

Resolved primary environment: Buck's Chromebook, Crostini's real Debian
Linux userland, `uv`-managed Python — the exact setup `scratch.pygame-zero`
already runs in. `pip`/`uv` install normally; no Android packaging
workarounds, no ad-supported IDE, no on-device Rust-compilation gap. This
supersedes `../archive.kb/claims.kb/recommended-environment-pydroid-primary.md`
and `../archive.kb/claims.kb/recommended-environment-termux-primary.md`, both
scoped to the now-moot Android-tablet path and archived there.

A side effect worth naming: the old "how does code get from Buck's dev
machine to Abby's tablet" deployment question (see
`../sources.kb/scratch-pygame-zero-repo.md`) evaporates entirely — Abby's
sessions now run directly against the same repo, same machine, same
interpreter Buck develops in. Nothing to transfer.
