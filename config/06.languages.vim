""""""""""""""""""""""""""""""
" => Languages config
""""""""""""""""""""""""""""""
" autocmd BufEnter,BufRead *.vue set filetype=vue.javascript

" Vue linter libs
let g:used_javascript_libs = 'vue,underscore'
let g:vue_disable_pre_processors=1

au Filetype php,python call TabSize4()
au Filetype html,javascript,css,scss,sass,vue call TabSize2()
