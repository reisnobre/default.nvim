""""""""""""""""""""""""""""""
" => Plugins
""""""""""""""""""""""""""""""

call plug#begin()
" =============== IDE
" Essentials
Plug 'https://github.com/itchyny/lightline.vim' " lightline
Plug 'https://github.com/mileszs/ack.vim' " find anyware
Plug 'https://github.com/neoclide/coc.nvim', {'branch': 'release'} " lsp and more
Plug 'https://github.com/terryma/vim-smooth-scroll' " scroll
Plug 'https://github.com/tomtom/tcomment_vim' " easy comments
Plug 'https://github.com/ctrlpvim/ctrlp.vim' " fuzzy find files
Plug 'https://github.com/christoomey/vim-tmux-navigator' " easy vim + tmux navigation
Plug 'https://github.com/jeetsukumaran/vim-buffergator' " manage vim buffers

" Nice to have
Plug 'https://github.com/Shougo/echodoc.vim' " function documentation below the status bar
Plug 'https://github.com/Yggdroot/indentLine' " indentation indicator
Plug 'https://github.com/airblade/vim-gitgutter' " git status on the side
Plug 'https://github.com/liuchengxu/vista.vim' " tags
Plug 'https://github.com/ntpeters/vim-better-whitespace' " show whitespace on the interface
Plug 'https://github.com/reisnobre/vim-evanesco' " easy :noh
Plug 'https://github.com/wakatime/vim-wakatime' " time tracking
Plug 'https://github.com/git-time-metric/gtm-vim-plugin' " time tracking
Plug 'https://github.com/ryanoasis/vim-devicons' " nice devicons  on vim
Plug 'https://github.com/jalvesaq/Nvim-R' " work with R language
Plug 'https://github.com/tpope/vim-obsession' " save sessions
Plug 'https://github.com/junegunn/goyo.vim' " better vim writting
Plug 'https://github.com/mateusbraga/vim-spell-pt-br' " vim spelling
Plug 'https://github.com/ap/vim-css-color' " css color preview on any file

" To learn
Plug 'https://github.com/tpope/vim-fugitive' " git interaction
Plug 'https://github.com/tpope/vim-surround' " easy sorround of words

" To be replaced or removed
Plug 'https://github.com/brooth/far.vim' " global refactor

" Testing

" =============== SYNTAX
" Essentials
Plug 'https://github.com/pangloss/vim-javascript'
Plug 'https://github.com/posva/vim-vue'
Plug 'https://github.com/StanAngeloff/php.vim'
Plug 'https://github.com/jwalton512/vim-blade'

" Nice to have
Plug 'https://github.com/chr4/nginx.vim'
Plug 'https://github.com/lervag/vimtex'

" To be replaced or removed

" Testing

" =============== SNIPPETS
Plug 'https://github.com/freencis/snippets'
Plug 'https://github.com/reisnobre/snippets.nvim'
Plug 'https://github.com/mattn/emmet-vim'


" =============== THEMES
Plug 'https://github.com/arcticicestudio/nord-vim'
Plug 'dracula/vim', { 'as': 'dracula' }

call plug#end()
