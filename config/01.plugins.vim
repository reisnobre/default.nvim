""""""""""""""""""""""""""""""
" => Plugins 
""""""""""""""""""""""""""""""

call plug#begin()

" UI 
Plug 'Yggdroot/indentLine'
Plug 'airblade/vim-gitgutter'
Plug 'itchyny/lightline.vim'
Plug 'myusuf3/numbers.vim'
Plug 'ap/vim-css-color'

" Color Themes 
Plug 'arcticicestudio/nord-vim'
Plug 'NLKNguyen/papercolor-theme'
" Plug 'https://github.com/othree/xml.vim.git'
" Plug 'https://github.com/romainl/Apprentice.git'
" Plug 'https://github.com/terryma/vim-multiple-cursors.git'
" Plug 'https://github.com/tommcdo/vim-exchange.git'
" Plug 'https://github.com/xolox/vim-misc'


" IDE / Workflow
Plug 'https://github.com/terryma/vim-smooth-scroll.git'
Plug 'https://github.com/mileszs/ack.vim.git'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'https://github.com/scrooloose/nerdtree'
Plug 'https://github.com/ctrlpvim/ctrlp.vim'
Plug 'freencis/snippets'
Plug 'https://github.com/reisnobre/snippets.nvim'
Plug 'https://github.com/SirVer/ultisnips.git'
" Plug 'https://github.com/Valloric/YouCompleteMe.git'
Plug 'https://github.com/tomtom/tcomment_vim.git'
Plug 'https://github.com/honza/vim-snippets.git'
Plug 'https://github.com/mattn/emmet-vim.git'
Plug 'https://github.com/tpope/vim-fugitive.git'
Plug 'tpope/vim-repeat'
Plug 'brooth/far.vim'
Plug 'https://github.com/tpope/vim-surround.git'
Plug 'ryanoasis/vim-devicons'
Plug 'wakatime/vim-wakatime'
Plug 'majutsushi/tagbar'
Plug 'kshenoy/vim-signature'
Plug 'terryma/vim-multiple-cursors'


Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}


" Syntax
Plug 'posva/vim-vue'
Plug 'pangloss/vim-javascript'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'w0rp/ale'
Plug 'maximbaz/lightline-ale'
Plug 'StanAngeloff/php.vim'
Plug 'justinmk/vim-syntax-extra'
Plug 'jwalton512/vim-blade'

call plug#end()
