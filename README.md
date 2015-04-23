.files
========

To automatically clone the repository and install the requirements (`git` and `pip`) use:

    wget https://raw.githubusercontent.com/joshblum/dotfiles/master/bootstrap-install
    bash bootstrap-install
    source ~/.bash_profile

Alternatively, you can manually download and install by doing the following:

Installation
--------

    git clone git@github.com:joshblum/dotfiles.git ~/.dotfiles
    cd ~/.dotfiles
    make
    source ~/.bash_profile


Note: .dotfiles uses [Dotbot](https://github.com/anishathalye/dotbot) for installation.
Add plugins
--------

    git submodule add [link_to_git_repository.git] vim/bundle/[plugin_name]
    git add .
    git commit -m "Installed [plugin_name] as a submodule."
