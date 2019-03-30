" Sections
"    -> Plugins 
"    -> General
"    -> VIM user interface
"    -> Colors and Fonts
"    -> Files and backups
"    -> Text, tab and indent related
"    -> Visual mode related
"    -> Moving around, tabs and buffers
"    -> Status line
"    -> Editing mappings
"    -> vimgrep searching and cope displaying
"    -> Spell checking
"    -> Misc
"    -> Helper functions
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Sets how many lines of history VIM has to remember
set history=500

" Enable filetype plugins
filetype plugin on
" filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ' '
let maplocalleader = ' '

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Set 7 lines 

" Makes search act like search in modern browsers
set incsearch 

" Don't redraw while executing macros (good performance config)
set lazyredraw 

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch 

" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Enable syntax highlighting
syntax enable 

" Properly disable sound on errors on MacVim
if has("gui_macvim")
	autocmd GUIEnter * set vb t_vb=
endif

" Enable 256 colors palette in Gnome Terminal
if $COLORTERM == 'gnome-terminal'
	set t_Co=256
endif

" Add a bit extra margin to the left
set foldcolumn=1
set background=dark
" colorscheme PaperColor
colorscheme nord

" Set extra options when running in GUI mode
if has("gui_running")
	set guioptions-=T
	set guioptions-=e
	set t_Co=256
	set guitablabel=%M\ %t
endif

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Language specifics
au Filetype php, python call TabSize4()
function TabSize4()
	set tabstop=4
 	set softtabstop=4
 	set shiftwidth=4
endfunction

au Filetype html,javascript,css,scss,sass,vue call TabSize2()
function TabSize2()
	set tabstop=2
 	set softtabstop=2
 	set shiftwidth=2
endfunction

" Linebreak on 500 characters
" set lbr
" set tw=500

set ai "Auto indent
" set si "Smart indent
set nowrap "No wrap lines

""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""

set go-=m
set go-=T
set go-=r
set go-=L
set nocompatible
set tabstop=2
set shiftwidth=2
set autochdir 
set shellslash
set foldmethod=indent
set laststatus=2
let g:nord_uniform_status_lines = 1
set clipboard=unnamed
set expandtab


" CTRLP ignore files
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe,*.meta,*.cs.meta
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn|meta|swp|wav)$'
let g:buffergator_autoexpand_on_split = 0

ru macros/matchit.vim
set fileformat=unix

let g:used_javascript_libs = 'vue,underscore'
let g:vue_disable_pre_processors=1


"+--- Prompt for a command to run ---+
map <Leader>tp :VimuxPromptCommand<CR>

"+--- Run last command executed by VimuxRunCommand ---+
map <Leader>tl :VimuxRunLastCommand<CR>

"+--- Inspect runner pane ---+
map <Leader>ti :VimuxInspectRunner<CR>

"+--- Leader --+

"+--- Fast Save ---+
noremap <Leader>s :update<CR>

" JJ ESC
ino jj <esc>

" Ale error navigation
" nnoremap <silent> <C-k>1 :exe "normal \<Plug>(ale_previous)"<CR>
" nnoremap <silent> <C-j>1 :exe "normal \<Plug>(ale_next)"<CR>
" nmap <silent> <C-k> <Plug>(ale_previous_wrap)
" nmap <silent> <C-j> <Plug>(ale_next_wrap)

"+--- Enable Elite mode ---+
let g:elite_mode=1
if get(g:, 'elite_mode')
 	nnoremap <Up>    :resize +2<CR>
 	nnoremap <Down>  :resize -2<CR>
 	nnoremap <Left>  :vertical resize +2<CR>
 	nnoremap <Right> :vertical resize -2<CR>
endif

"+--- Emmet ---+
" let g:user_emmet_leader_key='<C-Q>'
let g:user_emmet_leader_key='<C-y>'
autocmd BufRead, BufNewFile *.vue setlocal filetype=vue.html.javascript.css
autocmd FileType javascript nmap <buffer> <C-]> :YcmCompleter GoTo<CR>

" autocmd BufWinLeave *.* mkview
" autocmd BufWinEnter *.* silent loadview 
" autocmd BufNew * execute ":tabmove99"

"+--- Utilsnips ---+
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-tab>"

let g:UltiSnipsSnippetsDir="~/.config/nvim/plugged/snippets/UltiSnips"

"+--- Utilsnips ---+

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard -x *.meta']
"
" "NERDtree shit
let NERDTreeQuitOnOpen=1
"
"Session
let g:session_autoload = 'yes'

