#!/usr/bin/env bash

# Definitions
ranger_plugins=(
    "https://github.com/alexanderjeurissen/ranger_devicons"
)

# Link files
echo "Linking files..."
ln -srf .zshrc .Xdefaults .vim .vimrc .tmux.conf ~/
ln -srf .config/* ~/.config/
ln -srf .vscode/* ~/.config/Code/User/

# Download ranger plugins
echo "Updating and installing Ranger plugins..."

for i in "$ranger_plugins"
do
    PLUG_NAME=$(echo "$i" | cut -d/ -f5)
    PLUG_DIR="$HOME/.config/ranger/plugins/$PLUG_NAME"

    echo "$i -> $PLUG_NAME"

    if [ ! -d "$PLUG_DIR"  ]; then
        git clone "$i" "$PLUG_DIR"
    else
        (cd "$PLUG_DIR" && git pull)
    fi
done

echo "Done!"

