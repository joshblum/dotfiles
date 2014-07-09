filetype on
set tags=tags;/ " recursively search parent directory for tags

set list
set listchars=tab:\|\ ,trail:●,extends:>,precedes:<,nbsp:+

set incsearch
" highlight search, but remove highlight after pressing enter
set hlsearch

set laststatus=2
set statusline=%F%m%r%h%w\ (%{&ff}){%Y}\ [%l,%v][%p%%]

" Make all spaces size 2, plus some other tricks
set tabstop=2 shiftwidth=2 expandtab smarttab
set nocompatible
set autoindent
set showcmd
set number 

" Ignore case when doing regex searches, except if you capitalize explicitly
set ignorecase
set smartcase

set runtimepath^=~/.vim/bundle/ctrlp.vim
set autoread

autocmd Filetype html,javascript setlocal ts=2 sts=2 sw=2
set pastetoggle=<F2>

".vimrc

map <c-f> :call JsBeautify()<cr>
" or
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>
