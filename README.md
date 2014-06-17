dotfiles
========

Installation
--------

    git clone git@github.com:joshblum/dotfiles.git ~/.dotfiles

Initialize plugins:
--------

    cd ~/.dotfiles
    ./init.sh


Add a plugin from a git repository   
--------

    git submodule add [link_to_git_repository.git] vim/bundle[plugin_name]
    git add .
    git commit -m "Installed [plugin_name] as a submodule."
