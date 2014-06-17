syntax on
colorscheme desert

execute pathogen#infect()
call pathogen#helptags() " generate helptags for everything in ‘runtimepath’

filetype plugin indent on

source $HOME/.vim/custom/mappings.vim
source $HOME/.vim/custom/plugins.vim
source $HOME/.vim/custom/settings.vim

