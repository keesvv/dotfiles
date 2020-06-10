#!/usr/bin/env bash
KB_VARIANT=$(setxkbmap -query | grep variant)

if [ -z "$KB_VARIANT" ]; then
    setxkbmap -variant intl
else
    setxkbmap -variant ""
fi

