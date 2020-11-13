#!/bin/sh
cd ~/.dotfiles/scripts/init

# Set wallpaper
wal -i ~/.dotfiles/.wallpaper.jpg

# Control lights on login
~/.dotfiles/scripts/autohue/login.sh

# Set up NZXT RGB control
~/.dotfiles/scripts/rgb/init.sh

source ./xorg.sh
source ./exec.sh

cd ~
