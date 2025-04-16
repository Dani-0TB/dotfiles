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

# starship

STARSHIP_RC=$HOME/.config/starship/starship_symbols.toml

if [[ "$TERM" == "linux" ]];
then
    STARSHIP_RC=$HOME/.config/starship/starship.toml
elif [[ "$TERM" == "xterm" ]];
then
    STARSHIP_RC=$HOME/.config/starship/starship.toml
fi

export STARSHIP_CONFIG=$STARSHIP_RC

eval "$(starship init zsh)"

#rust
. "$HOME/.cargo/env"

# nvim as manpager
export MANPAGER="nvim +Man!"

# pfetch config
export PF_INFO="ascii title os host kernel uptime pkgs memory editor palette"

# Editor "the correct one"
export EDITOR="nvim"

# Set aliases
alias ls="ls --color"
alias rerc="clear && source $HOME/.zshrc"
alias nvimrc='cd ~/.config/nvim/ && clear && nvim .'
alias la='ls -a'
alias lh='ls -lh'
alias lah='ls -lah'
alias duoc="cd $HOME/hdd_home/duoc"
alias mysqls="sudo systemctl start mysqld"
alias dbstatus="sudo systemctl status mysqld"
alias config="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# nethack
export PATH=$PATH:$HOME/nh/install/games

# Dwarf Fortress
export PATH=$PATH:$HOME/.local/share/games/DwarfFortress/

pfetch
