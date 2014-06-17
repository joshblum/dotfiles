export GITAWAREPROMPT=~/.dotfile/.git-aware-prompt 

source $GITAWAREPROMPT/main.sh 

export PS1="\u@\h|[\t] \w\[$txtylw\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ " 

export SUDO_PS1="\[$bakred\]\u@\h\[$txtrst\] \w\$ "
