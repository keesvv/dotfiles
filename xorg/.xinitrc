#!/bin/sh

# Monitor
xrandr --output HDMI-0 --mode 2560x1080 --rate 144 &

# Cursor
xsetroot -cursor_name left_ptr

# Keyboard & mouse
xinput --set-prop 9 'libinput Accel Speed' -0.90
xset r rate 200 25

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
