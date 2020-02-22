export EDITOR=vim

export GITAWAREPROMPT=~/.dotfiles/git-aware-prompt
source $GITAWAREPROMPT/main.sh

export PS1="[\t] \w\[$txtylw\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "
export SUDO_PS1="\[$bakred\]\u@\h\[$txtrst\] \w\$ "

if [ -S "$SSH_AUTH_SOCK" ] && [ ! -h "$SSH_AUTH_SOCK" ]; then
    ln -sf "$SSH_AUTH_SOCK" ~/.ssh/ssh_auth_sock
fi
export SSH_AUTH_SOCK=~/.ssh/ssh_auth_sock

export PATH=/usr/local/bin:/usr/local/sbin/$PATH:~/.local/bin

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

export PATH="/usr/local/opt/mysql@5.6/bin:$PATH"
export PATH="/usr/local/opt/node@12/bin:$PATH"
export PATH="/usr/local/opt/go@1.13/bin:$PATH"

source ~/.keybase.dev
source ~/.android.dev

export PATH="$HOME/.cargo/bin:$PATH"

if [ -f `which go 2>/dev/null` ]; then
  export GOPATH=$(go env GOPATH)
  export PATH=$PATH:$(go env GOPATH)/bin
  export CDPATH=.:$GOPATH/src/github.com:$GOPATH/src/golang.org:$GOPATH/src
fi

# Aliases
if [ `uname` == "Darwin" ]; then
  alias gwd="pwd | pbcopy" # get working directoy
  alias cwd="cd `pbpaste`" # change working directory
  alias cpr="gh pr create -web" # create pull request, open to browser
  export PATH="$HOME/.node/bin:$PATH"
fi

dcleanup(){
    docker rm -v $(docker ps --filter status=exited -q 2>/dev/null) 2>/dev/null
    docker rmi $(docker images --filter dangling=true -q 2>/dev/null) 2>/dev/null
}
export PATH="/usr/local/opt/python@3.8/bin:$PATH"
