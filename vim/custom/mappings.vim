" For those pesky :W errors...
command! W w
command! Wq wq
command! WQ wq
command! Q q

" Autoclosing braces
inoremap {<CR> {<CR>}<ESC>O

" Tab to switch windows in split
map <Tab> <C-W>w

" Press enter to autocomplete
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" map jj to escape
inoremap jj <Esc>
