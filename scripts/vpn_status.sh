#!/usr/bin/env bash
CONNECT_STATUS=$(ip a | grep proton0)

if [ -z "$CONNECT_STATUS" ]; then
    echo "  %{F#fff} "
else
    echo "  %{F#5de34b} "
fi

