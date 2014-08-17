alias reload!='. ~/.zshrc'
function m () {
mkdir $1 && cd $1
}
function o () {
xdg-open "$1" &> /dev/null &
}
function untar () {
tar -zxvf $1 
}
function f () {
ag --smart-case --hidden -g $1
}

orphans() {
  if [[ ! -n $(pkg-list_true_orphans) ]]; then
    echo "No orphans to remove."
  else
    sudo pacman -Rns $(pkg-list_true_orphans)
  fi
}

i-aur() {
  # install when not already installed
 # >/dev/null 2>&1 
  pacman -Q $1 || sudo packer -S --noconfirm $1
}

I() {
  echo $1 >> ~/.packages-manually-added
  sudo packer -S --noconfirm $1
}

vex-build() {
  if [ ! -f ~/.vex/builds/$1 ]; then 
    # normal case: no build file for pip exists in ~/.vex/builds/
    (cd ~/.virtualenvs && virtualenv2 $1 && $1/bin/pip install $1)
  else
    (cd ~/.virtualenvs && virtualenv2 $1 && $1/bin/pip install -r .vex/builds/$1)
  fi
  touch ~/.vex/.built/$1
}

vex-run() {
  # run, possibly install first
  (test -f ~/.vex/.built/$1 || vex-build $1) && vex $1 "$@"
}
vex-rm() {
  rm -r ~/.virtualenvs/$1
  rm -r ~/.vex/.built/$1
}

dot() {
  # symlink dotfile to repo and bootstrap
  var=$1
  mv $1 ~/.dotfiles/${var#.}.symlink && ~/.dotfiles/script/bootstrap
}
alias path="echo $PATH | sed 's/\:/\n/g' | sort"
alias c="cd"
alias h="history"
alias cluster="ssh werner@cluster.wr.informatik.uni-hamburg.de"

# '[r]emove [o]rphans' - recursively remove ALL orphaned packages
# remove orphans

alias pac-listaur="pacman -Qm"
alias pac-recent="yaourt -Qe --date"
alias pac-search="yaourt -Qe --date | grep"
# Pacman alias examples
alias pac-rem='sudo pacman -Rns'		# Remove the specified package(s), its configuration(s) and unneeded dependencies
alias pac-cleancache="sudo pacman -Scc"		# Clean cache - delete all not currently installed package files
alias paclf="pacman -Ql"		# List all files installed by a given package
alias pacexpl="pacman -D --asexp"	# Mark one or more installed packages as explicitly installed 
alias pacimpl="pacman -D --asdep"	# Mark one or more installed packages as non explicitly installed
alias pac-info="pacman -Qi"

alias gs='git status'
alias rm='rm -I'
alias i='sudo packer --noconfirm'
# alias i='sudo yum -y install'
alias upd='sudo packer -Syu --noconfirm'
alias u="sudo packages.py"
alias ue="gvim ~/.packages.md"
alias R='reload!'


alias ls='ls --color=auto -hX --group-directories-first -t'
alias ll='ls -o -hX --group-directories-first'
alias l.='ls -oa -hX --group-directories-first'
alias lss='ll | grep '
alias ..='cd ..'
alias ...='cd ../../..'
alias ....='cd ../../../..'
alias mkdir='mkdir -pv'


alias s-list='systemctl --type=service'
alias s-stop='sudo systemctl stop'
alias s-start='sudo systemctl start'
alias s-dis='sudo systemctl disable'
alias s-en='sudo systemctl enable'
alias s-restart='sudo systemctl daemon-reload'
alias s-failed='systemctl --failed'
alias s-all='systemctl --all'
#else {{{1

alias svim='sudoedit' 

alias unp="unp -U"
alias ping='ping www.google.com'
alias source-xresources="xrdb ~/.Xresources"
# alias e='vim'
alias e="gvim --servername vim --remote-silent"
alias ec="gvim --servername vim"
alias ecs="gvim --servername vim -S"
alias ed='gvim --servername vim --remote-send "<C-\><C-N>:cd `pwd`<CR>"'
alias vs='sf -e sudoedit'


#burn dvd
alias burniso-dvd='growisofs -dvd-compat -Z /dev/sr0=$1'

alias mouse-off='synclient TouchpadOff=1'
alias mouse-on='synclient TouchpadOff=0'


# misc abbrevs {{{1
# folders {{{1


# suffix aliases {{{1
alias -s pdf=zathura
alias -s txt=vim

# source ~/.funcs
alias notebook="ipython3 notebook"
alias clus="sshfs -o reconnect cluster:/home/werner/ ~/u/para/cluster/ ; cd ~/u/para/cluster/code"
alias clusc="cd ~/u/para/cluster/code"
alias clusclose="cd ~ ; fusermount -uz ~/u/para/cluster"
alias clustm="tmux -c 'ssh werner@cluster.wr.informatik.uni-hamburg.de'"
alias play="play2"
alias recent="ls -1t | head -10"
alias idea="~/bin/idea-IU-135.909/bin/idea.sh"
alias copykey="xclip -sel clip < ~/.ssh/id_rsa.pub"
alias mongo="~/bin/mongodb-linux-x86_64-2.6.1/bin/mongo"
alias tmux="tmux -2"
alias muxk="tmux kill-session -t"
alias vimprofile="gvim --startuptime vim.log && cat vim.log | sort -k 2"
alias dev="cd ~/dev"
alias session="tmux attach -t session"
alias sessioncreate="tmux new-session -s 'session'"

alias rake="noglob rake"

# -- docker --------------------------------------------------------------------
alias docker-run='docker run --rm -v $PWD:/REPL -w=/REPL -e="HOME=/REPL" -it'
alias Ds="docker search"

# -- docker based apps ---------------------------------------------------------
alias julia="docker-run ontouchstart/julia-master"
=======
alias D="docker run --rm -it"
alias docker-run="docker run --rm -v $PWD:/REPL -w=/REPL -e="HOME=/REPL" -it"
alias Ds="docker search"


# docker apps ------------------------------------------------------------------
alias julia="docker-run ontouchstart/julia-master" 


# -- vex -----------------------------------------------------------------------
alias fig="vex-run fig"




