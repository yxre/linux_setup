#!/bin/bash


dconf load / < ~/bin/metadata/dconf-settings.ini


for i in $(cat ~/bin/metadata/dnf); do
	sudo dnf install -y $i
done;

for i in $(cat ~/bin/metadata/flatpak_packages); do
	flatpak install $i
done;



