---
status: asserted
likelihood: 0.75
sources:
    - ../sources.kb/claude.md
tags: [tools, javascript, p5js]
---

p5.js (run in-browser, e.g. via the p5.js web editor or OpenProcessing) is a
comparably good next step: same "draw loop + immediate visual output" shape
as Pygame Zero, zero local install, and a large kid-facing tutorial base
(The Coding Train). Trade-off versus Pygame Zero: JavaScript's syntax has a
few more sharp edges for a first text language (semicolons, `{}` blocks,
`var`/`let` distinction, curly-brace-heavy callbacks) and the browser
environment is one more layer between her and "just a folder of files,"
which matters less for a 10-year-old than it would for teaching real
software engineering habits later.
