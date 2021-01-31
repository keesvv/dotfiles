#!/usr/bin/env bash
files=()

for f in ~/NextcloudPersonal/Memes/*
do
    files+="$(basename "$f")\n"
done

meme=$(echo -e "$files" | rofi -dmenu -p "Meme")

xclip -selection clipboard -t image/png "$HOME/NextcloudPersonal/Memes/$meme"
