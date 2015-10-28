.files
========

To automatically clone the repository and install the requirements (`git` and `pip`) use:

```bash
curl -fsSLO https://raw.githubusercontent.com/joshblum/dotfiles/master/bootstrap-install
bash bootstrap-install
source ~/.bash_profile
make packages # optionally install some basic packages
```

Alternatively, you can manually download and install by doing the following:

Installation
--------
```bash
git clone git@github.com:joshblum/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
make
source ~/.bash_profile
make packages # optionally install some basic packages
```


Note: .dotfiles uses [Dotbot](https://github.com/anishathalye/dotbot) for installation.

Note: For OSX [Homebrew](http://brew.sh/) must be installed:

```bash
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

Update
--------
Update all project submodules:

```bash
make update
```

Add plugins
--------

```bash
git submodule add [link_to_git_repository.git] vim/bundle/[plugin_name]
git add .
git commit -m "Installed [plugin_name] as a submodule."
```
