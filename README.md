dotfiles
========

this is my dotfile repo, managed with [zack holmans dotfile management method](https://github.com/holman/dotfiles).

some features:
 - heavily modularized vim config
 - - automatic setting-files for vim plugins (press enter in normalmode in the [plugin file](https://github.com/jonathanewerner/dotfiles/blob/master/vim/plugins.vim). this will create a settingfile for plugin under cursor and also autosource this file on vim-startup. great for less cruft in vimrc, and also easier removal of config stuff for plugins you no longer use)
 - normal mode vim bindings for workman layout (see [here](https://github.com/jonathanewerner/dotfiles/blob/master/vim/mappingsNormal.vim))
 - use gvim in servermode (open files in existing session) with aliases `ec` ([e]ditor [c]reate) and `e` ([e]dit)
 - autocreate project/folder-specific tmux sessions and auto switch to them on vim file open. changes everything :). (see `/bin/mx` and `RunMx()` in `vim/functions.vim` and autocmd in `vim/filetypeSpecificSettings.vim`)
 - ...
