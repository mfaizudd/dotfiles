#!/usr/bin/env bash

FILE="$1"
LINE="$2"
COL="$3"
NVIM_SOCKET="/tmp/nvim-godot.sock"
ALACRITTY_WORKSPACE=2

if [ -S "$NVIM_SOCKET" ]; then
    # Connect to running instance
    nvim --server "$NVIM_SOCKET" --remote "$FILE"
    nvim --server "$NVIM_SOCKET" --remote-send "<cmd>:${LINE}<CR>"

    # Switch to the nvim workspace if on Hyprland
    if [ -n "$HYPRLAND_INSTANCE_SIGNATURE" ]; then
        hyprctl dispatch workspace "$ALACRITTY_WORKSPACE"
    fi
elif [ -n "$TMUX" ]; then
    nvim --listen "$NVIM_SOCKET"
else
    # No socket — open alacritty with tmux, running nvim
    alacritty -e tmux new-session \
        "nvim --listen '$NVIM_SOCKET' +'$LINE' '$FILE'" &

    # Switch to it if on Hyprland
    if [ -n "$HYPRLAND_INSTANCE_SIGNATURE" ]; then
        hyprctl dispatch workspace "$ALACRITTY_WORKSPACE"
    fi
fi
