"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set t_ut=                     " fix 256 colors in tmux http://sunaku.github.io/vim-256color-bce.html
set nowrap                    " don't wrap lines
set hidden                    " hide buffer without notice
" set mouse=a                   " enable mouse
set autoread                  " auto read external file changes
set hlsearch                  " highlight the last searched term
set noshowcmd                 " disable blinking command feedback in bottom-right corner
" set guicursor=                " disable cursor shape
set noshowmode                " hide the default mode text (e.g. -- INSERT -- below the statusline)
set noswapfile                " no swap files
set cpoptions+=$              " dollar sign while changing
set pumheight=30              " limit popup menu height
set shortmess+=c              " disable ins-completion-menu 'match 1 of N' messages
set synmaxcol=250             " set max syntax highlighting column to sane level
set conceallevel=2            " hides concealed text
set updatetime=300            " set updatetime to shorter value
set virtualedit=all           " let us walk in limbo
set visualbell t_vb=          " no visual bell
set spelllang=en,pt_br        " set default spelling languages
set completeopt-=preview      " disable the preview window
set clipboard=unnamedplus     " for simplified clipboard copy/paste
set expandtab shiftwidth=4    " space for tabs by default
set tabstop=4 softtabstop=4

if has('nvim')
  set wildoptions=pum         " set wildmenu to use pum
endif
