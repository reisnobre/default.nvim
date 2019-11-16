"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => COC
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

function! s:coc_config() abort
  let root_patterns = ['.vim/', '.git/', '.hg/', '.projections.json']

  let g:coc_status_error_sign   = ''
  let g:coc_status_warning_sign = ''

  call coc#config('suggest', {
  \   'snippetIndicator'        : ' ',
  \   'messageLevel'            : 'warning',
  \   'completionItemKindLabels': {
  \     'function'              : "\uf794",
  \     'method'                : "\uf6a6",
  \     'variable'              : "\uf71b",
  \     'constant'              : "\uf8ff",
  \     'struct'                : "\ufb44",
  \     'class'                 : "\uf0e8",
  \     'interface'             : "\ufa52",
  \     'text'                  : "\ue612",
  \     'enum'                  : "\uf435",
  \     'enumMember'            : "\uf02b",
  \     'module'                : "\uf668",
  \     'color'                 : "\ue22b",
  \     'property'              : "\ufab6",
  \     'field'                 : "\uf93d",
  \     'unit'                  : "\uf475",
  \     'file'                  : "\uf471",
  \     'value'                 : "\uf8a3",
  \     'event'                 : "\ufacd",
  \     'folder'                : "\uf115",
  \     'keyword'               : "\uf893",
  \     'snippet'               : "\uf64d",
  \     'operator'              : "\uf915",
  \     'reference'             : "\uf87a",
  \     'typeParameter'         : "\uf278",
  \     'default'               : "\uf29c"
  \   }
  \ })

  call coc#config('signature', {
  \   'target': 'echo',
  \   'preferShownAbove': v:false
  \ })

  call coc#config('preferences', {
  \   'hoverTarget': 'echo',
  \ })

  call coc#config('diagnostic', {
              \ 'messageTarget'  : 'echo',
              \ 'errorSign'  : '',
              \ 'warningSign': '',
              \ 'infoSign'   : '',
              \ 'hintSign'   : 'ﯦ'
              \ })

  call coc#config('snippets', {
  \   'extends': {
  \     'cpp': ['c'],
  \     'javascriptreact': ['javascript'],
  \     'typescript': ['javascript']
  \   },
  \   'ultisnips': {
  \     'directories': ['UltiSnips', 'gosnippets/UltiSnips']
  \   }
  \ })

  call coc#config('git', {
  \   'enableGlobalStatus'       : v:false,
  \   'addedSign.text'           : '',
  \   'removedSign.text'         : '▁',
  \   'changedSign.text'         : '',
  \   'topRemovedSign.text'      : '▔',
  \   'changeRemovedSign.text'   : '',
  \   'addedSign.hlGroup'        : 'GitGutterAdd',
  \   'changedSign.hlGroup'      : 'GitGutterChange',
  \   'removedSign.hlGroup'      : 'GitGutterDelete',
  \   'topRemovedSign.hlGroup'   : 'GitGutterDelete',
  \   'changeRemovedSign.hlGroup': 'GitGutterChangeDelete'
  \ })

  call coc#config('eslint', {
  \   'packageManager': 'yarn'
  \ })

  call coc#config('python', {
  \   'jediEnabled': v:false
  \ })

endfunction

autocmd CursorHold * silent call CocActionAsync('highlight')

let g:coc_global_extensions = [
  \ 'coc-css',
  \ 'coc-emmet',
  \ 'coc-html',
  \ 'coc-imselect',
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
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

noremap <silent><expr> <C-j> coc#refresh()
nnoremap <silent> <Leader>k :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

imap <silent><expr> <Esc> pumvisible() ? "\<C-e>" : "\<Esc>"
imap <silent><expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
imap <silent><expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Use <C-d> for select selections ranges, needs server support, like: coc-tsserver, coc-python
" nmap <silent> <C-d> <Plug>(coc-range-select)
" xmap <silent> <C-d> <Plug>(coc-range-select)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Coc diagnostic 
nmap <silent> cn <Plug>(coc-diagnostic-next)
nmap <silent> cp <Plug>(coc-diagnostic-prev)
" set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
