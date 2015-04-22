.files
========

To automatically clone the repository and install the requirements (`git` and `pip`) use:

    wget https://raw.githubusercontent.com/joshblum/dotfiles/master/install
    bash install
    source ~/.bash_profile
    
Alternatively, you can manually download and install by doing the following:

Installation
--------

    git clone git@github.com:joshblum/dotfiles.git ~/.dotfiles

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
