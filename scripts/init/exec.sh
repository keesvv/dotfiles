#!/bin/sh

# Function for running startup programs once
function run_once {
    if [ -z $(pgrep -x $1) ]; then
        $1 $2 &
    fi
}

# Run background tasks
killall -q sxhkd; sxhkd &
killall -q picom; sleep 0.3s; picom &
#killall -q polybar; polybar mainbar-bspwm &

run_once redshift
run_once nextcloud
#run_once "sudo ckb-next-daemon"
#run_once ckb-next "-b"