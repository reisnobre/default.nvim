" autocmd BufRead, BufNewFile *.vue setlocal filetype=vue.html.javascript.css

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
