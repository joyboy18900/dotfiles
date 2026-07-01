# Dotfiles

My topic-centric dotfiles repository, heavily inspired by [holman/dotfiles](https://github.com/holman/dotfiles).
Tailored for **macOS, Fish Shell (Tide prompt), and WezTerm**.

## Setup

Run the bootstrap script on a new machine:

```sh
git clone https://github.com/joyboy18900/dotfiles.git ~/Workspaces/dotfiles
cd ~/Workspaces/dotfiles
script/bootstrap
```

The bootstrap script will:
1. Install Homebrew (if missing)
2. Install dependencies via `brew bundle`
3. Symlink configuration files into `~/.config/` and `~/`
4. Install Fisher plugins (like Tide)

## Local Configuration

For machine-specific settings or secrets (API keys), use local files which are ignored by git:

- **Fish**: Copy `fish/config.local.fish.example` to `~/.config/fish/config.local.fish`
- **Git**: Copy `git/gitconfig.local.example` to `~/.gitconfig.local`

## Structure

```
fish/       - Fish shell configuration and Fisher plugins
wezterm/    - WezTerm terminal emulator configuration
git/        - Core git config and global ignores
gh/         - GitHub CLI configuration
homebrew/   - Brewfile for package management
script/     - Automation scripts (bootstrap)
```
