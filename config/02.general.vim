"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" if hidden is not set, TextEdit might fail.
set hidden
" Smaller updatetime for CursorHold & CursorHoldI
set updatetime=300

" Some server have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2


" don't give |ins-completion-menu| messages.
set shortmess=aFc
set cursorline

" always show signcolumns
set signcolumn=yes

set completeopt=longest,menuone

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Default file format
set fileformat=unix

" Smart indent
set si

"Auto indent
set ai

"No wrap lines
set nowrap

" Sets how many lines of history VIM has to remember
set history=500

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch

" Spell checking
" set spell
" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

set go-=m
set go-=T
set go-=r
set go-=L
set nocompatible
set tabstop=2
set shiftwidth=2
set autochdir
set shellslash
set foldmethod=indent
set laststatus=2
set clipboard=unnamed
set expandtab
set nu
set rnu
" set winheight=30
" set winwidth=30
" set winminwidth=5

"Session
let g:session_autoload = 'yes'

"Remember options when reopening files
set viewoptions=cursor,folds,slash,unix,options

" Enable Elite mode
let g:elite_mode=1

augroup checktime
    autocmd!
    if !has("gui_running")
        "silent! necessary otherwise throws errors when using command
        "line window.
        autocmd BufEnter,FocusGained,BufEnter,FocusLost,WinLeave * checktime
    endif
augroup END
