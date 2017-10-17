#!/usr/bin/env bash

set -e
PYENV=~/.pyenv
PYENV_VIRTUALENVWRAPPER=~/.pyenv/plugins/pyenv-virtualenvwrapper

if [ ! -d $PYENV ]; then
    git clone https://github.com/yyuu/pyenv.git $PYENV
fi
if [ ! -d $PYENV ]; then
    git clone https://github.com/yyuu/pyenv-virtualenvwrapper.git $PYENV_VIRTUALENVWRAPPER
fi
