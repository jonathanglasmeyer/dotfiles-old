sudo pacman -S git
sudo pacman -Rns libreoffice thunderbird 
sudo pacman -Rns thunderbird
sudo pacman -Rns xscreensaver
sudo pacman -Rns gnome-keyring

git clone https://github.com/jonathanewerner/dotfiles.git ~/.dotfiles
~/.dotfiles/script/bootstrap

rm -r ~/.config/xfce4
ln -s ~/.xfce4 ~/.config/xfce4

ln -s ~/.ranger ~/.config/ranger

sudo yaourt -S --noconfirm packer
sudo packer -Syu --noconfirm

#reboot
# ---- part 2 --------------
#FIX: hardcoded home dir in python script
#FIX: the following should be handled by the script
#FIX: packages.old shouldnt be in git
echo "" > ~/.packages.old
touch ~/.packages.old
~/.dotfiles/bin/packages.py

# remove packages
# icon packages
# only: 
# 	faenza flattr dark deco
# 	adwaita-manjaro-dark
# chromium

# oh-my-zsh
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh 
chsh -s $(which zsh)

# vim --------------------------------------------------------------------------
mkdir -p ~/.vim/autoload
curl -fLo ~/.vim/autoload/plug.vim \
    https://raw.github.com/junegunn/vim-plug/master/plug.vim

gvim -c PlugInstall
# TODO: make vim plugin changes persistent
# -- y mappings from fugitive and unimpaired
# TODO: use vim-plug install hook for youcomplete, write wrapper function
# TODO: ctrlp bookmarks cache dir-> repo

# TODO: ssh key
# TODO: workman -> repo
# TODO: xfce session settings
# TODO: autostart -> repo
# TODO: templates -> repo

# TODO: install vex
sudo pip2 install vex

mkdir ~/.virtualenvs

# TODO: chrome vim plugin dotfile

