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
if [ $TERM != linux ]
then
    export STARSHIP_CONFIG=~/.config/starship/starship_symbols.toml
else
    export STARSHIP_CONFIG=~/.config/starship/starship.toml
fi

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
alias rerc="clear && source $HOME/.zshrc"
alias nvimrc='cd ~/.config/nvim/ && clear && nvim .'
alias la='ls -a'
alias lh='ls -lh'
alias lah='ls -lah'
alias duoc="cd $HOME/hdd_home/duoc"
alias mysqls="sudo systemctl start mysqld"
alias dbstatus="sudo systemctl status mysqld"
alias config="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

pfetch


