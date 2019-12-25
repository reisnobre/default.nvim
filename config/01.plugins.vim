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
Plug 'https://github.com/jalvesaq/Nvim-R' " work with R language
Plug 'https://github.com/tpope/vim-obsession' " save sessions

" To learn
Plug 'https://github.com/tpope/vim-fugitive' " git interaction
Plug 'https://github.com/tpope/vim-surround' " easy sorround of words

" To be replaced or removed
Plug 'https://github.com/brooth/far.vim' " global refactor

" Plug 'https://github.com/jeetsukumaran/vim-buffergator' " manage vim buffers
" Plug 'https://github.com/scrooloose/nerdtree' " file tree
" Plug 'https://github.com/Xuyuanp/nerdtree-git-plugin' " indicates on nerdtree git status of a file
" Plug 'https://github.com/tiagofumo/vim-nerdtree-syntax-highlight' " beautiful nerdtree

" Testing
Plug 'https://github.com/junegunn/goyo.vim'
Plug 'https://github.com/mateusbraga/vim-spell-pt-br'

" =============== SYNTAX
" Essentials
Plug 'https://github.com/pangloss/vim-javascript'
Plug 'https://github.com/posva/vim-vue'
Plug 'https://github.com/StanAngeloff/php.vim'
Plug 'https://github.com/jwalton512/vim-blade'

" Nice to have

" To be replaced or removed

" Testing
Plug 'https://github.com/chr4/nginx.vim'
Plug 'https://github.com/lervag/vimtex'
" Plug 'https://github.com/sheerun/vim-polyglot'
" Plug 'https://github.com/cakebaker/scss-syntax.vim'
" Plug 'https://github.com/isruslan/vim-es6'


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
"
" EMMET Remap
let g:user_emmet_leader_key='<C-y>'

" Quick comment shit
noremap <Leader>cs 80i=<esc>

