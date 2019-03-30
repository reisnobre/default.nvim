
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

" CTRLP ignore files
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe,*.meta,*.cs.meta
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn|meta|swp|wav)$'
let g:buffergator_autoexpand_on_split = 0

ru macros/matchit.vim
set fileformat=unix

let g:used_javascript_libs = 'vue,underscore'
let g:vue_disable_pre_processors=1

" Ale error navigation
" nnoremap <silent> <C-k>1 :exe "normal \<Plug>(ale_previous)"<CR>
" nnoremap <silent> <C-j>1 :exe "normal \<Plug>(ale_next)"<CR>
" nmap <silent> <C-k> <Plug>(ale_previous_wrap)
" nmap <silent> <C-j> <Plug>(ale_next_wrap)

autocmd BufRead, BufNewFile *.vue setlocal filetype=vue.html.javascript.css

" autocmd BufWinLeave *.* mkview
" autocmd BufWinEnter *.* silent loadview 
" autocmd BufNew * execute ":tabmove99"

let g:UltiSnipsSnippetsDir="~/.config/nvim/plugged/snippets/UltiSnips"

"
" "NERDtree shit
let NERDTreeQuitOnOpen=1
"
"Session
let g:session_autoload = 'yes'


"Convert line endings from dos to unix
noremap <Leader>ç :e ++ff=dos <bar> set ff=unix <bar> update <CR>

"Remember options when reopening files
set viewoptions=cursor,folds,slash,unix,options

"+--- FAR ---+
let g:ackprg = 'ag --vimgrep --smart-case'                                                   
cnoreabbrev ag Ack
cnoreabbrev aG Ack
cnoreabbrev Ag Ack
cnoreabbrev AG Ack
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

let g:gtm_plugin_status_enabled = 1
