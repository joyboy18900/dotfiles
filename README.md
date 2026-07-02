# dotfiles

Personal macOS dotfiles built on [Holman's topic-centric architecture](https://github.com/holman/dotfiles). Managed via dynamic symlinks and per-topic Fish sourcing.

## Install

```sh
git clone https://github.com/joyboy18900/dotfiles.git ~/Workspaces/dotfiles
cd ~/Workspaces/dotfiles
script/bootstrap
```

Bootstrap will:
1. Install Homebrew if missing
2. Run `brew bundle` from `homebrew/Brewfile`
3. Symlink all `*.symlink` files to their target paths
4. Install Fisher plugins (Tide prompt)

## Structure

Each directory is a **topic**. Files ending in `.symlink` are linked into `~` (or `~/.config/<topic>/` for XDG topics like `fish`). Plain `.fish` files in any topic are auto-sourced by `config.fish` at shell startup.

```
editors/    aliases.fish, env.fish  — editor env vars and command overrides
fish/       config.fish, fish_plugins — shell config and Fisher plugin manifest
git/        .gitconfig, .gitignore_global — git identity and global ignores
homebrew/   Brewfile — full app and CLI inventory
tmux/       .tmux.conf — terminal multiplexer config
vim/        .vimrc — minimal vim config
wezterm/    .wezterm.lua — terminal emulator config
script/     bootstrap — setup script for new machines
```

## How symlinks work

`script/bootstrap` runs `find` for every `*.symlink` file and links it:

- `fish/config.fish.symlink` → `~/.config/fish/config.fish`
- `wezterm/.wezterm.lua.symlink` → `~/.wezterm.lua`
- `git/.gitconfig.symlink` → `~/.gitconfig`

Rule: filenames starting with `.` link to `~/`. Filenames without a leading dot link to `~/.config/<topic>/`.

## How Fish topic sourcing works

`fish/config.fish.symlink` contains a Holman-style sourcing loop:

```fish
set -l dotfiles (dirname (dirname (realpath (status filename))))
for f in $dotfiles/*/*.fish
    source $f
end
```

Any `*.fish` file dropped into a topic directory is automatically sourced on next shell start — no changes to `bootstrap` or `config.fish` required.

## Local config

Machine-specific secrets go in files that are gitignored:

- **Fish**: `~/.config/fish/config.local.fish` (copy from `fish/config.local.fish.example`)
- **Git**: `~/.gitconfig.local` (copy from `git/gitconfig.local.example`)
