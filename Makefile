.PHONY: install default update packages

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

update:
	git submodule foreach git checkout master; git pull
