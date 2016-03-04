alias reload!='. ~/.zshrc'

title() {
  if [[ -z "$ORIG" ]]; then
    ORIG=$PS1
  fi
  TITLE="\[\e]2;$@\a\]"
  PS1=${ORIG}${TITLE}
}

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
ag --depth 3 --smart-case --hidden --follow -g "." | fzf -e
}

# fd() {
#   depth=$1 # supply depth or default = 3
#   find . -maxdepth ${depth:-3} -type d -print 2>/dev/null | fzf -e
# }

orphans() {
  if [[ ! -n $(pkg-list_true_orphans) ]]; then
    echo "No orphans to remove."
  else
    sudo pacman -Rns $(pkg-list_true_orphans)
  fi
}

I() {
  apacman -S --noconfirm $1
}
alias i='apacman --noconfirm'


# dot() {
#   # symlink dotfile to repo and bootstrap
#   var=$1
#   mv $1 ~/.dotfiles/${var#.}.symlink && ~/.dotfiles/script/bootstrap
# }

# alias path="echo $PATH | sed 's/\:/\n/g' | sort"
alias c="cd"
# alias h="history | tail -n 50"
alias h="history | tail -n 50"

alias gs='git status'
alias rm='trash-put'
# alias i='sudo yum -y install'
alias upd='sudo pacman-key --refresh-keys && apacman -Syu --progress --purgebuild --skiptest --noconfirm'
alias upd-noaur='apacman -Syu --noaur --progress --purgebuild --skiptest --noconfirm'
alias upd-aur='apacman -Syu --auronly --progress --purgebuild --skiptest --noconfirm'
alias R='reload!'

alias ls='ls --color=auto -hX --group-directories-first -t'
alias ll='ls -o -hX --group-directories-first'
alias ..='cd ..'
alias ...='cd ../../..'
alias ....='cd ../../../..'

alias pnig='while { true } { sleep 2; ping www.google.com  }'
alias ping='while { true } { sleep 2; ping www.google.com  }'

# alias mouse-off='synclient TouchpadOff=1'
# alias mouse-on='synclient TouchpadOff=0'

alias recent="ls -1t | head -30"
# alias copykey="xclip -sel clip < ~/.ssh/id_rsa.pub"
alias vimprofile="gvim --startuptime vim.log && cat vim.log | sort -k 2"

alias disk-usage="sudo du -h / 2> /dev/null | grep -P '^[0-9\.]+G'"
alias disk-usage-here="sudo du -hsx * | sort -rh | head -10"
alias w="which"
alias npmi="npm install --save --save-exact"
alias npmid="npm install --save-dev --save-exact"
alias npmig="sudo npm install -g"

# alias traffic='sudo nethogs wlp7s0'

alias ssh='sshrc'

# transfer() {
#   # tmpfile=$( mktemp -t transfer.XXX)
#   tmpfile=tmp
#   curl --progress-bar --upload-file $1 https://transfer.sh/$(basename $1) >> $tmpfile
#   cat $tmpfile;
#   cat $tmpfile | xclip
#   rm -f $tmpfile;
# }
# alias u=transfer

# sub() { ag -l $1 | xargs sed -i "s/$1/$2/g" }
# ag-del() { ag -l "$@" | xargs sed -i "/$@/d" }

alias goo='chromium'

alias copy='xclip -selection clipboard'
alias hg="history | grep"

alias net-restart='nmcli n off & nmcli n on && ping'

alias pm2-logs-strict="pm2 logs --raw | bunyan --strict -c '!this.req' -L -o short"
alias pm2-logs="pm2 logs --raw | bunyan -c '!this.req || this.err' -l info -L -o short"
alias pm2-logs-debug="pm2 logs --raw | bunyan -c '!this.req || this.err' -l debug -L -o short"
alias pm2-logs-trace="pm2 logs --raw | bunyan -c '!this.req || this.err' -l trace -L -o short"
alias pm2-logs-with-reqs="pm2 logs --raw | bunyan -L"

pm2-start-all() {
  pm2 start ~/veloyo/config-development/auth.json
  sleep 2
  pm2 start ~/veloyo/config-development/api.json
  pm2 start ~/veloyo/config-development/service.json
  pm2 start ~/veloyo/config-development/admin.json
  pm2 start ~/veloyo/config-development/website.json
  pm2 start ~/veloyo/config-development/partner.json
  pm2 start ~/veloyo/config-development/docs.json
}

