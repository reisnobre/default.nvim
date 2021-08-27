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
  \ 'coc-highlight',
  \ 'coc-html',
  \ 'coc-imselect',
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

" =============== Telescope

" define a map for dealing with files
nmap <Leader>f [fzf-p]
xmap <Leader>f [fzf-p]

" =============== list files
" List files by mru git
nnoremap <silent> [fzf-p]p     :<C-u>Telescope find_files<CR>
nnoremap <silent> [fzf-p]a     :<C-u>Telescope live_grep<CR>
nnoremap <silent> [fzf-p]b     :<C-u>Telescope buffers<CR>
nnoremap <silent> [fzf-p]gc    :<C-u>Telescope git_commits<CR>
nnoremap <silent> [fzf-p]gs    :<C-u>Telescope git_status<CR>

" navigate chunks of current buffer
nmap [g <Plug>(coc-git-prevchunk)
nmap ]g <Plug>(coc-git-nextchunk)
