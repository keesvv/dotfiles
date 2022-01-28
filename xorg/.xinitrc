#!/bin/sh
export DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/$(id -u)/bus"
systemctl --user import-environment

xrandr --output HDMI-0 --mode 2560x1080 --rate 144 &

# Cursor
xsetroot -cursor_name left_ptr

# Keyboard & mouse
xinput --set-prop 9 'libinput Accel Speed' -0.90
xset r rate 200 25

# Wallpaper
. ~/.fehbg

# Desktop
dunst &
sxhkd &
picom &
polybar -c ~/.config/polybar/bar.ini desktop &
exec bspwm
