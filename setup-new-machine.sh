# Copy paste this file in bit by bit.
# Don't run it.

echo "Do not run this script in one go. Hit Ctrl-C NOW"
read -n 1

###############################################################################
# Backup old machine's dotfiles                                               #
###############################################################################

mkdir -p ~/migration/home
cd ~/migration

# let's hold on to these
cp ~/.extra ~/migration/home
cp ~/.z ~/migration/home
cp -R ~/.ssh ~/migration/home
cp -R ~/Documents ~/migration
cp ~/.bash_history ~/migration # back it up for fun?
cp ~/.gitconfig.local ~/migration
cp ~/.z ~/migration # z history file.


###############################################################################
# Git                                                                         #
###############################################################################

# github.com/jamiew/git-friendly
# the `push` command which copies the github compare URL to my clipboard is heaven
bash < <( curl https://raw.githubusercontent.com/jamiew/git-friendly/master/install.sh)


###############################################################################
# Z                                                                           #
###############################################################################

# github.com/rupa/z - hooked up in .zshrc
# consider reusing your current .z file if possible. it's painful to rebuild :)
# or use autojump instead https://github.com/wting/autojump
git clone https://github.com/rupa/z.git ~/z
chmod +x ~/z/z.sh


# my magic photobooth symlink -> dropbox. I love it.
#    + first move Photo Booth folder out of Pictures
#    + then start Photo Booth. It'll ask where to put the library.
#    + put it in Dropbox/public
#   * Now… you can record photobooth videos quickly and they upload to dropbox DURING RECORDING
#   * then you grab public URL and send off your video message in a heartbeat.


# for the c alias (syntax highlighted cat)
sudo easy_install Pygments


###############################################################################
# Symlinks to link dotfiles into ~/                                           #
###############################################################################

./setup.sh
