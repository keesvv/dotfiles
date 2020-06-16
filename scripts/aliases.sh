# Git aliases
alias g='git'
alias ga='git add'
alias gs='git status'
alias gb='git branch'
alias gc='git commit -v'
alias gd='git diff'
alias gp='git push'
alias gco='git checkout'
alias glo='git log --oneline'
alias glc='git log --oneline | wc -l'

# File listing
alias ls='ls --color=auto'
alias la='ls -A'
alias l='ls -la'

# Verbose copying
alias cp='cp -iv'

# Open file
alias open='xdg-open'

# Bluetooth
alias btconnect='bluetoothctl power on && sleep 1 && bluetoothctl connect 7C:38:AD:24:09:C5'

# Edit bspwm config
alias bspe='vi ~/.dotfiles/.config/bspwm/bspwmrc'
alias keyedit='vi ~/.dotfiles/.config/sxhkd/sxhkdrc'

