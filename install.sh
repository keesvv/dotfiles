#!/usr/bin/env bash

# Link files
echo "Linking files..."
ln -srf .zshrc .Xdefaults .vim .vimrc .tmux.conf ~/
ln -srf .config/* ~/.config/
ln -srf .vscode/* ~/.config/Code/User/

# Download ranger plugins
echo "Updating and installing Ranger plugins..."
if [ ! -d ~/.config/ranger/plugins/ranger_devicons  ]; then
    git clone https://github.com/alexanderjeurissen/ranger_devicons ~/.config/ranger/plugins/ranger_devicons
else
    (cd ~/.config/ranger/plugins/ranger_devicons && git pull)
fi

echo "Done!"

