# Path to your oh-my-zsh configuration.
# ZSH=$HOME/.oh-my-zsh

# ZSH_THEME="af-magic-my"

# plugins=(git git-flow git-flow-completion wd virtualenv)

# source $ZSH/oh-my-zsh.sh

unset SSH_ASKPASS

# Enable Ctrl-x-e to edit command line
autoload -U edit-command-line
# Emacs style
zle -N edit-command-line
bindkey '^xe' edit-command-line
bindkey '^x^e' edit-command-line


setopt auto_cd
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

# ------------------------------------------------------------------------------
# http://blog.patshead.com/2012/11/automatically-expaning-zsh-global-aliases---simplified.html
globalias() {
   if [[ $LBUFFER =~ ' [A-Z0-9]+$' ]]; then
     zle _expand_alias
   fi
   zle self-insert
}

zle -N globalias

bindkey " " globalias
bindkey "^ " magic-space           # control-space to bypass completion
bindkey -M isearch " " magic-space # normal space during searches
# ------------------------------------------------------------------------------

source <(npm completion)
