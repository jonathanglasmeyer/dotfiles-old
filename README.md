dotfiles
========

this is my dotfile repo, managed with [zack holmans dotfile management method](https://github.com/holman/dotfiles).

features:
 - idempotent [arch/aur-installation script](https://github.com/jonathanewerner/dotfiles/blob/master/bin/packages.py) (specify packages that should be installed in `~/.package.md`; run installation with alias `u`. if you remove packages from file, they will be uninstalled.)
 - topically ordered vim config
 - automatic setting-files for vim plugins (press enter in normalmode in the [plugin file](https://github.com/jonathanewerner/dotfiles/blob/master/vim/plugins.vim). this will create a settingfile for plugin under cursor and also autosource this file on vim-startup. great for less cruft in vimrc, and also easier removal of config stuff for plugins you no longer use)
 - normal mode vim bindings for workman layout (see [here](https://github.com/jonathanewerner/dotfiles/blob/master/vim/mappingsNormal.vim))
 - auto install python-pip packages in virtualenv with [vex](https://pypi.python.org/pypi/vex). (see [alias fig](https://github.com/jonathanewerner/dotfiles/blob/master/zsh/aliases.zsh) for example)
 - use gvim in servermode (open files in existing session) with aliases `ec` ([e]ditor [c]reate) and `e` ([e]dit)
 - autocreate project/folder-specific tmux sessions and auto switch to them on vim file open. superduper handy. (see `/bin/mx` and `RunMx()` in `vim/functions.vim` and autocmd in `vim/filetypeSpecificSettings.vim`)
  
