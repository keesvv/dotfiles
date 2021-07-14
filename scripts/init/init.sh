#!/bin/sh

# Set wallpaper
~/.fehbg

# Set bar
~/.config/polybar/start.sh

source ~/.dotfiles/scripts/init/xorg.sh
source ~/.dotfiles/scripts/init/exec.sh

# Set up RGB
~/.dotfiles/scripts/rgb/init.sh
