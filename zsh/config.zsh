# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

ZSH_THEME="af-magic"

plugins=(git wd virtualenv)

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

# ---------- vex --------------------
## zsh needs this option set to use $(virtualenv_prompt)
# setopt prompt_subst

# function virtualenv_prompt() {
#     if [ -n "$VIRTUAL_ENV" ]; then
#         echo "(${VIRTUAL_ENV##*/}) "
#     fi
#globalias() {

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

