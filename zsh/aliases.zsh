alias reload!='. ~/.zshrc'
function o () {
xdg-open "$1" &> /dev/null &
}
function untar () {
tar -zxvf $1 
}
function f () {
ag --smart-case --hidden -g $1
}

alias path="echo $PATH | sed 's/\:/\n/g' | sort"
alias c="cd"
alias h="history"
alias cluster="ssh werner@cluster.wr.informatik.uni-hamburg.de"

# '[r]emove [o]rphans' - recursively remove ALL orphaned packages
alias pac-ro="/usr/bin/pacman -Qtdq >	 /dev/null && sudo /usr/bin/pacman -Rns \$(/usr/bin/pacman -Qtdq | sed -e ':a;N;\$!ba;s/\n/ /g')"
alias pac-orphans="yaourt -Q -td"
alias pac-recent="yaourt -Qe --date"
alias pac-search="yaourt -Qe --date | grep"

alias gs='git status'
alias rm='rm -I'
alias i='sudo packer --noconfirm'
alias I='sudo packer -S --noconfirm'
# alias i='sudo yum -y install'
alias upd='sudo yaourt -Syua --noconfirm'

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
alias ecs="gvim --servername vim -S Session.vim"
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


