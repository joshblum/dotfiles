#! /bin/bash

die () {
    echo >&2 "$@"
    exit 1
}

_done() {
	printf "...done\n\n"
}

# Define a timestamp function
timestamp() {
  date +"%T"
}

backup() {
  src=$1
  dst=$2
  if [ -f $dst ]; then
    name="$dst-`timestamp`-bak"
    echo "Saving old $dst as $name"
    mv $dst "name"
  fi
  cp $src $dst
}

install() {
  echo "Starting installation..."
  echo "Installing autopep8"
  sudo pip install autopep8
  _done

  echo "Initializing submodules"
  git submodule init
  git submodule update
  _done

  echo "Copying vim, screen, and bash settings"
  backup vim/ ~/.vim
  backup vim/vimrc ~/.vimrc
  backup screenrc ~/.screenrc
  backup bash_profile ~/.bash_profile
  source ~/.bash_profile
  _done
}

clean() {
  echo "Cleaing old files..."
  files="~/.vim ~/.vimrc ~/.screenrc ~/.bash_profile"
  for f in $files;
  do
    name="$f-*-bak"
    echo "Removing $name"
    rm -rf $name
  done
}

usage() {
  echo "Usage: ./init.sh [install|clean]"
}

[ "$#" -eq 1 ] || die "1 argument required, $# provided"

if [ "$1"  == "install" ]; then
    install
elif [ "$1" ==  "clean" ]; then
    clean
else
  usage
fi
