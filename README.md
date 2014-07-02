.files
========

Installation
--------

    git clone git@github.com:joshblum/dotfiles.git ~/.dotfiles

Initialization:
--------

    cd ~/.dotfiles
    ./init.sh install


Remove old backups
--------
    cd ~/.dotfiles
    ./init.sh clean


Add plugins 
--------

    git submodule add [link_to_git_repository.git] vim/bundle[plugin_name]
    git add .
    git commit -m "Installed [plugin_name] as a submodule."
