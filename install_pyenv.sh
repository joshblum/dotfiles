#!/usr/bin/env bash

set -e
PYENV=~/.pyenv
PYENV_VIRTUALENVWRAPPER=~/.pyenv/plugins/pyenv-virtualenvwrapper

if [ ! -d $PYENV ]; then
    git clone https://github.com/yyuu/pyenv.git $PYENV
fi
if [ ! -d $PYENV_VIRTUALENVWRAPPER ]; then
    git clone https://github.com/yyuu/pyenv-virtualenvwrapper.git $PYENV_VIRTUALENVWRAPPER
fi

PYTHON_VERSION=3.5.4
pyenv install --skip-existing $PYTHON_VERSION
pyenv global $PYTHON_VERSION
