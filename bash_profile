export EDITOR=vim

export GITAWAREPROMPT=~/.dotfiles/git-aware-prompt
source $GITAWAREPROMPT/main.sh

export PS1="\u@\h|[\t] \w\[$txtylw\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "
export SUDO_PS1="\[$bakred\]\u@\h\[$txtrst\] \w\$ "

if [ -S "$SSH_AUTH_SOCK" ] && [ ! -h "$SSH_AUTH_SOCK" ]; then
    ln -sf "$SSH_AUTH_SOCK" ~/.ssh/ssh_auth_sock
fi
export SSH_AUTH_SOCK=~/.ssh/ssh_auth_sock
if [ `uname` == "Darwin" ]; then
  source /usr/local/bin/virtualenvwrapper.sh
else
  LOCAL_BIN=$HOME/.local/bin
  source $LOCAL_BIN/virtualenvwrapper.sh
  export PATH=$PATH:$LOCAL_BIN
fi

export PATH='/usr/local/bin:$PATH'

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

if [ -f `which go` ]; then
  GOPATH=$HOME/go
  export $GOPATH
  mkdir $GOPATH
  export PATH='$PATH:$GOPATH/bin'
fi
