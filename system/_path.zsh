export PATH=".env/bin:./bin:/usr/local/bin:/usr/local/sbin:$ZSH/bin:$PATH"
export MANPATH="/usr/local/man:/usr/local/mysql/man:/usr/local/git/man:$MANPATH"

path+=('/home/jwerner/bin')
# path+=('/home/jwerner/bin/jdk1.8.0_20/bin/')
path+=('/home/jwerner/bin/android-studio/bin')
path+=('/home/jwerner/Android/Sdk/platform-tools')
path+=('/home/jwerner/Android/Sdk/tools')
path+=('/home/jwerner/bin/android-studio/sdk/tools')
path+=('/home/jwerner/bin/android-studio/sdk/platform-tools')


# own tools
path+=('/home/jwerner/dev/workrave-stats')
path+=('/home/jwerner/dev/loc')
path+=('/home/jwerner/prod/.bin')

# pipsi
path+=('/home/jwerner/.local/bin')

# crosswalk
path+=('/home/jwerner/bin/crosswalk-15.43.351.0')

# cordova crosswalk canary
path+=('/home/jwerner/bin/crosswalk-cordova-15.43.351.0-arm/bin')


path+=('/home/jwerner/.nimble/bin')

path+=('/home/jwerner/bachelor/bin')

# veloyo
path+=('/home/jwerner/veloyo/tooling')

export PATH

export PATH="/home/jwerner/bin/haskell/elm/.cabal-sandbox/bin:$PATH"
export ELM_HOME="/home/jwerner/bin/haskell/elm/.cabal-sandbox/share"

export NVM_DIR="/home/jwerner/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
