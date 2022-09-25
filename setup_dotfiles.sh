#!/bin/bash
echo "==> Setting up znap"
mkdir -p $HOME/.config/znap/
git clone --depth 1 -- https://github.com/marlonrichert/zsh-snap.git
source $HOME/.config/znap/zsh-snap/install.zsh

echo "==> Setting up antigen..."
mkdir -p $HOME/.local/bin
curl -L git.io/antigen > $HOME/.local/bin/antigen.zsh

echo "==> Setting up vundle..."
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "==> Setting up mpv scripts..."
/bin/bash $HOME/.config/mpv/install_mpv_scripts.sh
