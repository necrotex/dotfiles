#!/bin/sh

# ask for admin password first
sudo -v

# Basic stuff
sudo apt-get install -y ffmpeg coreutils zsh vim build-essentials fonts-hack-ttf git python xclip

# awesome vimrc
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

#Pygments
sudo easy_install -U Pygments
