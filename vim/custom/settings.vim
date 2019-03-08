autocmd vimenter * NERDTree " open NERDTree automatically
set nocompatible " not vi compatible

set background=dark
colorscheme solarized

"------------------
" Syntax and indent
"------------------
syntax enable " turn on syntax highlighting
set showmatch " show matching braces when text indicator is over them
set regexpengine=1

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

" Make all spaces size 4, use spaces instead of tabs
set tabstop=4 shiftwidth=4 expandtab smarttab

set showcmd
set number " number lines

" Ignore case when doing regex searches, except if you capitalize explicitly
set ignorecase
set smartcase

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
