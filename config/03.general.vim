"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" =============== Essentials
syntax on " turn on sintax
set encoding=utf8 " Set utf8 as standard encoding and en_US as the standard language
colorscheme Nord " colorscheme

filetype plugin indent on " Enable filetype plugins

set hidden " hide open file on buffers
set smartindent " Smart indent
set autoindent "Auto indent
set nowrap "No wrap lines
set autoread " Set to auto read when a file is changed from the outside
set lazyredraw " Don't redraw while executing macros (good performance config)
set nu " numeric ruler
set rnu " relative ruler
set splitbelow splitright " change default split direction

set backspace=indent,eol,start " change backspace behaviour while on normal mode
set cmdheight=2 " Better display for messages
set foldmethod=indent " fold by indent

" =============== Backup and swap behaviour
set nobackup " Some server have issues with backup files, see #649
set nowritebackup
set noswapfile
set history=500 " Sets how many lines of history VIM has to remember


" =============== Language config defaults
set shiftwidth=2 " size of autoindent
set foldcolumn=2 " Add a bit extra margin to the left
set fileformat=unix " Default file format
set tabstop=2 " size of tab
set expandtab " use spaces instead of tabs

let g:elite_mode=1 " Enable Elite mode, arrows resize windows

" =============== Abbreviations to avoid shift mistakes
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Vs vs
cnoreabbrev Sp sp

" =============== configs that I don't understand and will be testing to
" remove latter
" set updatetime=300 " Smaller updatetime for CursorHold & CursorHoldI and swap file to be written on folder
" set completeopt=longest,menuone
" set signcolumn=yes " always show signcolumns
" set shortmess=aFc " don't give ins-completion-menu messages.
" set tm=500 " wait X seconds for a map sequence to complete
" set clipboard=unnamed
" No annoying sound on errors
" set noerrorbells
" set novisualbell
" set incsearch " Makes search act like search in modern browsers
" set magic " For regular expressions turn magic on
" set shellslash " auto slash at the end of file path
" autocmd BufEnter * silent! lcd %:p:h " change dirs as files are oppened
" set laststatus=2

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Session
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:session_autoload = 'yes'
set viewoptions=cursor,folds,slash,unix,options "Remember options when reopening files

autocmd VimEnter * if isdirectory(expand(printf('#%s:p', expand('<abuf>')))) | :CocCommand fzf-preview.ProjectFiles | endif " Open fzf files if the buffer is empty

let g:loaded_matchparen = 1
let g:loaded_netrw = 1
let g:loaded_netrwPlugin = 1

if !has('nvim')
  set viminfo+=n~/vim/viminfo
else
  " Do nothing here to use the neovim default
  " or do soemething like:
  " set viminfo+=n~/.shada
endif

if has('nvim')
  au TermOpen * setlocal nonumber norelativenumber
  set inccommand=nosplit
endif
