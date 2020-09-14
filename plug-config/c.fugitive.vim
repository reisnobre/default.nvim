" =============== Fugitive Mappings
nmap <Leader>g [fugitive-g]
xmap <Leader>g [fugitive-g]

nnoremap <silent> [fugitive-g]s :G<CR>
nnoremap <silent> [fugitive-g]a :G add %:p<CR>
nnoremap <silent> [fugitive-g]c :G commit -v -q<CR>
nnoremap <silent> [fugitive-g]t :G commit -v -q  %:p<CR>
nnoremap <silent> [fugitive-g]l :G log<CR>:bot copen<CR>

nnoremap <silent> [fugitive-g]b :G branch<Space>
nnoremap <silent> [fugitive-g]d :G diff<Space>
nnoremap <silent> [fugitive-g]o :G checkout<Space>

nnoremap <silent> [fugitive-g]m :G merge<Space>
nnoremap <silent> [fugitive-g]mj :diffget //3<CR>
nnoremap <silent> [fugitive-g]mf :diffget //2<CR>

nnoremap <space>ge :Gedit<CR>
nnoremap <space>grf :Gread<CR>
nnoremap <space>gw :Gwrite<CR><CR>
nnoremap <space>gp :Ggrep<Space>
nnoremap <space>gps :Dispatch! git push<CR>
nnoremap <space>gpl :Dispatch! git pull<CR>
