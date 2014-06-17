colorscheme desert

" Make all spaces size 2, plus some other tricks
set tabstop=2 shiftwidth=2 expandtab smarttab
set nocompatible
set autoindent
set showcmd
set number 
" Ignore case when doing regex searches, except if you capitalize explicitly
set ignorecase
set smartcase

" map ii to escape
inoremap ii <Esc>
nnoremap IIII <Nop>

set incsearch
" highlight search, but remove highlight after pressing enter
set hlsearch
nnoremap <CR> :noh<CR><CR>

set laststatus=2
set statusline=%F%m%r%h%w\ (%{&ff}){%Y}\ [%l,%v][%p%%]

filetype off
filetype plugin indent off
" Go syntax
set runtimepath+=$GOROOT/misc/vim
filetype plugin indent on
syntax on

" Tab to switch windows in split
map <Tab> <C-W>w

" Press enter to autocomplete
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

"Pathogen
execute pathogen#infect()
call pathogen#helptags() " generate helptags for everything in ‘runtimepath’

set runtimepath^=~/.vim/bundle/ctrlp.vim
set autoread
