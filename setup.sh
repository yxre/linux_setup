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
ln -s '/home/leland/repo/linux_setup/picom' '/home/leland/.config/picom'
ln -s '/home/leland/repo/linux_setup/polybar' '/home/leland/.config/polybar'
ln -s '/home/leland/repo/linux_setup/ranger' '/home/leland/.config/ranger'
ln -s '/home/leland/repo/linux_setup/rofi' '/home/leland/.config/rofi'
ln -s '/home/leland/repo/linux_setup/nitrogen' '/home/leland/.config/nitrogen'
ln -s '/home/leland/repo/linux_setup/vifm' '/home/leland/.config/vifm'
ln -s '/home/leland/repo/linux_setup/nnn' '/home/leland/.config/nnn'
ln -s '/home/leland/repo/linux_setup/.xprofile' '/home/leland/.xprofile'
ln -s '/home/leland/repo/linux_setup/.Xmodmap' '/home/leland/.Xmodmap'
ln -s '/home/leland/repo/linux_setup/zshenv' '/home/leland/.zshenv'
ln -s '/home/leland/repo/linux_setup/kitty' '/home/leland/.config/kitty'
ln -s '/home/leland/repo/linux_setup/zshrc' '/home/leland/.zshrc'
