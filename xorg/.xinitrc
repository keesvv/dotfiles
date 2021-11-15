#!/bin/sh
xsetroot -cursor_name left_ptr
. ~/.fehbg

dunst &
sxhkd &
picom &
polybar -c ~/.config/polybar/bar.ini desktop &
exec bspwm
