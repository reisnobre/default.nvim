"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" ====== CTRLP ====== "
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe,*.meta,*.cs.meta
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn|meta|swp|wav)$'
let g:buffergator_autoexpand_on_split = 0


" ====== Utilsnips ===== "
" let g:UltiSnipsSnippetsDir="~/.config/nvim/plugged/snippets/UltiSnips"


" ====== NERDtree ====== " 
nnoremap <Leader>n :NERDTree<CR>
" vmap ++ <plug>NERDCommenterToggle
" nmap ++ <plug>NERDCommenterToggle
let NERDTreeQuitOnOpen=1
let g:NERDTreeGitStatusWithFlags = 1
let g:NERDTreeColorMapCustom = {
    \ "Staged"    : "#0ee375",  
    \ "Modified"  : "#d9bf91",  
    \ "Renamed"   : "#51C9FC",  
    \ "Untracked" : "#FCE77C",  
    \ "Unmerged"  : "#FC51E6",  
    \ "Dirty"     : "#FFBD61",  
    \ "Clean"     : "#87939A",   
    \ "Ignored"   : "#808080"   
    \ }                         

let g:NERDTreeIgnore = ['^node_modules$']


" ====== FAR ====== " 
let g:ackprg = 'ag --vimgrep --smart-case'                                                   
cnoreabbrev ag Ack
cnoreabbrev aG Ack
cnoreabbrev Ag Ack
cnoreabbrev AG Ack
let g:ackhighlight = 1
set backupcopy=yes

au FileType javascript :UltiSnipsAddFiletypes javascript

