#!/bin/sh

# Set wallpaper
~/.fehbg
feh-blur --blur 4 --darken 10 -d

# Set bar
~/.dotfiles/.config/polybar/start.sh &

source ~/.dotfiles/scripts/vars/vars.sh
source ~/.dotfiles/scripts/init/xorg.sh
source ~/.dotfiles/scripts/init/exec.sh

# Set up RGB
~/.dotfiles/scripts/rgb/init.sh &
