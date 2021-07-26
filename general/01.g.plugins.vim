""""""""""""""""""""""""""""""
" => Plugins
""""""""""""""""""""""""""""""

call plug#begin()

" =============== IDE
" Essentials
Plug 'https://github.com/Yggdroot/indentLine' " indentation indicator
Plug 'https://github.com/airblade/vim-rooter' " changes the working directory to the root of the project
Plug 'https://github.com/christoomey/vim-tmux-navigator' " easy vim + tmux navigation
Plug 'https://github.com/itchyny/lightline.vim' " lightline
Plug 'https://github.com/junegunn/fzf', { 'do': './install --bin' } " fuzzy finder
Plug 'https://github.com/mhinz/vim-signify' " git integration with column indicators
Plug 'https://github.com/mhinz/vim-startify' " startup menu with quick access to recent files
Plug 'https://github.com/neoclide/coc.nvim', {'branch': 'release'} " lsp and more
Plug 'https://github.com/terryma/vim-smooth-scroll' " smotth scrolling
Plug 'https://github.com/tomtom/tcomment_vim' " easy comments
Plug 'https://github.com/tpope/vim-fugitive' " git interaction/integration

" Nice to have
Plug 'https://github.com/reisnobre/vim-evanesco' " easy :noh
Plug 'https://github.com/ryanoasis/vim-devicons' " nice devicons on vim
Plug 'https://github.com/ntpeters/vim-better-whitespace' " flag unneed whitespace
Plug 'https://github.com/norcalli/nvim-colorizer.lua' " css colors

" To learn
Plug 'https://github.com/tpope/vim-surround' " easy sorround of words
Plug 'https://github.com/tpope/vim-repeat' " repeat writing .

" To be replaced or removed

" Testing

" =============== DEVELOPING

" =============== SYNTAX

" Essentials
Plug 'https://github.com/sheerun/vim-polyglot' " language support

" Nice to have

" To be replaced or removed

" Testing

" =============== SNIPPETS
Plug 'https://github.com/freencis/snippets'
Plug 'https://github.com/reisnobre/snippets.nvim'
Plug 'https://github.com/mattn/emmet-vim'

" =============== THEMES
Plug 'https://github.com/arcticicestudio/nord-vim'

call plug#end()
