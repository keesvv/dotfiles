cd ~/.dotfiles/scripts/youtubedl
node extractBookmarks.js

youtube-dl \
    --no-playlist \
    --ignore-errors \
    --batch-file '/tmp/youtubedl-batch' \
    --no-call-home \
    --extract-audio \
    --audio-format mp3 \
    --output 'output/%(title)s.%(ext)s'
