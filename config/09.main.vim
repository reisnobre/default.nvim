
" Language specifics
au Filetype php, python call TabSize4()
function TabSize4()
	set tabstop=4
 	set softtabstop=4
 	set shiftwidth=4
endfunction

au Filetype html,javascript,css,scss,sass,vue call TabSize2()
function TabSize2()
	set tabstop=2
 	set softtabstop=2
 	set shiftwidth=2
endfunction

" Linebreak on 500 characters
" set lbr
" set tw=500


""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""



let g:used_javascript_libs = 'vue,underscore'
let g:vue_disable_pre_processors=1


autocmd BufRead, BufNewFile *.vue setlocal filetype=vue.html.javascript.css

" autocmd BufWinLeave *.* mkview
" autocmd BufWinEnter *.* silent loadview 
" autocmd BufNew * execute ":tabmove99"

"Convert line endings from dos to unix
" noremap <Leader>ç :e ++ff=dos <bar> set ff=unix <bar> update <CR>


"
" noremap <C-w>] <C-w>\|
" "
" " MULTICURSOR
" set backspace=indent,eol,start
" let g:multi_cursor_exit_from_insert_mode=0
"
" nnoremap <F5> "=strftime("%c")<CR>P
" inoremap <F5> <C-R>=strftime("%c")<CR>

