# Threading Needles Homebrew tap

`tndl` is the Threading Needles client. Operators and their own AI agents
(Claude Code, Codex, Cursor, …) use it to work with the Threading Needles
platform through the tndl API.

## Install

macOS (Apple silicon and Intel) and Linux (x86_64 and ARM64, glibc 2.35+):

```bash
brew install threading-needles/tap/tndl
tndl login
```

Update with `brew update && brew upgrade tndl`. Bash, Zsh and Fish completions
are installed with the formula.

Windows: download the x86_64 ZIP from
[Releases](https://github.com/Threading-Needles/homebrew-tap/releases), check
it against `SHA256SUMS.txt`, extract `tndl.exe` and add its folder to `PATH`.
The same releases contain standalone macOS and Linux archives. The macOS
binaries are not Developer ID signed or notarized.

## This repository

Releases are published automatically. This repository holds only the formula
(`Formula/tndl.rb`), the release receipt and the release archives with their
checksums.
