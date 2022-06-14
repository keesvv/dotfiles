# Prompt
. /usr/share/git/completion/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
export PS1='\w$(__git_ps1 " (%s)") \$ '

# Editor
export EDITOR=nvim
alias vi='$EDITOR'

# Handy
alias ls='ls --color'
alias l='ls -lA'

# Completion
complete -cf sudo
cmpldir=/usr/share/bash-completion/completions
. $cmpldir/git
. $cmpldir/systemctl
. $cmpldir/cargo

# Git
alias gs='git status'; __git_complete gs _git_status
alias gb='git branch'; __git_complete gb _git_branch
alias gc='git commit'; __git_complete gc _git_commit
alias gp='git push'; __git_complete gp _git_push
alias ga='git add'; __git_complete ga _git_add
alias gd='git diff'; __git_complete gd _git_diff
alias gf='git fetch -p'; __git_complete gf _git_fetch
alias gl='git log'; __git_complete gl _git_log
alias gr='git restore'; __git_complete gr _git_restore
alias grs='git restore --staged'; __git_complete grs _git_restore
alias glo='git log --oneline'; __git_complete glo _git_log
alias gco='git checkout'; __git_complete gco _git_checkout
