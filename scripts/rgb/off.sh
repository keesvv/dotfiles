#!/usr/bin/env bash
liquidctl --match "smart" set led1 color fixed 000000 &
liquidctl --match "smart" set led2 color fixed 000000 &
liquidctl --match "kraken" set ring color fixed 000000 &
liquidctl --match "kraken" set logo color fixed 000000 &

python3 ~/.dotfiles/scripts/hue/main.py off &
#python3 ~/.dotfiles/scripts/rgb/orgb.py off &
