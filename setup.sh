#!/bin/bash


mkdir ~/repo
cd ~/repo

git clone https://github.com/yxre/linux_setup

cd linux_setup

ln -s  ~/repo/linux_setup/vimrc ~/.vimrc
ln -s ~/repo/linux_setup/bin ~/bin
ln -s  ~/repo/linux_setup/ideavimrc ~/.ideavimrc
ln -s  ~/repo/linux_setup/nvim ~/.config/nvim
ln -s  ~/repo/linux_setup/condarc ~/.condarc
