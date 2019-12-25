"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => SETTINGS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" =============== CTRLP
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe,*.meta,*.cs.meta
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn|meta|swp|wav)$'
let g:buffergator_autoexpand_on_split = 0


" =============== NERDTree
nnoremap <Leader>n :CocCommand explorer<CR>
" nmap ge :CocCommand explorer<CR>

" let NERDTreeQuitOnOpen=1
" let g:NERDTreeGitStatusWithFlags = 1
" let g:NERDTreeIgnore = ['^node_modules$']

" =============== FAR
let g:ackprg = 'ag --vimgrep --smart-case'
cnoreabbrev ag Ack
cnoreabbrev aG Ack
cnoreabbrev Ag Ack
cnoreabbrev AG Ack
let g:ackhighlight = 1
set backupcopy=yes

" vista.vim {{{
let g:vista_icon_indent = ["‚ï∞‚îÄ‚ñ∏ ", "‚îú‚îÄ‚ñ∏ "]
let g:vista_sidebar_width = &columns / 4
let g:vista_executive_for = {
      \   'c': 'coc', 'cpp': 'coc', 'go': 'coc', 'rust': 'coc', 'python': 'coc',
      \   'html': 'coc', 'css': 'coc', 'javascript': 'coc', 'typescript': 'coc'
      \}
" vim-better-whitespace {{{
let g:better_whitespace_filetypes_blacklist = [
\   'diff', 'gitcommit', 'qf', 'help', 'vim-plug', 'denite', 'denite-filter',
\   'vista', 'vista_kind', 'Mundo', 'MundoDiff', 'defx', 'quickrun', 'codi',
\   'mail', 'muttrc'
\ ]

let g:better_whitespace_operator = ''
let g:gtm_plugin_status_enabled = 1
let g:indentLine_enabled = 1
let g:vue_pre_processors = ['scss']

" =============== Goyo
nnoremap <Leader>g :Goyo<CR>

function! s:goyo_enter()
  if executable('tmux') && strlen($TMUX)
    silent !tmux set status off
    silent !tmux list-panes -F '\#F' | grep -q Z || tmux resize-pane -Z
  endif
  set noshowmode
  set noshowcmd
  set scrolloff=999
  set linebreak
endfunction

function! s:goyo_leave()
  if executable('tmux') && strlen($TMUX)
    silent !tmux set status on
    " silent !tmux list-panes -F '\#F' | grep -q Z && tmux resize-pane -Z
  endif
  set showmode
  set showcmd
  set scrolloff=5
  set nolinebreak
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()


