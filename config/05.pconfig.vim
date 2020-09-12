"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => SETTINGS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:UltiSnipsExpandTrigger="<c-j>"

" =============== Goyo 
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

let g:user_emmet_leader_key='<C-y>' " EMMET Remap
let g:python_highlight_all = 1
let g:rooter_silent_chdir = 1
let g:gtm_plugin_status_enabled = 1
let g:indentLine_enabled = 1
let g:vue_pre_processors = ['scss']
let g:matchup_matchparen_offscreen = {}
let g:indentLine_fileTypeExclude=['coc-explorer', 'fzf', 'startify']

" =============== Fugitive
nnoremap <space>ga :Git add %:p<CR><CR>
nnoremap <space>gt :Gcommit -v -q %:p<CR>
nnoremap <space>gc :Gcommit -v -q<CR>
nnoremap <space>gdf :Gdiff<CR>
nnoremap <space>ge :Gedit<CR>
nnoremap <space>grf :Gread<CR>
nnoremap <space>gl :silent! Glog<CR>:bot copen<CR>

nnoremap <space>gw :Gwrite<CR><CR>
nnoremap <space>gp :Ggrep<Space>
nnoremap <space>gm :Gmove<Space>
nnoremap <space>gb :Git branch<Space>
nnoremap <space>go :Git checkout<Space>
nnoremap <space>gps :Dispatch! git push<CR>
nnoremap <space>gpl :Dispatch! git pull<CR>

" =============== Mundo

" Enable persistent undo so that undo history persists across vim sessions
set undofile
set undodir=~/.vim/undo

