.PHONY: install default update

default: install

install:
	./install

update:
	git submodule foreach git checkout master; git pull
