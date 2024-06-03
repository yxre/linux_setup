#!/bin/bash


mkdir ~/repo
cd ~/repo

git clone https://github.com/yxre/linux_setup

cd linux_setup
mkdir -p ~/.config

ln -s  ~/repo/linux_setup/vimrc ~/.vimrc
ln -s ~/repo/linux_setup/bin ~/bin
ln -s  ~/repo/linux_setup/ideavimrc ~/.ideavimrc
ln -s  ~/repo/linux_setup/nvim ~/.config/nvim
ln -s  ~/repo/linux_setup/condarc ~/.condarc
ln -s  ~/repo/linux_setup/i3 ~/.config/i3
ln -s ~/repo/linux_setup/fcitx5 ~/.config/fcitx5
ln -s ~/repo/linux_setup/dunst ~/.config/dunst
