""""""""""""""""""""""""""""""
" => Plugins 
""""""""""""""""""""""""""""""
call plug#begin()
" IDE
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdtree'
Plug 'xuyuanp/nerdtree-git-Plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdcommenter'
Plug 'terryma/vim-smooth-scroll'
Plug 'tomtom/tcomment_vim'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'christoomey/vim-tmux-navigator'
Plug 'wakatime/vim-wakatime'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'w0rp/ale'
Plug 'maximbaz/lightline-ale'

" Search
Plug 'ctrlpvim/ctrlp.vim' " fuzzy find files
Plug 'mileszs/ack.vim'
Plug 'brooth/far.vim'

" Snippets
Plug 'freencis/snippets'
Plug 'reisnobre/snippets.nvim'

" Color themes 
Plug 'arcticicestudio/nord-vim'
Plug 'rakr/vim-two-firewatch'

" Syntax 
Plug 'herringtondarkholme/yats.vim' " ts syntax
Plug 'posva/vim-vue'
Plug 'pangloss/vim-javascript'

" ui 
" Plug 'yggdroot/indentline'
" Plug 'myusuf3/numbers.vim'
" Plug 'ap/vim-css-color'



" ide / workflow
" Plug 'https://github.com/sirver/ultisnips.git'
" Plug 'https://github.com/honza/vim-snippets.git'
" Plug 'https://github.com/mattn/emmet-vim.git'
" Plug 'majutsushi/tagbar'
" Plug 'kshenoy/vim-signature'
" Plug 'terryma/vim-multiple-cursors'
" Plug 'heavenshell/vim-jsdoc'


" syntax
" Plug 'othree/javascript-libraries-syntax.vim'
" Plug 'stanangeloff/php.vim'
" Plug 'justinmk/vim-syntax-extra'
" Plug 'jwalton512/vim-blade'
" Plug 'https://github.com/shougo/echodoc.vim'

call plug#end()
