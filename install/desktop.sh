#!/bin/sh

# ask for admin password first
sudo -v

# Install essentials
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install guake

# Spotify
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0DF731E45CE24F27EEEB1450EFDC8610341D9410
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update && apt-get install -y spotify-client

# Icons
sudo add-apt-repository ppa:numix/ppa
sudo apt-get update && sudo apt-get install -y numix-icon-theme-circle

# Chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt-get update && sudo apt-get install -y google-chrome-stable

