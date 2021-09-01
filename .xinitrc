#!/bin/bash
pipewire &
pipewire-pulse &
pipewire-media-session &

xrandr --output HDMI-0 --primary --mode 2560x1080 --rate 144
pactl load-module module-native-protocol-tcp

exec dbus-launch --sh-syntax --exit-with-session bspwm
#exec dbus-launch --sh-syntax --exit-with-session gnome-session
