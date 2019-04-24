"" pop-up (completion) menu mappings {{{
  imap <silent><expr> <CR> pumvisible() ? "\<C-y>" : "\<Plug>delimitMateCR"
  imap <silent><expr> <Esc> pumvisible() ? "\<C-e>" : "\<Esc>"
  imap <silent><expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
  imap <silent><expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
 
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

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
