#!/usr/bin/env bash
TRANSTR_BIN=~/Projects/GitHub/transtr/target/release/transtr

if [ "$1" = "short" ]; then
    xsel | $TRANSTR_BIN wide | xclip -sel clipboard
    xdotool key ctrl+v
    exit 0 
fi

TRANSFRM=$(echo -e "wide\nupper\nlower\nclap\nhaags" | rofi -dmenu)
xsel | $TRANSTR_BIN $TRANSFRM | xclip -sel clipboard
