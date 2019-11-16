"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set relativenumber

set smarttab
set cindent
set tabstop=2
set shiftwidth=2
" always uses spaces instead of tab characters
set expandtab

set hidden " Some servers have issues with backup files, see #649 set nobackup set nowritebackup Better display for messages set cmdheight=2 " You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

set nowrap 

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

" Nord
let g:nord_uniform_status_lines = 1
let iterm_profile = $ITERM_PROFILE

