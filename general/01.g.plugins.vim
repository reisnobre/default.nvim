""""""""""""""""""""""""""""""
" => Plugins
""""""""""""""""""""""""""""""

call plug#begin()

" =============== IDE
" Essentials
Plug 'https://github.com/neovim/nvim-lspconfig'
Plug 'https://github.com/kabouzeid/nvim-lspinstall'
Plug 'https://github.com/glepnir/lspsaga.nvim'
Plug 'https://github.com/onsails/lspkind-nvim'
Plug 'https://github.com/iamcco/diagnostic-languageserver'
Plug 'https://github.com/lukas-reineke/indent-blankline.nvim'
Plug 'https://github.com/tpope/vim-fugitive' " git interaction/integration
Plug 'https://github.com/hoob3rt/lualine.nvim' " substitute for lightline
Plug 'https://github.com/christoomey/vim-tmux-navigator' " easy vim + tmux navigation
Plug 'https://github.com/tomtom/tcomment_vim' " easy comments
" Plug 'https://github.com/Yggdroot/indentLine' " indentation indicator
Plug 'https://github.com/kyazdani42/nvim-web-devicons' " nice devicons on vim
Plug 'https://github.com/tpope/vim-surround' " easy sorround of words
Plug 'https://github.com/tpope/vim-repeat' " repeat writing .
Plug 'https://github.com/arcticicestudio/nord-vim'

Plug 'https://github.com/hrsh7th/nvim-compe'
Plug 'https://github.com/nvim-lua/plenary.nvim'
Plug 'https://github.com/lewis6991/gitsigns.nvim'
Plug 'https://github.com/nvim-telescope/telescope.nvim'
Plug 'https://github.com/kyazdani42/nvim-tree.lua'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'https://github.com/shaunsingh/nord.nvim'

" Nice to have

" To learn

" To be replaced or removed

" Testing

" =============== DEVELOPING

" =============== SNIPPETS

" =============== THEMES

call plug#end()

