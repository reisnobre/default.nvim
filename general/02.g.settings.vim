"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Enable filetype plugins
filetype plugin on
filetype indent on
set encoding=utf8                       " Set utf8 as standard encoding and en_US as the standard language
set fileencoding=utf-8                  " The encoding written to file
set fileformat=unix                     " Default file format

set autoindent " set autoindent
set autoread " Set to auto read when a file is changed from the outside
set expandtab " use spaces instead of tabs
set hidden " if hidden is not set, TextEdit might fail.
" set incsearch " Makes search act like search in modern browsers
set lazyredraw " Don't redraw while executing macros (good performance config)
set magic " For regular expressions turn magic on
set nobackup " Some server have issues with backup files, see #649
set nowrap "No wrap lines
set nowritebackup
set nu                                  " numeric ruler
set rnu                                 " relative ruler
set shellslash                          " auto slash at the end of file path
set si                                  " Smart indent
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
"
set cmdheight=2                         " Better display for messages
set completeopt=menuone,noselect
set conceallevel=0                      " So that I can see `` in markdown files
set foldmethod=indent                   " fold by indent
" set foldexpr=nvim_treesitter#foldexpr()
set formatoptions-=cro                  " Stop newline continution of comments
set history=500                         " Sets how many lines of history VIM has to remember
set pumheight=10                        " Makes popup menu smaller
set shiftwidth=2                        " size of autoindent
set shortmess=aFc                       " don't give ins-completion-menu messages.
" set showtabline=2                       " Always show tabs
set signcolumn=yes                      " always show signcolumns
set t_Co=256                            " Support 256 colors
set tabstop=2                           " size of tab
set timeoutlen=500                      " wait X seconds for a map sequence to complete
set updatetime=300                      " Smaller updatetime for CursorHold & CursorHoldI and swap file to be written on folder
set laststatus=2
set clipboard=unnamedplus               " Copy paste between vim and everything else

let g:elite_mode=1                      " Enable Elite mode, arrows resize windows
let g:loaded_netrw = 1                  " disable netrw
let g:loaded_netrwPlugin = 1            " disable netrw

" No annoying sound on errors
set noerrorbells
set novisualbell

" Avoid shift mistakes
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

" true color
if exists("&termguicolors") && exists("&winblend")
  syntax enable
  set termguicolors
  set winblend=0
  set wildoptions=pum
  set pumblend=5
  set background=dark

  colorscheme Nord
  let g:nord_contrast = v:true
  let g:nord_borders = v:true
endif
