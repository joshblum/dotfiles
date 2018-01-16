export EDITOR=vim

export GITAWAREPROMPT=~/.dotfiles/git-aware-prompt
source $GITAWAREPROMPT/main.sh

export PS1="\u@\h|[\t] \w\[$txtylw\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "
export SUDO_PS1="\[$bakred\]\u@\h\[$txtrst\] \w\$ "

if [ -S "$SSH_AUTH_SOCK" ] && [ ! -h "$SSH_AUTH_SOCK" ]; then
    ln -sf "$SSH_AUTH_SOCK" ~/.ssh/ssh_auth_sock
fi
export SSH_AUTH_SOCK=~/.ssh/ssh_auth_sock


if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

if [ -f `which go 2>/dev/null` ]; then
  export GOPATH=$(go env GOPATH)
  export PATH=$PATH:$(go env GOPATH)/bin
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
eval "$(pyenv virtualenv-init -)"

# Keybase webserver
export RUN_MODE=devel
export KEYBASE_RUN_MODE=devel
alias kb=$GOPATH/bin/keybase
