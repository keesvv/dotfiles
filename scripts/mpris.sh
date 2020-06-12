#!/usr/bin/env bash
MPRIS_DATA=$(playerctl metadata title 2>/dev/null)

if [ ! -z "$MPRIS_DATA" ]; then
    echo "$MPRIS_DATA"
else
    echo ""
fi

