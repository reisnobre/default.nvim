"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => COC
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! s:coc_config() abort
  let root_patterns = ['.vim/', '.git/', '.hg/', '.projections.json']
  let g:coc_status_error_sign   = ''
  let g:coc_status_warning_sign = ''
endfunction

autocmd CursorHold * silent call CocActionAsync('highlight') " Highlight symbol under cursor on CursorHold

" =============== Extensions to install
"
let g:coc_global_extensions = [
  \ 'coc-css',
  \ 'coc-emmet',
  \ 'coc-eslint',
  \ 'coc-explorer',
  \ 'coc-fzf-preview',
  \ 'coc-git',
  \ 'coc-highlight',
  \ 'coc-html',
  \ 'coc-json',
  \ 'coc-marketplace',
  \ 'coc-pairs',
  \ 'coc-phpls',
  \ 'coc-python',
  \ 'coc-snippets',
  \ 'coc-tsserver',
  \ 'coc-vetur',
  \ 'coc-vimlsp',
  \ 'coc-vimtex',
  \ 'coc-yank',
  \ 'coc-tailwindcss'
  \ ]

" =============== General configuration

" Use tab for trigger completion with characters ahead and navigate.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'

command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" =============== Functions

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => COC Mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)

inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac <Plug>(coc-codeaction)
nmap <leader>acl <Plug>(coc-codeaction-line)

" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

nmap <leader>qr  <Plug>(coc-refactor)

" Coc diagnostic
nmap <silent> cn <Plug>(coc-diagnostic-next)
nmap <silent> cp <Plug>(coc-diagnostic-prev)

imap <silent><expr> <Esc> pumvisible() ? "\<C-e>" : "\<Esc>"
imap <silent><expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
imap <silent><expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

nnoremap <silent> <Leader>k :call <SID>show_documentation()<CR>

" =============== COC-EXPLORER
nnoremap <silent><Leader>n :CocCommand explorer<CR>

" =============== COC-FZF-PREVIEW
let g:fzf_preview_use_dev_icons = 1
" Devicons can make fzf-preview slow when the number of results is high
" By default icons are disable when number of results is higher that 5000
let g:fzf_preview_dev_icons_limit = 10000

function! s:fzf_preview_settings() abort
  let g:fzf_preview_fugitive_processes = fzf_preview#remote#process#get_default_processes('open-file', 'coc')
  let g:fzf_preview_fugitive_processes['ctrl-a'] = get(function('s:fugitive_add'), 'name')
  let g:fzf_preview_fugitive_processes['ctrl-r'] = get(function('s:fugitive_reset'), 'name')
  let g:fzf_preview_fugitive_processes['ctrl-c'] = get(function('s:fugitive_patch'), 'name')

  let g:fzf_preview_grep_preview_cmd = 'COLORTERM=truecolor ' . g:fzf_preview_grep_preview_cmd
endfunction

function! s:fugitive_add(paths) abort
  for path in a:paths
    execute 'silent G add ' . path
  endfor
  echomsg 'Git add ' . join(a:paths, ', ')
endfunction

function! s:fugitive_reset(paths) abort
  for path in a:paths
    execute 'silent G reset ' . path
  endfor
  echomsg 'Git reset ' . join(a:paths, ', ')
endfunction

augroup fzf_preview
  autocmd!
  autocmd User fzf_preview#initialized call s:fzf_preview_settings()
augroup END

function! s:fugitive_add(paths) abort
  for path in a:paths
    execute 'silent G add ' . path
  endfor
  echomsg 'Git add ' . join(a:paths, ', ')
endfunction

function! s:fugitive_reset(paths) abort
  for path in a:paths
    execute 'silent G reset ' . path
  endfor
  echomsg 'Git reset ' . join(a:paths, ', ')
endfunction
function! s:fugitive_patch(paths) abort
  for path in a:paths
    execute 'silent tabedit ' . path . ' | silent Gdiff'
  endfor
  echomsg 'Git add --patch ' . join(a:paths, ', ')
endfunction

" theme
let $FZF_PREVIEW_PREVIEW_BAT_THEME = 'Nord'
let $BAT_THEME = 'Nord'

" truecolors
function! s:fzf_preview_settings() abort
  let g:fzf_preview_command = 'COLORTERM=truecolor ' . g:fzf_preview_command
  let g:fzf_preview_grep_preview_cmd = 'COLORTERM=truecolor ' . g:fzf_preview_grep_preview_cmd
endfunction

" =============== COC-FZF-PREVIEW BINDINGS

" define a map for dealing with files
nmap <Leader>f [fzf-p]
xmap <Leader>f [fzf-p]

" =============== list files
" List files by mru git
nnoremap <silent> [fzf-p]p     :<C-u>CocCommand fzf-preview.FromResources project_mru git<CR>

" List files from selected resources eg (project, git, directory, buffer, project_old, project_mru, project_mrw, old, mru, mrw)
nnoremap <silent> [fzf-p]o     :<C-u>CocCommand fzf-preview.FromResources buffer project_mru<CR>

" =============== buffers
" List files open on buffer, you can close marking with tab and closing with C-q
nnoremap <silent> [fzf-p]b     :<C-u>CocCommand fzf-preview.Buffers<CR>
nnoremap <silent> [fzf-p]B     :<C-u>CocCommand fzf-preview.AllBuffers<CR>
" Jump to a buffer that is already open
nnoremap <silent> [fzf-p]j     :<C-u>CocCommand fzf-preview.Jumps<CR>

" =============== search
" search for query
nnoremap <silent> [fzf-p]/     :<C-u>CocCommand fzf-preview.Lines --add-fzf-arg=--no-sort --add-fzf-arg=--query=""<CR>
" search for word what is in the query
nnoremap <silent> [fzf-p]*     :<C-u>CocCommand fzf-preview.Lines --add-fzf-arg=--no-sort --add-fzf-arg=--query="<C-r>=expand('<cword>')<CR>"<CR>
" search on project
nnoremap          [fzf-p]a     :<C-u>CocCommand fzf-preview.ProjectGrep<Space>
xnoremap          [fzf-p]a     "sy:CocCommand   fzf-preview.ProjectGrep<Space>-F<Space>"<C-r>=substitute(substitute(@s, '\n', '', 'g'), '/', '\\/', 'g')<CR>"

" =============== fixes
nnoremap <silent> [fzf-p]q     :<C-u>CocCommand fzf-preview.QuickFix<CR>
nnoremap <silent> [fzf-p]l     :<C-u>CocCommand fzf-preview.LocationList<CR>

" =============== git integration
" List files by mru git
nnoremap <silent> [fzf-p]ga    :<C-u>CocCommand fzf-preview.GitActions<CR>
nnoremap <silent> [fzf-p]gs    :<C-u>CocCommand fzf-preview.GitStatus<CR>
" List changes for on a  file
nnoremap <silent> [fzf-p]gc    :<C-u>CocCommand fzf-preview.Changes<CR>

" navigate chunks of current buffer
nmap [g <Plug>(coc-git-prevchunk)
nmap ]g <Plug>(coc-git-nextchunk)