pm2-start-all-debug() {
  pm2 start --node-args="--debug=7000" ~/veloyo/config-development/auth.json
  pm2 start --node-args="--debug-brk=7001" ~/veloyo/config-development/api.json
  pm2 start --node-args="--debug=7002" ~/veloyo/config-development/service.json
  pm2 start --node-args="--debug=7003" ~/veloyo/config-development/admin.json
  pm2 start --node-args="--debug=7004" ~/veloyo/config-development/website.json
  pm2 start --node-args="--debug=7005" ~/veloyo/config-development/partner.json
}

alias pm2-start-website="pm2 start ~/veloyo/config-development/website.json"
alias pm2-start-api="pm2 start ~/veloyo/config-development/api.json"
alias pm2-start-service="pm2 start ~/veloyo/config-development/service.json"
alias pm2-start-admin="pm2 start ~/veloyo/config-development/admin.json"
alias pm2-start-auth="pm2 start ~/veloyo/config-development/auth.json"
alias pm2-start-partner="pm2 start ~/veloyo/config-development/partner.json"
alias pm2-start-docs="pm2 start ~/veloyo/config-development/docs.json"

alias pm2-delete-website="pm2 delete ~/veloyo/config-development/website.json"
alias pm2-delete-api="pm2 delete ~/veloyo/config-development/api.json"
alias pm2-delete-service="pm2 delete ~/veloyo/config-development/service.json"
alias pm2-delete-admin="pm2 delete ~/veloyo/config-development/admin.json"
alias pm2-delete-auth="pm2 delete ~/veloyo/config-development/auth.json"
alias pm2-delete-partner="pm2 delete ~/veloyo/config-development/partner.json"
alias pm2-delete-docs="pm2 delete ~/veloyo/config-development/docs.json"

alias pm2-restart-website="pm2 restart ~/veloyo/config-development/website.json"
alias pm2-restart-api="pm2 restart ~/veloyo/config-development/api.json"
alias pm2-restart-service="pm2 restart ~/veloyo/config-development/service.json"
alias pm2-restart-admin="pm2 restart ~/veloyo/config-development/admin.json"
alias pm2-restart-auth="pm2 restart ~/veloyo/config-development/auth.json"
alias pm2-restart-partner="pm2 restart ~/veloyo/config-development/partner.json"
alias pm2-restart-docs="pm2 restart ~/veloyo/config-development/docs.json"
# alias diff-configs="fs=('01-api-server' '02-auth-server' '03-website' '04-admin' '05-service-web-client'); for f in $fs; do echo $f; echo '-------------'; colordiff -y <(cat config/$f.json | jq '.apps[0].env' | json -k) <(cat deployment/config/$f-int.json | jq '.apps[0].env' | json -k); done"

alias git-clean-remote='git remote prune origin'
alias loc="find . -type f | xargs wc -l | sort -k 1 -g"

# from sec 10 for 6 seconds
# ffmpeg -i input.mp3 -ss 10 -t 6 acodec copy output.mp3
# apacman - new wrapper

# calc stuff
= () {
    echo "$(($@))"
}
alias vim-update='vim -c "silent VAMUpdateActivated"'
# alias ag='ag --smart-case --hidden --follow'
# ag --js -g "." | xargs sed -i 's/pattern/replacement/'

alias pac='(cd /home/jwerner/prod/pac >/dev/null && npm start)'
alias prettyjson='python -m json.tool'
alias url="echo file://$(pwd)/$1"
alias weather="curl wttr.in"

# Use perl regexes for grepping
alias grep="grep -P"

# npm check updates
# npm-check-updates / ncu
alias rn-start="adb shell monkey -p com.veloyonative 1"
alias rn-reload="adb shell input keyevent 82 && sleep 0.3 && adb shell input keyevent 20 23"
alias rn-debug="adb shell input keyevent 82 && sleep 0.3 && adb shell input keyevent 20 20 23"
alias rn-menu="adb shell input keyevent 82"
alias rn-stop="adb shell am force-stop com.veloyonative"
# alias npm="pnpm"
alias g="git"
alias ws="nohup ~/bin/WebStorm-145.184.5/bin/webstorm.sh"
