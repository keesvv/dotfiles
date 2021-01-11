#!/usr/bin/env bash
MAIN_COLOR=250333

liquidctl --match "smart" set led1 color fixed $MAIN_COLOR &
liquidctl --match "smart" set led2 color fixed $MAIN_COLOR &
liquidctl --match "kraken" set ring color tai-chi $MAIN_COLOR --speed slowest &
liquidctl --match "kraken" set logo color fixed 8c8c8c &

python3 ~/.dotfiles/scripts/hue/main.py chill &
