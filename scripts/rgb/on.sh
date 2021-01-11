#!/usr/bin/env bash
MAIN_COLOR=b734eb

liquidctl --match "smart" set led1 color fixed $MAIN_COLOR &
liquidctl --match "smart" set led2 color fixed $MAIN_COLOR &
liquidctl --match "kraken" set ring color tai-chi $MAIN_COLOR --speed fastest &
liquidctl --match "kraken" set logo color fixed ffffff &

python3 ~/.dotfiles/scripts/hue/main.py focus &
