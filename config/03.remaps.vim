"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" JJ ESC
ino jj <esc>
" New Leader
let mapleader = ' '
let maplocalleader = ' '

" Fast Save
noremap <Leader>s :update<CR>

" Quick comment shit
noremap <Leader>cs 80i=<esc>

" Quick single file refactor
noremap <Leader>r ye:%s,",
noremap <silent> <Leader>v :Vista!!<CR>

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

" Tabs
nnoremap <silent> <C-t> :tabnext <CR>

nnoremap <silent> + :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> - :exe "resize " . (winheight(0) * 2/3)<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins Remaps
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Ale error navigation
nmap <C-n> <Plug>(ale_previous_wrap)
nmap <C-N> <Plug>(ale_next_wrap)


" Utilsnips
" let g:UltiSnipsExpandTrigger="<c-j>"
" let g:UltiSnipsJumpForwardTrigger="<tab>"
" let g:UltiSnipsJumpBackwardTrigger="<c-tab>"

" NERDTree

" Ack!
nnoremap <Leader>a :Ack! -w

" Quick all files refactor with vim-far
noremap <Leader>f ye:Far "

" Remap Emmet Remap
let g:user_emmet_leader_key='<C-y>'

" Tagbar
" nmap <F8> :TagbarToggle<CR>

" Git
" mappings {{{
let g:gitgutter_map_keys = 0
" Multi cursor
let g:multi_cursor_use_default_mapping = 0
