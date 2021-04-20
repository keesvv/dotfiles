#!/usr/bin/env bash

# Clean up old batch
rm -f /tmp/ytdl-batch

# Open batch file with user preferred editor
$EDITOR /tmp/ytdl-batch

# Download batch
~/.dotfiles/scripts/music/download.sh /tmp/ytdl-batch
