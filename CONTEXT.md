# dotfiles

Personal dotfiles that provision a development machine from a single `script/bootstrap`
run: linking config files and installing packages. Historically macOS-only; being
extended to also cover Debian-family Linux (Ubuntu).

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

**Baseline**:
What `script/bootstrap` installs and nothing more: the shell, the terminal
(wezterm) and its fonts, the CLI tools, and the browsers. Enough to start
developing on a fresh machine. Defined by `homebrew/Brewfile`.
_Avoid_: core, minimal set

**Optional apps**:
The GUI applications the user keeps a record of but does not want on every
machine (IDEs, Docker, database tools, chat, media, system utilities). Listed in
`homebrew/Brewfile.apps`, which `script/bootstrap` never reads; installed on
demand with `brew bundle --file=homebrew/Brewfile.apps`.
_Avoid_: extras, bloat
