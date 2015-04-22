.files
========

Installation
--------

    git clone git@github.com:joshblum/dotfiles.git ~/.dotfiles

Or:

    wget https://raw.githubusercontent.com/joshblum/dotfiles/master/install
    ./install

Initialization:
--------

    cd ~/.dotfiles
    make
    source ~/.bash_profile


Remove old backups
--------
    cd ~/.dotfiles
    make clean


Add plugins
--------

    git submodule add [link_to_git_repository.git] vim/bundle/[plugin_name]
    git add .
    git commit -m "Installed [plugin_name] as a submodule."
