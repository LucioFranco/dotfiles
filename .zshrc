# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Theme
ZSH_THEME="garyblessington"
# avit robbyrussell frisk

plugins=(git common-aliases npm osx web-search)
# User configuration

# export MANPATH="/usr/local/man:$MANPATH"
source $ZSH/oh-my-zsh.sh

# Compilation flags
export ARCHFLAGS="-arch x86_64"

source $HOME/.os_config
source $HOME/.bash_aliases

# ssh
export SSH_KEY_PATH="~/.ssh/id_rsa.pub"

export PATH="$PATH:$HOME/bin"

export NVM_DIR="/Users/lucio/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
