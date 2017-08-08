" For those pesky :W errors...
command! W w
command! Wq wq
command! WQ wq
command! Q q

nnoremap <CR> :noh<CR><CR> " remove highlight after pressing enter

" Autoclosing braces
inoremap {<CR> {<CR>}<ESC>O

" Tab to switch windows in split
map <Tab> <C-W>w

" map jj to escape
inoremap jj <Esc>

" autoformatting
noremap <F3> :Autoformat<CR><CR>

"------------------------------------------
" Beautify scripts and syntax highlighting
"------------------------------------------
autocmd Filetype html,javascript,json setlocal ts=2 sts=2 sw=2
set pastetoggle=<F2>

map <c-f> :call JsBeautify()<cr>
" or
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>
" for json
autocmd FileType json noremap <buffer> <c-f> :call JsonBeautify()<cr>

au BufNewFile,BufRead *.go set ft=go
au BufNewFile,BufRead *.cl  setf opencl " OpenCL

autocmd BufNewFile,BufRead *.tex set makeprg=pdflatex\ %\ &&\ open\ %:r.pdf " latex
autocmd FileType python noremap <buffer> <F8> :call Autopep8()<CR>
