" autopep8
let g:autopep8_disable_show_diff=1
let g:autopep8_indent_size=4

" NERDTree
let NERDTreeShowHidden=1

" go-vim
let g:go_fmt_fail_silently = 1
let g:go_disable_autoinstall = 1
let g:go_fmt_command = "goimports"

" ctrlp
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
let g:ctrlp_clear_cache_on_exit = 0
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)\|vendor\|node_modules$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

" vim-clang-format
let g:clang_format#code_style = 'chromium'
autocmd FileType c,cpp,cc ClangFormatAutoEnable
