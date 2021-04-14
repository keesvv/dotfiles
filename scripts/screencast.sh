#!/usr/bin/env bash
FILENAME=~/screencast-$(date "+%F_%H%M%S.%N").mp4
INPUT_MIC=2

EXTRA_ARGS=()

if [ ! -z $MIC ]; then
    EXTRA_ARGS=(-f pulse -i $INPUT_MIC -af "adelay=200|200")
fi

ffcast -s ffmpeg \
    -f x11grab -thread_queue_size 1024 -s %s -i %D+%c \
    ${EXTRA_ARGS[@]} \
    -b:v 800k \
    ${FILENAME}
