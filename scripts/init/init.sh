#!/bin/sh

# Set wallpaper
feh --bg-scale ~/.dotfiles/.wallpaper.jpg

# Control lights on login
~/.dotfiles/scripts/autohue/login.sh

# Set up NZXT RGB control
~/.dotfiles/scripts/rgb/init.sh

source ~/.dotfiles/scripts/init/xorg.sh
source ~/.dotfiles/scripts/init/exec.sh
