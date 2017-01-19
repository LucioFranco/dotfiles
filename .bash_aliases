alias g='git status'
alias gc='git commit'
alias gca='git commit -a'
alias gp='git pull'
alias gco='git checkout'
alias gf='git fetch'
alias gb='git branch'
alias gd='git diff --color=always | less -r'
alias gdc='git diff --cached --color=always | less -r'
alias gcp='git cherry-pick'

alias ll='ls -l'

function e() {
    emacs -nw -q $1 $2 $3
}

function es() {
    emacs -nw $1 $2 $3
}

function se() {
    sudo emacs -nw -q $1 $2 $3
}

export EDITOR="emacs -q -nw"