#!/usr/bin/env bash
FAN_SPEED=35

liquidctl initialize all

liquidctl --match "smart" set fan2 speed $FAN_SPEED
liquidctl --match "smart" set fan3 speed $FAN_SPEED

source ~/.dotfiles/scripts/rgb/on.sh
