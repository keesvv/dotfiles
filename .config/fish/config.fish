# global variables
export EDITOR='micro'
export SSH_KEY_PATH="~/.ssh/id_rsa"
export GPG_TTY=(tty)
export FZF_DEFAULT_COMMAND="fd -t file"
export HSTR_CONFIG=hicolor

# scripts & helpers
source ~/.dotfiles/.config/fish/path.fish
source ~/.dotfiles/.config/fish/aliases.fish

# bindings
# bindkey -s "\C-r" "hh -- \C-j"     # bind hstr to Ctrl-r (for Vi mode check doc)

# Print system info
afetch
