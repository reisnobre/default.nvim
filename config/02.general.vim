"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

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
let g:nord_uniform_status_lines = 1
set clipboard=unnamed
set expandtab

" Enable Elite mode
let g:elite_mode=1
