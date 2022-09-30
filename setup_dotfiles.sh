#!/bin/bash
echo "==> Setting up antigen..."
mkdir -p $HOME/.local/bin
curl -L git.io/antigen > $HOME/.local/bin/antigen.zsh

echo "==> Setting up vundle..."
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "==> Setting up mpv scripts..."
/bin/bash $HOME/.config/mpv/install_mpv_scripts.sh
