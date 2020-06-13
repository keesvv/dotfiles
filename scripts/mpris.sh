#!/usr/bin/env bash
MPRIS_DATA=$(playerctl metadata title 2>/dev/null)
PLAY_STATUS=$(playerctl status 2>/dev/null)

if [ ! -z "$MPRIS_DATA" ]; then
    if [ "$PLAY_STATUS" = "Playing" ]; then
        echo -n "  "
    fi

    echo "$MPRIS_DATA"
else
    echo ""
fi
