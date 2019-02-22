# Path to your oh-my-zsh installation.
#export ZSH=$HOME/.oh-my-zsh

export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

# Theme
ZSH_THEME="garyblessington"
# avit robbyrussell frisk

#plugins=(git common-aliases npm osx web-search)
# User configuration

zplug "plugins/git", from:oh-my-zsh
zplug "themes/garyblessington", from:oh-my-zsh
zplug "mafredri/zsh-async", from:github
zplug "plugins/asdf", from:oh-my-zsh
zplug "plugins/common-aliases",   from:oh-my-zsh
zplug "rupa/z", use:z.sh
zplug "zdharma/fast-syntax-highlighting", defer:2
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-history-substring-search"
zplug "plugins/ssh-agent", from:oh-my-zsh



# Changing/making/removing directory
setopt auto_pushd
setopt pushd_ignore_dups
setopt pushdminus

alias -g ...='../..'
alias -g ....='../../..'
alias -g .....='../../../..'
alias -g ......='../../../../..'

alias -- -='cd -'
alias 1='cd -'
alias 2='cd -2'
alias 3='cd -3'
alias 4='cd -4'
alias 5='cd -5'
alias 6='cd -6'
alias 7='cd -7'
alias 8='cd -8'
alias 9='cd -9'

alias md='mkdir -p'
alias rd=rmdir
alias d='dirs -v | head -10'

# List directory contents
alias lsa='ls -lah'
alias l='ls -lah'
alias ll='ls -lh'
alias la='ls -lAh'

fpath=(/usr/local/share/zsh-completions $fpath)

autoload -Uz compinit
compinit

unsetopt PROMPT_SP

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/id_rsa.pub"

export PATH="$PATH:$HOME/bin"


# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load

export GPG_TTY=$(tty)

zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'

# Zsh history substring config
bindkey -M emacs '^P' history-substring-search-up
bindkey -M emacs '^N' history-substring-search-down

##############################################################################
# History Configuration
##############################################################################
HISTSIZE=5000               #How many lines of history to keep in memory
HISTFILE=~/.zsh_history     #Where to save history to disk
SAVEHIST=5000               #Number of history entries to save to disk
HISTDUP=erase               #Erase duplicates in the history file
setopt    appendhistory     #Append history to the history file (no overwriting)
setopt    sharehistory      #Share history across terminals
setopt    incappendhistory  #Immediately append to the history file, not just when a term is killed
setopt    HIST_IGNORE_ALL_DUPS #For each new command, remove older command if dup
setopt    HIST_EXPIRE_DUPS_FIRST #If history needs to be trimmed, remove dups first

source $HOME/.os_config
source $HOME/.bash_aliases
