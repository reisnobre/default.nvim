"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => SETTINGS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" =============== CTRLP
" set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe,*.meta,*.cs.meta
" let g:ctrlp_map = '<c-p>'
" let g:ctrlp_cmd = 'CtrlP'
" let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
" let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn|meta|swp|wav)$'
" let g:buffergator_autoexpand_on_split = 0

" =============== FZF
" nnoremap <silent> <C-p> :GFiles<CR>
" map <silent> <C-f> :call Fzf_files_with_dev_icons($FZF_DEFAULT_COMMAND)<CR>
noremap <silent> <C-p> :call Fzf_files_with_dev_icons("git ls-files \| uniq")<CR>
noremap <silent> <Leader>df :call Fzf_git_diff_files_with_dev_icons()<CR>


" =============== NERDTree
function s:explorer()
endfunction

nnoremap <Leader>n   :CocCommand explorer<CR>
nmap ge :CocCommand explorer<CR>
let g:indentLine_fileTypeExclude=['coc-explorer', 'fzf']
" =============== NERDTree
" nnoremap <Leader>n :NERDTree<CR>
" let NERDTreeQuitOnOpen=1	" nmap ge :CocCommand explorer<CR>
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

" EMMET Remap
let g:user_emmet_leader_key='<C-y>'

" Quick comment shit
noremap <Leader>cs 80i=<esc>

let g:python_highlight_all = 1

let g:ale_linters = {
\   'c': [], 'cpp': [], 'rust': [], 'go': [], 'python': [], 'sh': [],
\   'html': [], 'css': [],
\   'javascript': [], 'typescript': [], 'reason': [], 'dart': [],
\   'json': [], 'vue': [],
\   'tex': [], 'latex': [], 'bib': [], 'bibtex': []
\ }
let g:ale_linter_aliases = {
\   'pandoc': 'markdown'
\ }

let g:ale_sign_info          = ''
let g:ale_sign_error         = ''
let g:ale_sign_warning       = ''
let g:ale_sign_style_error   = ''
let g:ale_sign_style_warning = ''

let g:ale_lint_on_insert_leave = 1
let g:ale_lint_on_text_changed = 'normal'

" autocmd vimrc User ALEJobStarted call lightline#update()
" autocmd vimrc User ALELintPost   call lightline#update()
" autocmd vimrc User ALEFixPost    call lightline#update()

" Diagnostic's highlighting {{{
function! s:ale_highlight() abort
  hi! link ALEErrorLine SignColumn
  hi! link ALEWarningLine SignColumn
  hi! link ALEInfoLine SignColumn
  if exists('g:loaded_lightline')
    let c = g:lightline#palette().normal.error[0]
    let i = s:farthest_color(s:bg('ALEErrorLine', 'gui'), c[:1])
    call s:hi('ALEErrorSign', c[0+i], s:bg('ALEErrorLine', 'gui')
         \                  , c[2+i], s:bg('ALEErrorLine', 'cterm'))
    let c = g:lightline#palette().normal.warning[0]
    let i = s:farthest_color(s:bg('ALEWarningLine', 'gui'), c[:1])
    call s:hi('ALEWarningSign', c[0+i], s:bg('ALEWarningLine', 'gui')
         \                   , c[2+i], s:bg('ALEWarningLine', 'cterm'))
    let c = g:lightline#palette().tabline.tabsel[0]
    let i = s:farthest_color(s:bg('ALEInfoLine', 'gui'), c[:1])
    call s:hi('ALEInfoSign', c[0+i], s:bg('ALEInfoLine', 'gui')
         \                 , c[2+i], s:bg('ALEInfoLine', 'cterm'))
  else
    call s:hi('ALEErrorSign'   , 'lightred'  , s:bg('ALEErrorLine'   , 'gui')
         \                     , 'lightred'  , s:bg('ALEErrorLine'   , 'cterm'))
    call s:hi('ALEWarningSign' , 'yellow'    , s:bg('ALEWarningLine' , 'gui')
         \                     , 'yellow'    , s:bg('ALEWarningLine' , 'cterm'))
    call s:hi('ALEInfoSign'    , 'lightblue' , s:bg('ALEInfoLine'    , 'gui')
         \                     , 'lightblue' , s:bg('ALEInfoLine'    , 'cterm'))
  endif
endfunction

" autocmd vimrc VimEnter,ColorScheme * call s:ale_highlight()
