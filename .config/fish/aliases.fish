# Git aliases
alias g='git'
alias ga='git add'
alias gs='git status'
alias gb='git branch'
alias gc='git commit -v'
alias gd='git diff'
alias gp='git push'
alias gr='git restore'
alias gf='git fetch -p'
alias gco='git checkout'
alias gcb='git checkout -b'
alias glo="git log --date=short --color --graph --pretty=format:'%Cgreen[%Creset%h%Cgreen]%Creset -%C(yellow)%d%Creset %s %Cgreen(%cd) %C(bold blue)%Creset' --abbrev-commit"
alias glc='git log --oneline | wc -l'

# File listing
alias ls='lsd'
alias ll='ls -1'
alias l='ls -lA'
alias lsdd='l --date=date'
alias cdd='cd ..'
alias view='micro -readonly on'
alias tree='tre'

# Trash
alias tgrep='trash-list | grep'

# Verbose copying & moving
alias cp='cp -iv'
alias mv='mv -iv'

# Open file
alias open='xdg-open'

# Screencast
alias sc='sh ~/.dotfiles/scripts/screencast.sh'

# Bluetooth
alias btconnect='bluetoothctl power on && sleep 1 && bluetoothctl connect 7C:38:AD:24:09:C5'

# Edit bspwm config
alias bspe='$EDITOR ~/.dotfiles/.config/bspwm/bspwmrc'
alias keyedit='$EDITOR ~/.dotfiles/.config/sxhkd/sxhkdrc'

# Editors
#alias m='micro'
alias vi='nvim'
alias code='vscodium'
alias hh='hstr'

# rclone
alias pullncp='rclone sync -i -v nextcloud: ~/Documents/Nextcloud'
alias pushncp='rclone sync -i -v ~/Documents/Nextcloud nextcloud:'
alias pullnct='rclone sync -i -v nextcloudtc:Tribecamp ~/Documents/Tribecamp'
alias pushnct='rclone sync -i -v ~/Documents/Tribecamp nextcloudtc:Tribecamp'
alias pulltcdrive='rclone sync -i -v tcdrive: ~/Documents/TribecampDrive'
alias pushtcdrive='rclone sync -i -v ~/Documents/TribecampDrive tcdrive:'

# Portage
alias cduse='cd /etc/portage/package.use'
alias efullupdate='sudo emerge --ask --verbose --update --deep --changed-use @world'

# youtube-dl
alias ytdl='sh ~/.dotfiles/scripts/music/interactive.sh'

# Node, yarn & npm
alias pscripts='jq .scripts package.json | bat -l json'

# Other
alias weer='curl wttr.in'
alias todo='$EDITOR ~/Notes/todo.md'
