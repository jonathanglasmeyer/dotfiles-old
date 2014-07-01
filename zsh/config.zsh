# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(git wd)

source $ZSH/oh-my-zsh.sh

unset SSH_ASKPASS

# Enable Ctrl-x-e to edit command line
autoload -U edit-command-line
# Emacs style
zle -N edit-command-line
bindkey '^xe' edit-command-line
bindkey '^x^e' edit-command-line


# setopt auto_cd
# setopt autopushd
setopt completealiases
setopt HIST_IGNORE_DUPS

# cdpath=(~/.vim ~/C $HOME $HOME/dev $HOME/u)

function chpwd() {
    emulate -L zsh
    ls -t
    echo "$PWD" > ~/.cwd;
}
export cd  
alias cwd='cd "$(cat ~/.cwd)"'  

# eval `dircolors ~/.dircolors/dircolors.ansi-dark`

# cwd
