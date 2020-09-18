""""""""""""""""""""""""""""""
" => Plugins
""""""""""""""""""""""""""""""

call plug#begin()

" =============== IDE
" Essentials
Plug 'https://github.com/neoclide/coc.nvim', {'branch': 'release'} " lsp and more
Plug 'https://github.com/itchyny/lightline.vim' " lightline
Plug 'https://github.com/junegunn/fzf', { 'do': './install --bin' } " fuzzy finder
Plug 'https://github.com/tomtom/tcomment_vim' " easy comments
Plug 'https://github.com/tpope/vim-fugitive' " git interaction
Plug 'https://github.com/terryma/vim-smooth-scroll' " smotth scrolling
Plug 'https://github.com/Yggdroot/indentLine' " indentation indicator
Plug 'https://github.com/mhinz/vim-signify' " git integration
Plug 'https://github.com/airblade/vim-rooter' " changes the working directory to the root of the project

" Nice to have
Plug 'https://github.com/reisnobre/vim-evanesco' " easy :noh

" To learn
Plug 'https://github.com/tpope/vim-surround' " easy sorround of words
Plug 'https://github.com/tpope/vim-repeat' " 

" To be replaced or removed

" Testing

" =============== DEVELOPING

" =============== SYNTAX
" Essentials

" Nice to have

" To be replaced or removed

" Testing

" =============== SNIPPETS

" =============== THEMES
Plug 'https://github.com/arcticicestudio/nord-vim'

call plug#end()
