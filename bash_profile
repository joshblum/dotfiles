export EDITOR=vim

export GITAWAREPROMPT=~/.dotfiles/git-aware-prompt
source $GITAWAREPROMPT/main.sh

export PS1="\u@\h|[\t] \w\[$txtylw\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "
export SUDO_PS1="\[$bakred\]\u@\h\[$txtrst\] \w\$ "

if [ -S "$SSH_AUTH_SOCK" ] && [ ! -h "$SSH_AUTH_SOCK" ]; then
    ln -sf "$SSH_AUTH_SOCK" ~/.ssh/ssh_auth_sock
fi
export SSH_AUTH_SOCK=~/.ssh/ssh_auth_sock

export PATH=/usr/local/bin:/usr/local/sbin/$PATH:~/.local/bin
export WORKON_HOME=$HOME/.virtualenvs
DEFAULT_VIRTUALENV_WRAPPER=/usr/local/bin/virtualenvwrapper.sh

if [ `uname` == "Darwin" ]; then
  source $DEFAULT_VIRTUALENV_WRAPPER
else
  LOCAL_BIN=$HOME/.local/bin
  if [ -f $LOCAL_BIN/virtualenvwrapper.sh ]; then
    source $LOCAL_BIN/virtualenvwrapper.sh
    export PATH=$PATH:$LOCAL_BIN
  else
      source $DEFAULT_VIRTUALENV_WRAPPER
  fi
fi


if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

if [ -f `which go 2>/dev/null` ]; then
  export GOPATH=$(go env GOPATH)
  export PATH=$PATH:$(go env GOPATH)/bin
  export CDPATH=.:$GOPATH/src/github.com:$GOPATH/src/golang.org:$GOPATH/src
fi

# Aliases
if [ `uname` == "Darwin" ]; then
  alias gwd="pwd | pbcopy" # get working directoy
  alias cwd="cd `pbpaste`" # change working directory
  export PATH="$HOME/.node/bin:$PATH"
fi

dcleanup(){
    docker rm -v $(docker ps --filter status=exited -q 2>/dev/null) 2>/dev/null
    docker rmi $(docker images --filter dangling=true -q 2>/dev/null) 2>/dev/null
}

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

source ~/.keybase.dev
source ~/.android.dev
