# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

# Theme
ZSH_THEME="garyblessington"
# avit robbyrussell frisk

plugins=(git common-aliases npm osx web-search)
# User configuration

zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-history-substring-search"

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

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load
