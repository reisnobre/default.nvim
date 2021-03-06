""""""""""""""""""""""""""""""
" => Plugins
""""""""""""""""""""""""""""""

call plug#begin()

" =============== IDE
" Essentials
Plug 'https://github.com/itchyny/lightline.vim' " lightline
Plug 'https://github.com/neoclide/coc.nvim', {'branch': 'release'} " lsp and more
Plug 'https://github.com/christoomey/vim-tmux-navigator' " easy vim + tmux navigation
Plug 'https://github.com/tpope/vim-obsession' " save sessions
Plug 'https://github.com/junegunn/fzf', { 'do': './install --bin' } " fuzzy finder
Plug 'https://github.com/airblade/vim-rooter' " changes the working directory to the root of the project
Plug 'https://github.com/tomtom/tcomment_vim' " easy comments

" Nice to have
Plug 'https://github.com/terryma/vim-smooth-scroll' " smotth scrolling
Plug 'https://github.com/Yggdroot/indentLine' " indentation indicator
Plug 'https://github.com/airblade/vim-gitgutter' " git status on the side
Plug 'https://github.com/reisnobre/vim-evanesco' " easy :noh
Plug 'https://github.com/wakatime/vim-wakatime' " time tracking
Plug 'https://github.com/junegunn/goyo.vim' " better vim writting
Plug 'https://github.com/mateusbraga/vim-spell-pt-br' " vim spelling
Plug 'https://github.com/ap/vim-css-color' " css color preview on any file
Plug 'https://github.com/andymass/vim-matchup' " highlight matching pairs
Plug 'https://github.com/ryanoasis/vim-devicons' " nice devicons on vim
Plug 'https://github.com/junegunn/fzf.vim'

" To learn
Plug 'https://github.com/tpope/vim-fugitive' " git interaction
Plug 'https://github.com/tpope/vim-surround' " easy sorround of words
Plug 'https://github.com/kshenoy/vim-signature'
Plug 'https://github.com/tpope/vim-repeat' " 
Plug 'https://github.com/MattesGroeger/vim-bookmarks'
" Plug 'https://github.com/APZelos/blamer.nvim' " blamer 

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
Plug 'https://github.com/SirVer/ultisnips'
Plug 'https://github.com/freencis/snippets'
Plug 'https://github.com/reisnobre/snippets.nvim'
Plug 'https://github.com/mattn/emmet-vim'

" =============== THEMES
Plug 'https://github.com/arcticicestudio/nord-vim'

call plug#end()

