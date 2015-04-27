set nocompatible " not vi compatible

set background=dark
colorscheme solarized

"------------------
" Syntax and indent
"------------------
syntax enable " turn on syntax highlighting
set showmatch " show matching braces when text indicator is over them

filetype on
filetype plugin indent on " enable file type detection
set autoindent

"---------------------
" Basic editing config
"---------------------
set tags=tags;/ " recursively search parent directory for tags
set list
set listchars=tab:\|\ ,trail:●,extends:>,precedes:<,nbsp:+

set backspace=indent,eol,start " allow backspacing over everything

set incsearch " incremental search (as string is being typed)
set hlsearch " highlight search

set laststatus=2
set statusline=%F%m%r%h%w\ (%{&ff}){%Y}\ [%l,%v][%p%%]

" Make all spaces size 2
set tabstop=2 shiftwidth=2 expandtab smarttab
set showcmd
set number " number lines

" Ignore case when doing regex searches, except if you capitalize explicitly
set ignorecase
set smartcase

set runtimepath^=~/.vim/bundle/ctrlp.vim
set autoread

set complete+=kspell

