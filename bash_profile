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

if [ `uname` == "Darwin" ]; then
  export WORKON_HOME=$HOME/.virtualenvs
  export PATH=$PATH:$HOME/Library/Python/2.7/bin
  source /usr/local/bin/virtualenvwrapper.sh
else
  LOCAL_BIN=$HOME/.local/bin
  if [ -f $LOCAL_BIN/virtualenvwrapper.sh ]; then
    source $LOCAL_BIN/virtualenvwrapper.sh
    export PATH=$PATH:$LOCAL_BIN
  fi
fi


if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

if [ -f `which go 2>/dev/null` ]; then
  GOPATH=$HOME/go
  export GOPATH=$GOPATH
  mkdir -p $GOPATH
  if [ `uname` == "Darwin" ]; then
    export PATH=$PATH:/usr/local/opt/go/libexec/bin
  else
    export PATH=/usr/local/go/bin:$PATH
  fi
  export PATH=$PATH:$GOPATH/bin
fi

# Aliases
if [ `uname` == "Darwin" ]; then
  alias gwd="pwd | pbcopy" # get working directoy
  alias cwd="cd `pbpaste`" # change working directory
  export PATH="$HOME/.node/bin:$PATH"
fi
