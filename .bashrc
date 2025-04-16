# .bashrc

# Set aliases
alias rerc="source $HOME/.bashrc"
alias nvimrc='cd ~/.config/nvim/'
alias la='ls -a'
alias lh='ls -lh'
alias lah='ls -lah'
alias startfm="bash $HOME/repos/duoc/ferremas/start.sh"
alias duoc="cd $HOME/hdd_home/duoc"
alias stmysql="sudo systemctl start mysqld"
alias dbstatus="sudo systemctl status mysqld"

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

# fnm
export PATH="/home/dani0tb/.local/share/fnm:$PATH"
eval "`fnm env --use-on-cd`" . "$HOME/.cargo/env"

# starship

if [ $TERM != linux ]
then
    export STARSHIP_CONFIG=~/.config/starship/starship_symbols.toml
else
    export STARSHIP_CONFIG=~/.config/starship/starship.toml
fi

eval "$(starship init bash)"

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

#games
export PATH=$PATH:/usr/games

pfetch
