alias reload!='. ~/.zshrc'

e() {
  gvim --servername vim --remote-silent "$@"
  # atom "$@"
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
  packer -S --noconfirm $1
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
alias h="history | tail -n 50"
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
alias i='packer --noconfirm'
# alias i='sudo yum -y install'
alias upd='packer -Syu --noconfirm'
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
alias pnig='while { true } { sleep 2; ping www.google.com  }'

# net() {
#     sudo systemctl restart netctl-auto@wlp7s0
#     while { true } { sleep 2; ping 'www.google.com' }
# }

alias source-xresources="xrdb ~/.Xresources"
alias ecs="gvim --servername vim -S"
alias ecb="gvim --servername vim -S -c 'set guifont=Liberation\ Mono\ for\ Powerline\ 15'"


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
alias sclint="tmux -2 new-session -s 'lint'"

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
# alias tg="~/dev/tg/bin/telegram-cli -l 1 -W"
alias w="which"
alias lock="i3lock -f -u -r 20"
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

alias dpl="fab deploy"
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
hash -d dl=~/Downloads

alias -s pdf=evince

send-res() {scp $1.* cluster:/home/werner/dev/prosub/ressources}
convert-to-wav() {ffmpeg -i $1.mp3 -acodec pcm_s16le -ar 16000 -ac 1 $1.wav}

sub() { ag -l $1 | xargs sed -i "s/$1/$2/g" }
ag-del() { ag -l "$@" | xargs sed -i "/$@/d" }
ag-foo() { ag -l "$@" }
upl() { scp $1.{wav,txt} uni:/informatik/isr/nats/projects/subtitling/resources }
ls-res() { ssh uni "ls /informatik/isr/nats/projects/subtitling/resources/*.wav" }
cpres() { "scp uni:/informatik/isr/nats/projects/subtitling/all_videos/data/$1.wav .  " }

alias goo='google-chrome-beta'

alias wrs="dbus-send --type=method_call --dest=org.workrave.Workrave /org/workrave/Workrave/Core org.workrave.CoreInterface.SetOperationMode string:'suspended'"
alias wrn="dbus-send --type=method_call --dest=org.workrave.Workrave /org/workrave/Workrave/Core org.workrave.CoreInterface.SetOperationMode string:'normal'"
alias wr='workrave >/dev/null &'
alias wr-s='workrave-stats'
run-prolog-main() { swipl -g "consult($1), main, halt" }

tg() {
  cd ~/dev/webogram
  node server.js &
}
alias copy='xclip -selection clipboard'
cpres() {
    # $1: icon folder, $2: icon name, $3: color
    formats=(drawable-hdpi drawable-mdpi drawable-xhdpi drawable-xxhdpi drawable-xxxhdpi)
    for format in $formats; do
        from=~/android-assets/material-design-icons/$1/$format/ic_$2_$3_24dp.png
        # to=~/AndroidStudioProjects/MMD/app/src/main/res/$format/
        to=~/AndroidStudioProjects/Metronome/app/src/main/res/$format/
        cp $from $to
    done
}

fres() {
    (cd ~/android-assets/material-design-icons/ && ag --smart-case --hidden -g $1)
}

alias hg="history | grep"
alias pull='(cd ~/veloyo && ./pull-all)'
alias ts="tig status"

alias es='$(ag * -l --nocolor -g . | selecta)'
# alias es='$(find * -type f | selecta)'

# let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
alias re-service='(cd ~/veloyo/service-web-client && pm2 flush & pm2 restart service-web-client); tmux select-window -t logs'
alias re-api='(cd ~/veloyo/api-server && pm2 flush & pm2 restart api-server); tmux select-window -t logs'
alias re-all='(cd ~/veloyo && pm2 flush & pm2 kill && pm2 start processes_sample.json); tmux select-window -t logs'
alias net-restart='nmcli n off & nmcli n on && ping'
alias glog='pretty-log'
alias pm2-logs-strict="pm2 logs --raw | bunyan --strict -c '!this.req'"
alias pm2-logs="pm2 logs --raw | bunyan -c '!this.req'"
alias pm2-logs-with-reqs="pm2 logs --raw | bunyan"
# pm2 logs --raw | bunyan --strict -c '!this.req'
alias automocha="supervisor -q -n exit -x npm test"

alias keys="cat $0 | jq '.apps[0].env'"
pm2-start-all() {
  pm2 start config/01-api-server.json
  pm2 start config/05-service-web-client.json
  pm2 start config/02-auth-server.json
  pm2 start config/04-admin.json
  pm2 start config/03-website.json
}
# alias diff-configs="fs=('01-api-server' '02-auth-server' '03-website' '04-admin' '05-service-web-client'); for f in $fs; do echo $f; echo '-------------'; colordiff -y <(cat config/$f.json | jq '.apps[0].env' | json -k) <(cat deployment/config/$f-int.json | jq '.apps[0].env' | json -k); done"
alias git-clean-remote='git remote prune origin'