" "Fgods
set pastetoggle=<F2>
noremap <F3> :set ft=
noremap <F4> :call TabSize()<Left><Left>
noremap <F11> :so $MYVIMRC <CR>
noremap <F12> :tabe $MYVIMRC <CR>

"+--- Smooth Scrolling ---+
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 10, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 10, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 10, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 10, 4)<CR>

"Convert line endings from dos to unix
noremap <Leader>ç :e ++ff=dos <bar> set ff=unix <bar> update <CR>

" Awesome split moving, CTRL+j/k to switch between splits. Obs.: The guy who
"+--- Split Moving ---+
map <c-j> <C-W>j<C-W>_
map <c-k> <C-W>k<C-W>_
map <c-h> <C-W>h<C-W>\|
map <c-l> <C-W>l<C-W>\|

" "Learn it
cnoremap $t <CR>:t''<CR>
cnoremap $T <CR>:T''<CR>
cnoremap $m <CR>:m''<CR>
cnoremap $M <CR>:M''<CR>
cnoremap $d <CR>:d<CR>``
"
" "Quick single file refactor
noremap <Leader>r ye:%s,",

" "comment shit
noremap <Leader>cs 80i=<esc>

"Quick all files refactor
noremap <Leader>f ye:Far " 

" "NERDTree
nnoremap <Leader>n :NERDTree<CR>

"Remember options when reopening files
set viewoptions=cursor,folds,slash,unix,options

"+--- FAR ---+
let g:ackprg = 'ag --vimgrep --smart-case'                                                   
cnoreabbrev ag Ack
cnoreabbrev aG Ack
cnoreabbrev Ag Ack
cnoreabbrev AG Ack
nnoremap <Leader>a :Ack! -w 
let g:ackhighlight = 1
set backupcopy=yes
"
noremap <C-w>] <C-w>\|
"
" " MULTICURSOR
" set backspace=indent,eol,start
" let g:multi_cursor_exit_from_insert_mode=0
"
" nnoremap <F5> "=strftime("%c")<CR>P
" inoremap <F5> <C-R>=strftime("%c")<CR>
"
"+--- itchyny/lightline.vim ---+

let g:gtm_plugin_status_enabled = 1
let g:lightline = {
 			\ 'colorscheme': 'nord',
 			\ 'active': {
 			\   'left': [
 			\     	[ 'mode', 'paste' ],
			\     	[ 'gtmstatus','fugitive', 'filename', 'readonly', 'modified' ],
 			\   ],
 			\   'right': [ 
 			\		[ 'linter_checking','linter_errors', 'linter_warnings', 'linter_ok'],
 			\		[ 'lineinfo' ],
 			\       [ 'percent' ],
 			\       [ 'fileformat', 'fileencoding', 'filetype'],
 			\	]
 			\ },
 			\ 'component_function': {
 			\   'fugitive': 'LightlineFugitive',
 			\   'readonly': 'LightlineReadonly',
 			\   'modified': 'LightlineModified',
 			\   'filename': 'LightlineFilename',
 			\	'gtmstatus': 'GTMStatusline'
 			\ },
 			\ 'separator': {
 			\   'left': '',
 			\   'right': ''
		\ },
 			\ 'subseparator': {
 			\   'left': '',
 			\   'right': ''
 			\ }
 			\ }
let g:lightline.component_expand = {
 			\  'linter_checking': 'lightline#ale#checking',
 			\  'linter_warnings': 'lightline#ale#warnings',
 			\  'linter_errors': 'lightline#ale#errors',
 			\  'linter_ok': 'lightline#ale#ok',
 			\ }
let g:lightline.component_type = {
			\     'linter_checking': 'warning',
 			\     'linter_warnings': 'warning',
 			\     'linter_errors': 'error',
 			\     'linter_ok': 'left',
 			\ }
function! LightlineModified()
	if &filetype == "help"
		return ""
	elseif &modified
		return "+"
	elseif &modifiable
		return ""
	else
		return ""
	endif
endfunction
function! LightlineReadonly()
	if &filetype == "help"
 		return ""
 	elseif &readonly
 		return ""
 	else
 		return ""
 	endif
endfunction

function! LightlineFugitive()
	if exists("*fugitive#head")
 		let branch = fugitive#head()
 		return branch !=# '' ? ' '.branch : ''
 	endif
 	return ''
endfunction

function! LightlineFilename()
	return ('' != LightlineReadonly() ? LightlineReadonly() . ' ' : '') .
 				\ ('' != expand('%:t') ? expand('%:t') : '[No Name]') .
 				\ ('' != LightlineModified() ? ' ' . LightlineModified() : '')
endfunction
