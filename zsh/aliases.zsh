alias reload!='. ~/.zshrc'

e() {
  gvim --servername vim --remote-silent "$@"
}

m() {
  mkdir $1 && cd $1
}

#
n() {
  m ~/dev/$1 && git init && e README.md
}

o() {
  xdg-open "$1" &> /dev/null &
}

untar() {
  tar -zxvf $1
}

f() {
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

docker-remove-unused() {
  docker rmi $(docker images -q)
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
alias rm='trash-put'
alias i='sudo packer --noconfirm'
# alias i='sudo yum -y install'
alias upd='sudo packer -Syu --noconfirm'
alias R='reload!'


alias ls='ls --color=auto -hX --group-directories-first -t'
alias ll='ls -o -hX --group-directories-first'
alias l.='ls -oa -hX --group-directories-first'
alias lss='ll | grep '
alias ..='cd ..'
alias ...='cd ../../..'
alias ....='cd ../../../..'

alias s-list='systemctl --type=service'
alias s-stop='sudo systemctl stop'
alias s-start='sudo systemctl start'
alias s-dis='sudo systemctl disable'
alias s-en='sudo systemctl enable'
alias s-restart='sudo systemctl daemon-reload'
alias s-failed='systemctl --failed'
alias s-all='systemctl --all'
#else {{{1

alias ping='while { true } { sleep 2; ping www.google.com  }'
alias source-xresources="xrdb ~/.Xresources"
alias ecs="gvim --servername vim -S"


#burn dvd
alias burniso-dvd='growisofs -dvd-compat -Z /dev/sr0=$1'

alias mouse-off='synclient TouchpadOff=1'
alias mouse-on='synclient TouchpadOff=0'


# source ~/.funcs
alias notebook="ipython3 notebook"
alias clus="sshfs -o reconnect cluster:/home/werner/ ~/cluster/"
# fusermount -f path'
alias recent="ls -1t | head -10"
alias copykey="xclip -sel clip < ~/.ssh/id_rsa.pub"
alias tmux="tmux -2"
alias vimprofile="gvim --startuptime vim.log && cat vim.log | sort -k 2"
alias dev="cd ~/dev"
alias s="tmux attach -t session"
alias sc="tmux -2 new-session -s 'session'"

alias rake="noglob rake"

# -- docker --------------------------------------------------------------------
alias docker-run='docker run --rm -v $PWD:/REPL -w=/REPL -e="HOME=/REPL" -it'
alias Ds="docker search"

# -- docker based apps ---------------------------------------------------------
alias julia="docker-run ontouchstart/julia-master"
alias D="docker run --rm -it"
alias docker-run="docker run --rm -v $PWD:/REPL -w=/REPL -e="HOME=/REPL" -it"
alias Ds="docker search"


# docker apps ------------------------------------------------------------------
alias julia="docker-run ontouchstart/julia-master"


# -- vex -----------------------------------------------------------------------




alias disk-usage="sudo du -hsx * | sort -rh | head -10"
alias tg="~/dev/tg/bin/telegram-cli -l 1 -W"
alias w="which"
alias lock="i3lock-my"
alias npmi="npm install --save"
alias npmid="npm install --save-dev"
alias npmig="sudo npm install -g"


fix-zsh-history() {
  cd ~
  mv .zsh_history .zsh_history_bad
  strings .zsh_history_bad > .zsh_history
  fc -R .zsh_history
}
alias insync-status="insync get_sync_progress"

alias cmon="sudo !!"

alias dpl="fab push"
alias up="fab pull"

alias traffic='sudo nethogs wlp7s0'
# screen off
alias ssh='sshrc'

transfer() {
  # tmpfile=$( mktemp -t transfer.XXX)
  tmpfile=tmp
  curl --progress-bar --upload-file $1 https://transfer.sh/$(basename $1) >> $tmpfile
  cat $tmpfile;
  cat $tmpfile | xclip
  rm -f $tmpfile;
}
alias u=transfer
alias hg='history | grep'

#screen
alias beamer='xrandr --output VGA1 --auto'
alias so='sleep .1 && xset dpms force off'
alias snd='xrandr --output HDMI1 --auto --right-of LVDS1'
alias sng="~/.screenlayout/single.sh"


# python
py() {
  rootDir=$(git rev-parse --show-toplevel)
  $rootDir/.env/bin/python "$@"
}
ipy() {
  rootDir=$(git rev-parse --show-toplevel)
  $rootDir/.env/bin/ipython
}

p() {
  root=$(git rev-parse --show-toplevel)
  $root/.env/bin/pip "$@"
}


alias wifi-menu='sudo wifi-menu -o'


# sloccount --duplicates --details . | grep -v -e '.env' -e 'src-excerpts' -e 'g2p' -e 'data' > sloccount.sc
alias cc='cd $(git rev-parse --show-toplevel)'
alias -g NULL='>/dev/null'
alias -g G='| grep -i '

alias -s pdf=evince

send-res() {scp $1.* cluster:/home/werner/dev/prosub/ressources}
convert-to-wav() {ffmpeg -i $1.mp4 -acodec pcm_s16le -ar 16000 -ac 1 $1.wav}

sub() { ag -l $1 | xargs sed -i "s/$1/$2/g" }
upl() { scp $1.{wav,txt} uni:/informatik/isr/nats/projects/subtitling/resources }
ls-res() { ssh uni "ls /informatik/isr/nats/projects/subtitling/resources/*.wav" }

alias goo='google-chrome-stable'

alias wr-kill='killall workrave'
alias wr='workrave &'
alias wr-s='workrave-stats'
run-prolog-main() { swipl -g "consult($1), main, halt" }

