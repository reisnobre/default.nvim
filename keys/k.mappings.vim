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
noremap <F6> :setlocal spell! spelllang=en_us<CR>
noremap <F7> :set spelllang=pt_br,en<CR>
noremap <silent> <F9> :!find $(git root) -type d -d 1 -name 'public' -exec open {} \;<CR>
noremap <F10> :so $MYVIMRC <CR>
noremap <F12> :tabe $MYVIMRC <CR>

inoremap <silent><expr> <C-CR> compe#complete()
inoremap <silent><expr> <CR>      compe#confirm('<CR>')
inoremap <silent><expr> <C-e>     compe#close('<C-e>')
inoremap <silent><expr> <C-f>     compe#scroll({ 'delta': +4 })
inoremap <silent><expr> <C-d>     compe#scroll({ 'delta': -4 })


" =============== COC-FZF-PREVIEW BINDINGS

" define a map for dealing with files
nmap <Leader>f [tele-p]
xmap <Leader>f [tele-p]

" Find files using Telescope command-line sugar.
nnoremap [tele-p]p <cmd>Telescope find_files<cr>
nnoremap [tele-p]a <cmd>Telescope live_grep<cr>
nnoremap [tele-p]b <cmd>Telescope buffers<cr>
nnoremap [tele-p]h <cmd>Telescope help_tags<cr>
nnoremap [tele-p]gc <cmd>Telescope git_commits<cr>
nnoremap [tele-p]gb <cmd>Telescope git_branches<cr>
nnoremap [tele-p]gs <cmd>Telescope git_status<cr>

