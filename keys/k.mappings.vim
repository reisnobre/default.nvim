"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Remaps
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" =============== Essentials
" set leader key
let g:mapleader = "\<Space>"

" New Leader
let mapleader = ' '
let maplocalleader = ' '

" JJ ESC
inoremap jj <Esc>

" =============== Leader Commands

" Fast Save
noremap <Leader>s :update<CR> 

" Quick single file refactor
noremap <Leader>rf ye:%s,",
noremap <Leader>rl ye:s,",



" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")


" Easy CAPS
inoremap <c-u> <ESC>viwUi
nnoremap <c-u> viwU<Esc>

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

" Alternate way to save
nnoremap <C-s> :w<CR>
" Alternate way to quit
nnoremap <C-Q> :wq!<CR>
" Use control-c instead of escape
nnoremap <C-c> <Esc>
" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Better tabbing
vnoremap < <gv
vnoremap > >gv


nnoremap <Leader>o o<Esc>^Da
nnoremap <Leader>O O<Esc>^Da

" Fast Save
noremap <Leader>s :update<CR> 

" =============== Navigation

" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>


" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Elite Resize
nnoremap <Up>    :resize +2<CR>
nnoremap <Down>  :resize -2<CR>
nnoremap <Left>  :vertical resize +2<CR>
nnoremap <Right> :vertical resize -2<CR>

" Scrolling
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 10, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 10, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 10, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 10, 4)<CR>

" =============== FMaps
set pastetoggle=<F2>
noremap <F3> :set ft=
noremap <F4> :call TabSize()<Left><Left>
noremap <F6> :setlocal spell! spelllang=en_us<CR>
noremap <F7> :set spelllang=pt_br,en<CR>
noremap <silent> <F9> :!find $(git root) -type d -d 1 -name 'public' -exec open {} \;<CR>
noremap <F10> :so $MYVIMRC <CR>
noremap <F12> :tabe $MYVIMRC <CR>

