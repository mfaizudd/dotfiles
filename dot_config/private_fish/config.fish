if status is-interactive
    # Commands to run in interactive sessions can go here
    and not set -q TMUX
	source "$HOME/.cargo/env"
    source ~/.asdf/asdf.fish
    exec tmux
end
abbr -a sc systemctl
abbr -a scs systemctl status
abbr -a scr systemctl restart
abbr -a sce systemctl enable
abbr -a scd systemctl disable
abbr -a lg lazygit
abbr -a ls "exa -la"
bind \cw backward-kill-word
zoxide init fish | source
