.PHONY: install \
	packages \
	update

default: install

install:
	./install

packages:
ifeq ('$(shell uname)', 'Darwin')
	brew update
	cat packages-osx.txt | xargs brew install
else
	sudo apt-get update
	cat packages.txt | xargs sudo apt-get -y install
endif

submodule-update:
	git submodule foreach git checkout master
	git submodule foreach git pull --rebase origin master
