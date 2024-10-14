#!/bin/bash

mkdir ~/repo
cd ~/repo
git clone https://github.com/yxre/linux_setup

cd linux_setup
mkdir -p ~/.config

ln -s "~/repo/linux_setup/vimrc" "~/.vimrc"
ln -s "~/repo/linux_setup/bin" "~/bin"
ln -s "~/repo/linux_setup/ideavimrc" "~/.ideavimrc"
ln -s "~/repo/linux_setup/zshenv" "~/.zshenv"
ln -s "~/repo/linux_setup/kitty" "~/.config/kitty"
ln -s "~/repo/linux_setup/zshrc" "~/.zshrc"
ln -s "~/repo/linux_setup/zsh" "~/.zsh"
