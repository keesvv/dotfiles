#!/usr/bin/env bash
RAW_DEPS=$(sed '1d' deps.csv | sort)

while IFS=";" read PACKAGE_NAME IS_OPTIONAL; do
    CHECKLIST+=("$PACKAGE_NAME")
    CHECKLIST+=('')

    if [ "$IS_OPTIONAL" = "X" ]; then
        CHECKLIST+=(off)
    else
        CHECKLIST+=(on)
    fi
done < <(echo "$RAW_DEPS")

# Prompt a package checklist
PACKAGES=$(\
    dialog \
        --title "Kees' Dotfiles" \
        --ok-label "Install" \
        --checklist 'Please select which packages you wish to install:' 20 60 0 "${CHECKLIST[@]}"\
        3>&1 1>&2 2>&3 3>&- \
)

clear

# Quit if no packages were selected
if [ -z "$PACKAGES" ]; then
    exit
fi

# Install selected packages
yay -S $PACKAGES

# Install zplug
git clone https://github.com/zplug/zplug ~/.zplug

# Ranger plugins
ranger_plugins=(
    "https://github.com/alexanderjeurissen/ranger_devicons"
)

# Link files
echo "Linking files..."
ln -srf .zshrc .Xdefaults .vim .vimrc .tmux.conf .p10k.zsh ~/
ln -srf .config/* ~/.config/
ln -srf .config/ranger/* ~/.config/ranger/
ln -srf .vscode/* ~/.config/Code/User/

# Install ranger plugins
echo "Installing Ranger plugins..."

for i in "$ranger_plugins"
do
    PLUG_NAME=$(echo "$i" | cut -d/ -f5)
    PLUG_DIR="$HOME/.config/ranger/plugins/$PLUG_NAME"
    git clone "$i" "$PLUG_DIR"
done

# We're done
echo "Done!"

