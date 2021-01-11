#!/bin/sh

# Set wallpaper
feh --bg-scale ~/.dotfiles/.wallpaper.jpg

source ~/.dotfiles/scripts/init/xorg.sh
source ~/.dotfiles/scripts/init/exec.sh

# Set up RGB
~/.dotfiles/scripts/rgb/init.sh
