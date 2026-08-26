#!/usr/bin/env bash

FILE="$1"
LINE="$2"
COL="$3"
NVIM_SOCKET="/tmp/nvim-godot.sock"
ALACRITTY_WORKSPACE=5

if [ -S "$NVIM_SOCKET" ]; then
    # Connect to running instance
    nvim --server "$NVIM_SOCKET" --remote "$FILE"
    nvim --server "$NVIM_SOCKET" --remote-send "<cmd>:${LINE}<CR>"

    # Switch to the nvim workspace if on Hyprland
    if [ -n "$HYPRLAND_INSTANCE_SIGNATURE" ]; then
        hyprctl dispatch workspace "$ALACRITTY_WORKSPACE"
    elif [ -n "$NIRI_SOCKET" ]; then
        niri msg action focus-workspace 2
    fi
elif [ -n "$ZELLIJ" ]; then
    nvim --listen "$NVIM_SOCKET"
else
    # No socket — open alacritty with tmux, running nvim
    alacritty -e zellij \
        "nvim --listen '$NVIM_SOCKET' +'$LINE' '$FILE'" &

    # Switch to it if on Hyprland
    if [ -n "$HYPRLAND_INSTANCE_SIGNATURE" ]; then
        hyprctl dispatch workspace "$ALACRITTY_WORKSPACE"
    elif [ -n "$NIRI_SOCKET" ]; then
        niri msg action focus-workspace 2
    fi
fi
