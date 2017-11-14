#!/bin/sh

# ask for admin password first
sudo -v

# Install node 8
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs

# Install PHP
LC_ALL=C.UTF-8 add-apt-repository ppa:ondrej/php
sudo apt-get install -y php7.1 php7.1-common php7.1-mbstring php7.1-dom php7.1-mysql php7.1-xml php7.1-redis

# Install yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update && sudo apt-get install -y yarn

# Other dev stuff
sudo apt-get install -y mysql redis

