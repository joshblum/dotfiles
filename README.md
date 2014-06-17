dotfiles
========

Installation
--------

    git clone git@github.com:joshblum/dotfiles.git ~/.vim

Initialize plugins:
--------

    cd ~/.vim
    ./init.sh


Add a plugin from a git repository   
--------

    git submodule add [link_to_git_repository.git] bundle/[plugin_name]
    git add .
    git commit -m "Installed [plugin_name] as a submodule."
