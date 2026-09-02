# dotfiles

Personal dotfiles inspired by [holman/dotfiles](https://github.com/holman/dotfiles).

## Install

```sh
git clone https://github.com/joyboy18900/dotfiles.git ~/Workspaces/dotfiles
cd ~/Workspaces/dotfiles
script/bootstrap
```

`script/bootstrap` installs the **headless core**: the CLI tools in
`homebrew/Brewfile` plus the Claude Code and antigravity CLIs. This core
installs the same way on macOS and Linux.

## macOS apps

GUI apps and macOS-only tools are kept on record in
`homebrew/Brewfile.macos` and are not installed by bootstrap. Install the
whole set with:

```sh
brew bundle --file=homebrew/Brewfile.macos
```

or one at a time with `brew install --cask <name>`.
