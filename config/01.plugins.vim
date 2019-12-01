""""""""""""""""""""""""""""""
" => Plugins
""""""""""""""""""""""""""""""

call plug#begin()
" =============== IDE
" Essentials
Plug 'https://github.com/Xuyuanp/nerdtree-git-plugin' " indicates on nerdtree git status of a file
Plug 'https://github.com/itchyny/lightline.vim' " lightline
Plug 'https://github.com/jeetsukumaran/vim-buffergator' " manage vim buffers
Plug 'https://github.com/mileszs/ack.vim' " find anyware
Plug 'https://github.com/neoclide/coc.nvim', {'branch': 'release'} " lsp and more
Plug 'https://github.com/scrooloose/nerdtree' " file tree
Plug 'https://github.com/terryma/vim-smooth-scroll' " scroll
Plug 'https://github.com/tiagofumo/vim-nerdtree-syntax-highlight' " beautiful nerdtree
Plug 'https://github.com/tomtom/tcomment_vim' " easy commentin
Plug 'https://github.com/tpope/vim-fugitive'
Plug 'https://github.com/tpope/vim-surround'
Plug 'https://github.com/ctrlpvim/ctrlp.vim' " fuzzy find files


" Nice to have
Plug 'https://github.com/Shougo/echodoc.vim' " function documentation below the status bar
Plug 'https://github.com/Yggdroot/indentLine' " indentation indicator
Plug 'https://github.com/airblade/vim-gitgutter' " git status on the side
Plug 'https://github.com/christoomey/vim-tmux-navigator' " easy vim + tmux navigation
Plug 'https://github.com/liuchengxu/vista.vim' " tags
Plug 'https://github.com/ntpeters/vim-better-whitespace' " show whitespace on the interface
Plug 'https://github.com/reisnobre/vim-evanesco' " easy :noh
Plug 'https://github.com/wakatime/vim-wakatime' " time tracking
Plug 'https://github.com/git-time-metric/gtm-vim-plugin' " time tracking
Plug 'https://github.com/ryanoasis/vim-devicons' " nice devicons  on vim

" To be replaced or removed
Plug 'https://github.com/brooth/far.vim' " global refactor



" =============== SYNTAX
" Essentials
Plug 'https://github.com/pangloss/vim-javascript'
" Nice to have

" To be replaced or removed
Plug 'https://github.com/StanAngeloff/php.vim'
" Plug 'https://github.com/posva/vim-vue'
" Plug 'https://github.com/ap/vim-css-color'
"
" =============== SNIPPETS
Plug 'https://github.com/freencis/snippets'
Plug 'https://github.com/reisnobre/snippets.nvim'
Plug 'https://github.com/mattn/emmet-vim'


" =============== THEMES
Plug 'https://github.com/arcticicestudio/nord-vim'
Plug 'https://github.com/rakr/vim-two-firewatch'

" =============== VAULT
" Plug 'justinmk/vim-syntax-extra'
" Plug 'jwalton512/vim-blade'
" Plug 'kshenoy/vim-signature'
" Plug 'majutsushi/tagbar'
" Plug 'myusuf3/numbers.vim'
" Plug 'othree/javascript-libraries-syntax.vim'
" Plug 'terryma/vim-multiple-cursors'
" Plug 'tpope/vim-repeat'
" Plug 'honza/vim-snippets'
" Plug 'https://github.com/SirVer/ultisnips.git'
" Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'scrooloose/nerdcommenter'
" Plug 'dense-analysis/ale' " linter
" Plug 'maximbaz/lightline-ale' " linter integration
" Plug 'HerringtonDarkholme/yats.vim' " TS Syntax UI
" Plug 'SirVer/ultisnips'
call plug#end()
" }}}
