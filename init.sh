#! /bin/bash

_done() {
	printf "...done\n\n"
}

echo "Installing autopep8"
sudo pip install autopep8
_done

echo "Initializing submodules"
git submodule init
git submodule update
_done

echo "Copying vim, screen, and bash settings"
cp -R vim/ ~/.vim
cp vim/vimrc ~/.vimrc
cp screenrc ~/.screenrc
cp bash_profile ~/.bash_profile
source ~/.bash_profile
_done

source ~/.bash_profile

