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
cat() {
  if [ -x "$(command -v bat)" ]; then
    command bat "$@"
  else
    command cat "$@"
  fi
}
vpn() {
  command sudo wg-quick $@ wg0
}
