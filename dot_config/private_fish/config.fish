if status is-interactive
    # Commands to run in interactive sessions can go here
    and not set -q TMUX
	source "$HOME/.cargo/env"
    source ~/.asdf/asdf.fish
    exec tmux
end

# Environment variables
set -Ux EDITOR nvim

# Paths
fish_add_path ~/.dotnet/tools
fish_add_path ~/.cargo/bin
fish_add_path ~/.local/bin

# Abbreviations
abbr -a sc systemctl
abbr -a scs systemctl status
abbr -a scr systemctl restart
abbr -a sce systemctl enable
abbr -a scd systemctl disable
abbr -a lg lazygit
abbr -a ls "exa -la"

# Configurations
bind \cw backward-kill-word

# Hooks
zoxide init fish | source
direnv hook fish | source
