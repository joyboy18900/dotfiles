# dotfiles

Personal macOS dotfiles inspired by [holman/dotfiles](https://github.com/holman/dotfiles).

## Install

```sh
git clone https://github.com/joyboy18900/dotfiles.git ~/Workspaces/dotfiles
cd ~/Workspaces/dotfiles
script/bootstrap
```

`script/bootstrap` installs the baseline only: CLI tools, the terminal
(wezterm) and its fonts, and the browsers. Enough to start developing.

## Optional apps

GUI applications (IDEs, Docker, database tools, chat, media) are kept on
record in `homebrew/Brewfile.apps` but are not installed by bootstrap.
Install the whole set with:

```sh
brew bundle --file=homebrew/Brewfile.apps
```

or one at a time with `brew install --cask <name>`.
