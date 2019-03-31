"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

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

"Session
let g:session_autoload = 'yes'

"Remember options when reopening files
set viewoptions=cursor,folds,slash,unix,options

" Enable Elite mode
let g:elite_mode=1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins General Config 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" CTRLP ignore files
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe,*.meta,*.cs.meta
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn|meta|swp|wav)$'
let g:buffergator_autoexpand_on_split = 0

" Utilsnips Dir
let g:UltiSnipsSnippetsDir="~/.config/nvim/plugged/snippets/UltiSnips"

" "NERDtree 
let NERDTreeQuitOnOpen=1

" FAR
let g:ackprg = 'ag --vimgrep --smart-case'                                                   
cnoreabbrev ag Ack
cnoreabbrev aG Ack
cnoreabbrev Ag Ack
cnoreabbrev AG Ack
let g:ackhighlight = 1
set backupcopy=yes
