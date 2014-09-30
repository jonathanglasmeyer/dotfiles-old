export EDITOR=gvim
export CHROME_BIN="/usr/bin/google-chrome-stable"
# for xfce terminal 256 colors
export TERM=xterm-256color

# Setting ag as the default source for fzf
# export FZF_DEFAULT_COMMAND='ag -l -g ""'
export BROWSER="google-chrome-stable"

# PATH
path+=('/home/jwerner/bin')
path+=('/home/jwerner/.dotfiles/bin')
path+=('/home/jwerner/.cabal/bin')
PATH=.virtualenv/bin:.env/bin:~/.docker:.cabal-sandbox/bin:$PATH
export PATH="$HOME/.rbenv/bin:$PATH"

