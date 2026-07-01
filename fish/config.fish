if status is-interactive
    # ─── Syntax Highlighting (Green-Cyan for Dark Theme) ─────────────────
    set -g fish_color_command 4ade80  # Green — valid commands
    set -g fish_color_error 38bdf8    # Cyan  — invalid commands
end

# ─── Aliases ─────────────────────────────────────────────────────────────

alias handsomeboy="echo tarbandoo"
alias fish_file_config="cd ~/.config/fish"

# Workspace
alias workspace="cd ~/Workspaces"

# Tmux
alias tmn="tmux new -s"
alias tma="tmux a -t"

# ─── Tool PATHs ─────────────────────────────────────────────────────────

# Windsurf
fish_add_path "$HOME/.codeium/windsurf/bin"

# Antigravity
fish_add_path "$HOME/.antigravity/antigravity/bin"

# uv (Python)
fish_add_path "$HOME/.local/bin"

# ─── Local Config (secrets, machine-specific) ───────────────────────────
# Create ~/.config/fish/config.local.fish for API keys, tokens, etc.
# This file is .gitignored and will never be committed.

if test -f ~/.config/fish/config.local.fish
    source ~/.config/fish/config.local.fish
end
