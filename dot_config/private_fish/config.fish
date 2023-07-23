if status is-interactive
    # Commands to run in interactive sessions can go here
    and not set -q TMUX
    source ~/.asdf/asdf.fish
    exec tmux
end

# Environment variables
set -Ux EDITOR nvim

# Paths
fish_add_path ~/.dotnet/tools
fish_add_path ~/.cargo/bin
fish_add_path ~/.local/bin
fish_add_path ~/go/bin

# Abbreviations
abbr -a sc systemctl
abbr -a scs systemctl status
abbr -a scr systemctl restart
abbr -a sce systemctl enable
abbr -a scd systemctl disable
abbr -a lg lazygit
abbr -a ls "exa -la"
abbr -a sd "cd ~ && cd (find * -type d | fzf)"

# Configurations
bind \cw backward-kill-word

# Hooks
if type -q zoxide
    zoxide init fish | source
end
if type -q direnv
    direnv hook fish | source
end
if type -q sqlx
    sqlx completions fish | source
end
