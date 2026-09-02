# Cross-platform support via a `uname` branch, not a dotfiles manager

To support Debian-family Linux alongside macOS, `script/bootstrap` branches on
`uname -s` and keeps its hand-rolled Bash structure, rather than adopting a
dotfiles manager (chezmoi, stow, dotbot).

The repo is small, already has a regression test (`script/test`), and follows the
Holman topic layout. A manager would be a near-total rewrite and a new dependency
to learn, for gains this repo does not need at its size. The cost of reversing
this later (moving to chezmoi) is a rewrite, so it is recorded here.

OS detection is a single injectable seam (`detect_os` returning `macos` or
`linux`) so `script/test` can stub it and run the branch logic on either OS.
