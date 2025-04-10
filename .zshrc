# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/dani0tb/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
. "/home/dani0tb/.deno/env"

# starship
if [ $TERM != linux ]
then
    export STARSHIP_CONFIG=~/.config/starship/starship_symbols.toml
else
    export STARSHIP_CONFIG=~/.config/starship/starship.toml
fi

eval "$(starship init zsh)"

#fnm
export PATH="/home/dani0tb/.local/share/fnm:$PATH"
eval "$(fnm env --use-on-cd --shell zsh)"

#rust
. "$HOME/.cargo/env"

# dotnet
export DOTNET_ROOT=$HOME/.dotnet
export PATH=$PATH:$DOTNET_ROOT:$DOTNET_ROOT/tools

#commander x16
export X16_ROOT=$HOME/.local/share/x16emu
export PATH=$PATH:$X16_ROOT

# intelliJ Idea Community
export IDEA_PATH=$HOME/.local/share/idea-IC/bin
export PATH=$PATH:$IDEA_PATH

# Postman
export POSTMAN_PATH=$HOME/programs/Postman
export PATH=$PATH:$POSTMAN_PATH

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH=$BUN_INSTALL/bin:$PATH
. "/home/dani0tb/.deno/env"

# nvim as manpager
export MANPAGER="nvim +Man!"

# Go Lang
export PATH=$PATH:/usr/local/go/bin
export GOPATH="$HOME/.go"
export PATH="$PATH:$GOPATH/bin"

# pfetch config
export PF_INFO="ascii title os host kernel uptime pkgs memory editor palette"

# Editor "the correct one"
export EDITOR="nvim"

# Set aliases
alias rerc="clear && source $HOME/.zshrc"
alias nvimrc='cd ~/.config/nvim/ && clear && nvim .'
alias la='ls -a'
alias lh='ls -lh'
alias lah='ls -lah'
alias duoc="cd $HOME/hdd_home/duoc"
alias mysqls="sudo systemctl start mysqld"
alias dbstatus="sudo systemctl status mysqld"
alias config="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"

pfetch
