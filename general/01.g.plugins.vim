""""""""""""""""""""""""""""""
" => Plugins
""""""""""""""""""""""""""""""

call plug#begin()

" =============== IDE
" Essentials
Plug 'https://github.com/neoclide/coc.nvim', {'branch': 'release'} " lsp and more
Plug 'https://github.com/christoomey/vim-tmux-navigator' " easy vim + tmux navigation
Plug 'https://github.com/itchyny/lightline.vim' " lightline
Plug 'https://github.com/junegunn/fzf', { 'do': './install --bin' } " fuzzy finder
Plug 'https://github.com/tomtom/tcomment_vim' " easy comments
Plug 'https://github.com/tpope/vim-fugitive' " git interaction
Plug 'https://github.com/terryma/vim-smooth-scroll' " smotth scrolling

" Nice to have
Plug 'https://github.com/MattesGroeger/vim-bookmarks'
Plug 'https://github.com/Yggdroot/indentLine' " indentation indicator
Plug 'https://github.com/airblade/vim-gitgutter' " git status on the side
Plug 'https://github.com/andymass/vim-matchup' " highlight matching pairs
Plug 'https://github.com/reisnobre/vim-evanesco' " easy :noh
Plug 'https://github.com/ryanoasis/vim-devicons' " nice devicons on vim
Plug 'https://github.com/wakatime/vim-wakatime' " time tracking
Plug 'https://github.com/norcalli/nvim-colorizer.lua' " css colors
Plug 'https://github.com/Yggdroot/indentLine' " indentation indicator

" To learn
Plug 'https://github.com/tpope/vim-surround' " easy sorround of words
Plug 'https://github.com/tpope/vim-repeat' " 

" To be replaced or removed
" Plug 'https://github.com/Yggdroot/indentLine' " indentation indicator

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
