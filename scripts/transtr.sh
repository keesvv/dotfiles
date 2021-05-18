#!/usr/bin/env bash
TRANSTR_BIN=~/Projects/GitHub/transtr/target/release/transtr

TRANSFRM=$(echo -e "wide\nupper\nlower" | rofi -dmenu)

xsel | $TRANSTR_BIN $TRANSFRM | xclip -sel clipboard
