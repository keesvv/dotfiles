#!/usr/bin/env bash
xcolor | tr -d '\n' | xclip -sel clipboard
notify-send "Color copied to clipboard"
