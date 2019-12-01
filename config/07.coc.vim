"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => COC
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

function! s:coc_config() abort
  let root_patterns = ['.vim/', '.git/', '.hg/', '.projections.json']

  let g:coc_status_error_sign   = ''
  let g:coc_status_warning_sign = ''
endfunction

autocmd CursorHold * silent call CocActionAsync('highlight')

let g:coc_global_extensions = [
  \ 'coc-css',
  \ 'coc-emmet',
  \ 'coc-eslint',
  \ 'coc-html',
  \ 'coc-imselect',
  \ 'coc-highlight',
  \ 'coc-json',
  \ 'coc-marketplace',
  \ 'coc-pairs',
  \ 'coc-phpls',
  \ 'coc-prettier',
  \ 'coc-python',
  \ 'coc-snippets',
  \ 'coc-tsserver',
  \ 'coc-vetur',
  \ 'coc-vimlsp',
  \ 'coc-yank',
  \ ]


" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
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

noremap <silent><expr> <C-j> coc#refresh()

inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Highlight symbol under cursor on CursorHold
" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Coc diagnostic
nmap <silent> cn <Plug>(coc-diagnostic-next)
nmap <silent> cp <Plug>(coc-diagnostic-prev)
nnoremap <silent> <Leader>d  :<C-u>CocList diagnostics<cr>
" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.

imap <silent><expr> <Esc> pumvisible() ? "\<C-e>" : "\<Esc>"
imap <silent><expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
imap <silent><expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

nnoremap <silent> <Leader>k :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction


command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')
