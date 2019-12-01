"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set encoding=utf8 " Set utf8 as standard encoding and en_US as the standard language
set fileformat=unix " Default file format
set hidden " if hidden is not set, TextEdit might fail.
set updatetime=300 " Smaller updatetime for CursorHold & CursorHoldI
set nobackup " Some server have issues with backup files, see #649
set nowritebackup
set cmdheight=2 " Better display for messages
set shortmess=aFc " don't give |ins-completion-menu| messages.
set cursorline " highlight  the line where the cursor is
set signcolumn=yes " always show signcolumns
set completeopt=longest,menuone
set si " Smart indent
set ai "Auto indent
set nowrap "No wrap lines
set history=500 " Sets how many lines of history VIM has to remember
set autoread " Set to auto read when a file is changed from the outside
set incsearch " Makes search act like search in modern browsers
set lazyredraw " Don't redraw while executing macros (good performance config)
set magic " For regular expressions turn magic on
set tm=500 " wait X seconds for a map sequence to complete
set tabstop=2 " size of tab
set shiftwidth=2 " size of autoindent
set nu " numeric ruler
set rnu " relative ruler
set shellslash " auto slash at the end of file path
set foldmethod=indent " fold by indent
set expandtab " use spaces instead of tabs
let g:elite_mode=1 " Enable Elite mode, arrows resize windows

" Enable filetype plugins
filetype plugin on
filetype indent on

set laststatus=2
set clipboard=unnamed

" No annoying sound on errors
set noerrorbells
set novisualbell

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Session
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:session_autoload = 'yes'
set viewoptions=cursor,folds,slash,unix,options "Remember options when reopening files



" augroup checktime
"     autocmd!
"     if !has("gui_running")
"         "silent! necessary otherwise throws errors when using command
"         "line window.
"         autocmd BufEnter,FocusGained,BufEnter,FocusLost,WinLeave * checktime
"     endif
" augroup END
