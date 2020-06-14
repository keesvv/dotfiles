#!/usr/bin/env bash
cd ~
TARGET_FILE="$(fzf)"
setsid -f xdg-open "$TARGET_FILE"
