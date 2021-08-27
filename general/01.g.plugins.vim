""""""""""""""""""""""""""""""
" => Plugins
""""""""""""""""""""""""""""""

call plug#begin()

" =============== IDE
" Essentials
Plug 'https://github.com/Yggdroot/indentLine' " indentation indicator
Plug 'https://github.com/christoomey/vim-tmux-navigator' " easy vim + tmux navigation
Plug 'https://github.com/neoclide/coc.nvim', {'branch': 'release'} " lsp and more
Plug 'https://github.com/tomtom/tcomment_vim' " easy comments
Plug 'https://github.com/tpope/vim-fugitive' " git interaction/integration

" Nice to have
Plug 'https://github.com/mhinz/vim-startify'
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
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'lewis6991/gitsigns.nvim'
Plug 'hoob3rt/lualine.nvim'
" If you want to have icons in your statusline choose one of these
Plug 'kyazdani42/nvim-web-devicons'
Plug 'ryanoasis/vim-devicons'
Plug 'romgrk/barbar.nvim'

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
