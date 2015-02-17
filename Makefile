.PHONY: install clean default

default: install

install:
	./configure install

clean:
	./configure clean
