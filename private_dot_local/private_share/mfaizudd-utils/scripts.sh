#!/bin/bash
vim() {
  if [ -x "$(command -v lvim)" ]; then
    command lvim "$@"
  else
    command vim "$@"
  fi
}
mux() {
  if [ -x "$(command -v tmuxinator)" ]; then
    command tmuxinator "$@"
  else
    echo "tmuxinator not installed"
  fi
}
vpn() {
  command sudo wg-quick $@ wg0
}
