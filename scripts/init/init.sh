#!/bin/sh

# Set wallpaper
feh --bg-scale ~/.dotfiles/.wallpaper.jpg

# Set bar
~/.config/polybar/launch.sh --docky

source ~/.dotfiles/scripts/init/xorg.sh
source ~/.dotfiles/scripts/init/exec.sh

# Set up RGB
~/.dotfiles/scripts/rgb/init.sh
