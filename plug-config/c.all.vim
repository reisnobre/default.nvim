" =============== Fugitive Mappings
nmap <Leader>g [fugitive-g]
xmap <Leader>g [fugitive-g]

nnoremap <silent> [fugitive-g]a :G add %:p<CR>
nnoremap <silent> [fugitive-g]c :G commit -v -q<CR>
nnoremap <silent> [fugitive-g]t :G commit -v -q  %:p<CR>
nnoremap <silent> [fugitive-g]b :G branch<Space>
nnoremap <silent> [fugitive-g]o :G checkout<Space>
nnoremap <silent> [fugitive-g]d :G diff<Space>
nnoremap <silent> [fugitive-g]l :G log<CR>:bot copen<CR>

nnoremap <space>ge :Gedit<CR>
nnoremap <space>grf :Gread<CR>
nnoremap <space>gw :Gwrite<CR><CR>
nnoremap <space>gp :Ggrep<Space>
nnoremap <space>gm :Gmove<Space>
nnoremap <space>gps :Dispatch! git push<CR>
nnoremap <space>gpl :Dispatch! git pull<CR>


" =============== Signify
" Change these if you want
let g:signify_sign_add               = '+'
let g:signify_sign_delete            = '_'

let g:signify_sign_delete_first_line = '‾'
let g:signify_sign_change            = '~'

" I find the numbers disctracting
let g:signify_sign_show_count = 0
let g:signify_sign_show_text = 1

" =============== Signify Mappings
" Jump though hunks
" nmap <leader>gj <plug>(signify-next-hunk)
" nmap <leader>gk <plug>(signify-prev-hunk)
" nmap <leader>gJ 9999<leader>gJ
" nmap <leader>gK 9999<leader>gk


