"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Remaps
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" JJ ESC
ino jj <esc>
" New Leader
let mapleader = ' '
let maplocalleader = ' '

" Fast Save
noremap <Leader>s :update<CR>
" Quick single file refactor
noremap <Leader>r ye:%s,",

" Call Ack!
nnoremap <Leader>a :Ack! -w 

" Quick all files refactor with vim-far
noremap <Leader>f ye:Far "

" Open Vista
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
noremap <F6> :setlocal spell! spelllang=en_us<CR>
noremap <F7> :set spelllang=pt_BR<CR>
noremap <silent> <F9> :!find $(git root) -type d -d 1 -name 'public' -exec open {} \;<CR>
noremap <F10> :so $MYVIMRC <CR>
noremap <F12> :tabe $MYVIMRC <CR>
" noremap <F9>


" Smooth Scrolling
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 10, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 10, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 10, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 10, 4)<CR>

" Tabs
nnoremap <silent> <C-t> :tabnext <CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins Remaps
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" EMMET Remap
let g:user_emmet_leader_key='<C-y>'

" Quick comment shit
noremap <Leader>cs 80i=<esc>
