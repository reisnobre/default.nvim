"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => SETTINGS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:UltiSnipsExpandTrigger="<c-j>"

" =============== FZF
let g:fzf_layout = { 'window': 'call FloatingFZF(0.9, 0.6, "Comment")' }
let g:fzf_files_options = '-m --preview "bat --theme=Nord --color always --style numbers {2..} | head -'.&lines.'"'

" https://coreyja.com/vim-fzf-with-devicons/
command! -bang -nargs=? -complete=dir Buffers 
    \ call fzf#vim#buffers(<q-args>, {'options': g:fzf_files_options}, <bang>0)

function! FZF_default(command) " search in git files

  function! s:edit_devicon_prepended_file(item)
    let l:file_path = a:item[4:-1]
    execute 'silent e' l:file_path
  endfunction

  " echo a:command

  call fzf#run({
        \ 'source': a:command.' | devicon-lookup --color',
        \ 'sink':   function('s:edit_devicon_prepended_file'),
        \ 'options': '-m ' . g:fzf_files_options,
        \ 'window':    'call FloatingFZF(0.9, 0.6, "Comment")'})
endfunction
" "
nnoremap <silent> <C-p> :call FZF_default("git ls-files --exclude-standard \| uniq")<CR>
nnoremap <silent> <Leader>a :Ag<CR>
nnoremap <silent> <Leader>b :Buffers<CR>


" =============== COC-FZF
noremap <silent> <Leader>d :CocFzfListDiagnostics<CR>
noremap <silent> <Leader>e :CocFzfListExtensions<CR>
noremap <silent> <Leader>da :CocFzfListActions<CR>


" =============== ACK
" nnoremap <Leader>a :Ack! -w 
" let g:ackprg = 'ag --vimgrep --smart-case'
" let g:ackhighlight = 1
" set backupcopy=yes

" =============== GOYO
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

" =============== VISTA
noremap <silent> <Leader>v :Vista!!<CR>

let g:vista_icon_indent = ["‚ï∞‚îÄ‚ñ∏ ", "‚îú‚îÄ‚ñ∏ "]
let g:vista_sidebar_width = &columns / 4
let g:vista_executive_for = {
      \   'c': 'coc', 'cpp': 'coc', 'go': 'coc', 'rust': 'coc', 'python': 'coc',
      \   'html': 'coc', 'css': 'coc', 'javascript': 'coc', 'typescript': 'coc'
      \}

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
nnoremap <space>gs :Gstatus<CR>
nnoremap <space>gc :Gcommit -v -q<CR>
nnoremap <space>gt :Gcommit -v -q %:p<CR>
" nnoremap <space>gd :Gdiff<CR>
nnoremap <space>ge :Gedit<CR>
" nnoremap <space>gr :Gread<CR>
nnoremap <space>gw :Gwrite<CR><CR>
nnoremap <space>gl :silent! Glog<CR>:bot copen<CR>
nnoremap <space>gp :Ggrep<Space>
nnoremap <space>gm :Gmove<Space>
nnoremap <space>gb :Git branch<Space>
nnoremap <space>go :Git checkout<Space>
nnoremap <space>gps :Dispatch! git push<CR>
nnoremap <space>gpl :Dispatch! git pull<CR>
