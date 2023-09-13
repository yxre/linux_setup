#!/bin/bash

echo "export WSHOME=$HOME/workspace" >> ~/.bashrc
echo "export WS=$HOME/workspace" >> ~/.bashrc
echo 'source $WSHOME/bin/ws_bashrc' >> ~/.bashrc

source ~/.bashrc

sudo apt-get install -y git curl build-essential
sudo apt-get install -y vim
sudo apt-get install -y terminator
sudo apt-get install -y keepass2
sudo apt-get install -y chromium-browser


#Node.Js
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt-get install -y nodejs




sudo snap install code --classic
sudo apt-get install -y xclip
sudo apt-get install -y nmap
sudo apt-get install -y anki
sudo apt-get install -y sqlite3
sudo apt-get install -y python3 python3-venv
sudo apt-get install -y gcc cmake g++ make libboost-all-dev build-essential zlib1g-dev flex libxml2-dev libxslt-dev libssl-dev clang clang++ gdb
sudo apt-get install -y gparted
sudo apt-get install -y libreadline-dev bison
sudo apt-get install -y redis redis-tools redis-server
sudo apt-get install -y libfreetype6-dev
sudo apt-get install -y libcups2-dev
sudo apt-get install -y autoconf
sudo apt-get install -y mercurial
sudo apt-get install -y dos2unix
sudo apt-get install -y vlc browser-plugin-vlc
sudo apt-get install -y traceroute
sudo apt-get install -y ffmpeg
sudo apt-get install -y gparted
sudo apt-get install -y i3
sudo apt-get install -y pavucontrol
sudo apt-get install -y zip

ln -s $WSHOME/bin/dotfiles/npmrc $HOME/.npmrc
ln -s $WSHOME/bin/dotfiles/gitconfig $HOME/.gitconfig

sudo apt install postgresql postgresql-contrib postgresql-server-dev-all

# alt-tab only between windows in workspace
gsettings set org.gnome.shell.app-switcher current-workspace-only true
