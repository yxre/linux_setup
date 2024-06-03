#!/bin/bash


echo "Starting Fedora setup"


# add non-free repo
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo


sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

