export EDITOR='vim'
export ZSH="/home/kees/.oh-my-zsh"
export SSH_KEY_PATH="~/.ssh/id_rsa"
export ANDROID_SDK_ROOT="/home/kees/Android/Sdk"

ZSH_THEME="robbyrussell"
DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(
  git
  zsh-autosuggestions
  colored-man-pages
  zsh-syntax-highlighting
  command-not-found
  sudo
)

source $ZSH/oh-my-zsh.sh
source ~/.dotfiles/scripts/aliases.sh

PATH="/home/kees/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/kees/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/kees/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/kees/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/kees/perl5"; export PERL_MM_OPT;

source ~/.dotfiles/scripts/path.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

