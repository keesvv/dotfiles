#!/usr/bin/env bash
FAN_SPEED=35

sudo liquidctl initialize all

sudo liquidctl --match "smart" set fan2 speed $FAN_SPEED
sudo liquidctl --match "smart" set fan3 speed $FAN_SPEED

sh ~/.dotfiles/scripts/rgb/on.sh
