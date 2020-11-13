#!/usr/bin/env bash
curl -q -s -o thumbnail.jpg https://img.youtube.com/vi/$1/maxresdefault.jpg
gimp thumbnail.jpg
