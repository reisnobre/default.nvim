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

" Better indentention control
vnoremap < <gv
vnoremap > >gv

" =============== Navigation

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

" =============== FMaps
set pastetoggle=<F2>
noremap <F3> :set ft=
noremap <F4> :call TabSize()<Left><Left>

" Move to previous/next
nnoremap <silent>    <Tab> :BufferNext<CR>
nnoremap <silent>    <S-Tab> :BufferPrevious<CR>

" Other:
" :BarbarEnable - enables barbar (enabled by default)
" :BarbarDisable - very bad command, should never be used

noremap <F6> :setlocal spell! spelllang=en_us<CR>
noremap <F7> :set spelllang=pt_br,en<CR>
noremap <silent> <F9> :!find $(git root) -type d -d 1 -name 'public' -exec open {} \;<CR>
noremap <F10> :so $MYVIMRC <CR>
noremap <F12> :tabe $MYVIMRC <CR>

