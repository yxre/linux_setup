#!/bin/bash

mkdir -p $HOME/repo
cd $HOME/repo
#git clone https://github.com/yxre/linux_setup

cd linux_setup
mkdir -p $HOME/.config

ln -s "$HOME/repo/linux_setup/vimrc" "$HOME/.vimrc"
ln -s "$HOME/repo/linux_setup/bin" "$HOME/bin"
ln -s "$HOME/repo/linux_setup/ideavimrc" "$HOME/.ideavimrc"
ln -s "$HOME/repo/linux_setup/zshenv" "$HOME/.zshenv"
ln -s "$HOME/repo/linux_setup/kitty" "$HOME/.config/kitty"
ln -s "$HOME/repo/linux_setup/zshrc" "$HOME/.zshrc"
ln -s "$HOME/repo/linux_setup/zsh" "$HOME/.zsh"
ln -s "$HOME/repo/linux_setup/vim" "$HOME/.vim"
