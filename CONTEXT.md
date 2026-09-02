# dotfiles

Personal dotfiles that provision a development machine from a single `script/bootstrap`
run: linking config files and installing packages. The headless core is
cross-platform (macOS and Debian-family Linux); GUI apps are macOS-only.

## Language

**Bootstrap**:
The single entry script (`script/bootstrap`) that installs Homebrew, installs
packages, links config files, installs shell and tmux plugins, and sets the login
shell. Idempotent, so it is safe to re-run.
_Avoid_: install script, setup script

**Topic**:
A per-tool directory (`fish/`, `git/`, `tmux/`, ...) that holds one tool's config,
following the Holman dotfiles convention. A file ending `.symlink` is linked into
`$HOME` or `~/.config/<topic>/`.
_Avoid_: module, package

**Harness**:
The set of terminal tools the user runs on a provisioned machine: fish, tmux (with
tmux-resurrect), Claude Code, and an editor (vim or Zed). On a Linux machine the
harness is the whole reason to provision it; Linux has no GUI-app layer.
_Avoid_: toolchain, tooling

**Headless core**:
What `script/bootstrap` installs and nothing more: the CLI tools in
`homebrew/Brewfile` (Homebrew formulae only) plus the Claude Code and antigravity
CLIs. It installs the same way on macOS and Linux, with no GUI dependency.
_Avoid_: baseline, minimal set

**macOS apps**:
GUI apps and macOS-only tools kept on record but not installed by
`script/bootstrap`: the terminal (wezterm) and fonts, browsers, IDEs, Docker
Desktop, and the macOS utilities. Listed in `homebrew/Brewfile.macos`; installed
on demand with `brew bundle --file=homebrew/Brewfile.macos`.
_Avoid_: optional apps, extras
