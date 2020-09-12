" =============== Fugitive Mappings
nnoremap <space>ga :Git add %:p<CR><CR>
nnoremap <space>gt :Gcommit -v -q %:p<CR>
nnoremap <space>gc :Gcommit -v -q<CR>
nnoremap <space>gdf :Gdiff<CR>
nnoremap <space>ge :Gedit<CR>
nnoremap <space>grf :Gread<CR>
nnoremap <space>gl :silent! Glog<CR>:bot copen<CR>

nnoremap <space>gw :Gwrite<CR><CR>
nnoremap <space>gp :Ggrep<Space>
nnoremap <space>gm :Gmove<Space>
nnoremap <space>gb :Git branch<Space>
nnoremap <space>go :Git checkout<Space>
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

lua require'colorizer'.setup()
