#!/usr/bin/env bash
MAIN_COLOR=b734eb

sudo liquidctl --match "smart" set led1 color fixed $MAIN_COLOR
sudo liquidctl --match "smart" set led2 color fixed $MAIN_COLOR
sudo liquidctl --match "kraken" set ring color tai-chi $MAIN_COLOR --speed fastest
sudo liquidctl --match "kraken" set logo color fixed ffffff
