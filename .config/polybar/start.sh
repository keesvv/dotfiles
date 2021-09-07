#!/bin/sh
BAR=desktop

if [ $(cat /etc/hostname) = "laptop" ]; then
    BAR=laptop
fi

cd ~/.dotfiles/.config/polybar
polybar -c bar.ini -l warning $BAR
