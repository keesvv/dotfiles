# global variables
export EDITOR='nvim'
export PLAYER='ncmpcpp'
export SSH_KEY_PATH="~/.ssh/id_rsa"
export GPG_TTY=(tty)
export FZF_DEFAULT_COMMAND="fd -t file"
export HSTR_CONFIG=hicolor
export LUA_CPATH='./?.so;/usr/lib64/lua/5.1/?.so;/usr/lib64/lua/5.1/loadall.so;/home/kees/.luarocks/lib/lua/5.1/?.so;/usr/share/lua/5.1/lib/lua/5.1/?.so'
export LUA_PATH='/usr/share/lua/5.1/?.lua;./?.lua;/usr/share/lua/5.1/?/init.lua;/usr/lib64/lua/5.1/?.lua;/usr/lib64/lua/5.1/?/init.lua;/home/kees/.luarocks/share/lua/5.1/?.lua;/home/kees/.luarocks/share/lua/5.1/?/init.lua;/usr/share/lua/5.1/share/lua/5.1/?.lua;/usr/share/lua/5.1/share/lua/5.1/?/init.lua'
export SUDO_PROMPT=' Password: '

# Go
set -gx GOPATH "$HOME/.go"

# scripts & helpers
source ~/.dotfiles/.config/fish/path.fish
source ~/.dotfiles/.config/fish/aliases.fish
source ~/.dotfiles/.config/fish/binds.fish

# Starship
starship init fish | source

# Print system info
#afetch

if status is-login
    source ~/.dotfiles/.config/fish/login.fish
end
