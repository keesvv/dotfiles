# History
HISTFILE=~/.zhistory
HISTSIZE=1000
SAVEHIST=1000

# Keybinds
bindkey -v
bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line
bindkey '^[[3~' delete-char
bindkey -s '^R' 'hh^M'

# Completion
zstyle :compinstall filename '~/.zshrc'
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' menu select

# Prompt
autoload -U colors && colors
setopt PROMPT_SUBST
PS1=$'%{$fg[white]%}$(dirs) $ %{$reset_color%}'

# Aliases
alias ls='ls --color=auto'
alias ll='ls -1'
alias l='ls -lA'
alias vi='nvim'
alias sudo='doas'
alias reload='source ~/.zshrc'
alias tree='tree -C'
alias dots='cd ~/Source/dotfiles'

## XBPS
alias xi='sudo xbps-install'
alias xir='xi --repository'
alias xr='sudo xbps-remove'
alias xq='xbps-query'

## Git
alias gs='git status'
alias gb='git branch'
alias gc='git commit'
alias gp='git push'
alias ga='git add'
alias gd='git diff'
alias gl='git log'
alias glo='git log --oneline'
alias gco='git checkout'

# Cosmetic
printf "\n%s\n\n" "$(fortune -s wisdom)"
