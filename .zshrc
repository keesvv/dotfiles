if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export EDITOR='vim'
export ZSH="/home/kees/.oh-my-zsh"
export SSH_KEY_PATH="~/.ssh/id_rsa"

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

source ~/.zplug/init.zsh
source ~/.dotfiles/scripts/aliases.sh
source ~/.dotfiles/scripts/path.sh

zplug "plugins/colored-man-pages", from:oh-my-zsh
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-history-substring-search"
zplug "romkatv/powerlevel10k", as:theme, depth:1

if ! zplug check --verbose; then
    zplug install
fi

zplug load

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' menu select

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

