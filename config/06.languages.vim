"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Languages config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

function! s:tab_4()
  set tabstop=4
  set softtabstop=4
  set shiftwidth=4
endfunction

function! s:tab_2()
  set tabstop=2
  set softtabstop=2
  set shiftwidth=2
endfunction

let g:used_javascript_libs = 'vue,underscore'
let g:vue_disable_pre_processors=1

au Filetype php,python,json call s:tab_4()
au Filetype html,javascript,css,scss,sass,vue,coffee call s:tab_2()
