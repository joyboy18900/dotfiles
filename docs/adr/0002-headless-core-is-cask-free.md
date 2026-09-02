# The shared Brewfile is cask-free

`homebrew/Brewfile` is the headless core that `script/bootstrap` installs on both
macOS and Linux. It contains Homebrew formulae only. Every `cask` (wezterm, the
fonts, browsers, IDEs, Docker Desktop) lives in `homebrew/Brewfile.macos`, which
bootstrap never reads.

Homebrew on Linux does not support casks at all, so a `cask` line in the shared
file would break `brew bundle` on Linux. Keeping the shared file formula-only is
what lets the same file run on both platforms without per-OS guards. Do not move
a `cask` back into `homebrew/Brewfile`.

macOS-only formulae (currently `mole`) also live in `Brewfile.macos`, not the
shared file.
