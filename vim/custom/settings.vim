autocmd vimenter * NERDTree " open NERDTree automatically
set nocompatible " not vi compatible

set background=dark
colorscheme solarized

"------------------
" Syntax and indent
"------------------
syntax on " turn on syntax highlighting
set showmatch " show matching braces when text indicator is over them
set regexpengine=1

" Disable the default Vim startup message.
set shortmess+=I

filetype on
filetype plugin indent on " enable file type detection
set autoindent

"---------------------
" Basic editing config
"---------------------
set tags=tags;/ " recursively search parent directory for tags
set list
set listchars=tab:\|\ ,trail:●,extends:>,precedes:<,nbsp:+

" The backspace key has slightly unintuitive behavior by default. For example,
" by default, you can't backspace before the insertion point set with 'i'.
" This configuration makes backspace behave more reasonably, in that you can
" backspace over anything.
set backspace=indent,eol,start

" Enable searching as you type, rather than waiting till you press enter.
set incsearch
set hlsearch " highlight search

" Always show the status line at the bottom, even if you only have one window open.
set laststatus=2
set statusline=%F%m%r%h%w\ (%{&ff}){%Y}\ [%l,%v][%p%%]

" Make all spaces size 4, use spaces instead of tabs
set tabstop=4 shiftwidth=4 expandtab smarttab

set showcmd
set number " number lines

" Ignore case when doing regex searches, except if you capitalize explicitly
set ignorecase
set smartcase

" Disable audible bell because it's annoying.
set noerrorbells visualbell t_vb=

set runtimepath^=~/.vim/bundle/ctrlp.vim
set autoread

set spell

set complete+=kspell
autocmd filetype crontab setlocal nobackup nowritebackup
autocmd BufNewFile,BufRead *.{template,webflow} set syntax=html
autocmd BufNewFile,BufRead *.vcl set filetype=vcl
autocmd BufNewFile,BufRead *.iced set filetype=coffee
autocmd BufRead,BufNewFile *.avdl setlocal filetype=avro-idl

autocmd Filetype coffee setlocal ts=2 sw=2 sts=0 expandtab

let coffee_compiler = 'iced'
let g:typescript_indent_disable = 1
