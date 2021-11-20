#!/bin/sh

# Cursor
xsetroot -cursor_name left_ptr

# Wallpaper
. ~/.fehbg

# XDG
export XDG_RUNTIME_DIR="/tmp/xdg-$(id -u)"
mkdir -p $XDG_RUNTIME_DIR

# Pipewire
pipewire &
pipewire-pulse &

# Desktop
dunst &
sxhkd &
picom &
polybar -c ~/.config/polybar/bar.ini desktop &
exec bspwm
