# global variables
export EDITOR='nvim'
export PLAYER='ncmpcpp'
export SSH_KEY_PATH="~/.ssh/id_rsa"
export GPG_TTY=(tty)
export FZF_DEFAULT_COMMAND="fd -t file"
export HSTR_CONFIG=hicolor

# Go
set -gx GOPATH "$HOME/.go"

# scripts & helpers
source ~/.dotfiles/.config/fish/path.fish
source ~/.dotfiles/.config/fish/aliases.fish
source ~/.dotfiles/.config/fish/binds.fish

# Print system info
# afetch

# Starship
starship init fish | source
