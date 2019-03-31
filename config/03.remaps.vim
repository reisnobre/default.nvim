"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General Remaps 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" New Leader
let mapleader = ' '
let maplocalleader = ' '

" Fast Save
noremap <Leader>s :update<CR>

" Elite Resize
nnoremap <Up>    :resize +2<CR>
nnoremap <Down>  :resize -2<CR>
nnoremap <Left>  :vertical resize +2<CR>
nnoremap <Right> :vertical resize -2<CR>

" FMaps 
set pastetoggle=<F2>
noremap <F3> :set ft=
noremap <F4> :call TabSize()<Left><Left>
noremap <F10> :so $MYVIMRC <CR>
noremap <F12> :tabe $MYVIMRC <CR>

" Smooth Scrolling
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 10, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 10, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 10, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 10, 4)<CR>

" Split Moving
map <c-j> <C-W>j<C-W>_
map <c-k> <C-W>k<C-W>_
map <c-h> <C-W>h<C-W>\|
map <c-l> <C-W>l<C-W>\|

" Learn it
cnoremap $t <CR>:t''<CR>
cnoremap $T <CR>:T''<CR>
cnoremap $m <CR>:m''<CR>
cnoremap $M <CR>:M''<CR>
cnoremap $d <CR>:d<CR>``

" Quick single file refactor
noremap <Leader>r ye:%s,",

" Quick comment shit
noremap <Leader>cs 80i=<esc>


" JJ ESC
ino jj <esc>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins Remaps 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Ale error navigation
" nnoremap <silent> <C-k>1 :exe "normal \<Plug>(ale_previous)"<CR>
" nnoremap <silent> <C-j>1 :exe "normal \<Plug>(ale_next)"<CR>
" nmap <silent> <C-k> <Plug>(ale_previous_wrap)
" nmap <silent> <C-j> <Plug>(ale_next_wrap)

" Utilsnips
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-tab>"

" Ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard -x *.meta']

" NERDTree
nnoremap <Leader>n :NERDTree<CR>

" Ack! 
nnoremap <Leader>a :Ack! -w 

" Quick all files refactor with vim-far
noremap <Leader>f ye:Far " 

" Remap Emmet Remap 
let g:user_emmet_leader_key='<C-y>'
