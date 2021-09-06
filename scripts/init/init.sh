#!/bin/sh

source ~/.dotfiles/scripts/vars/vars.sh
source ~/.dotfiles/scripts/init/xorg.sh

# Set wallpaper
~/.fehbg
feh-blur --blur 4 --darken 10 -d

# Set bar
~/.dotfiles/.config/polybar/start.sh &

# Automatically start applications
source ~/.dotfiles/scripts/init/exec.sh

# Set up RGB
~/.dotfiles/scripts/rgb/init.sh &
