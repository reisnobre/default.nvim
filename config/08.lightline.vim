"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Lightline 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:lightline = {
      \ 'colorscheme': 'nord',
      \ 'active': {
      \     'left': [
      \         [ 'mode', 'paste' ],
      \     	  [ 'gtmstatus','fugitive', 'filename', 'readonly', 'modified' ],
      \     ],
      \     'right': [ 
      \         [ 'cocstatus' ],
      \		      [ 'linter_checking','linter_errors', 'linter_warnings', 'linter_ok' ],
      \         [ 'filetype' ],
      \	    ]
      \ },
      \ 'component_function': {
      \     'cocstatus': 'coc#status',
      \     'fugitive': 'LightlineFugitive',
      \     'readonly': 'LightlineReadonly',
      \     'modified': 'LightlineModified',
      \     'filename': 'LightlineFilename',
      \	    'gtmstatus': 'GTMStatusline'
      \ },
      \ 'separator': {
      \     'left': '',
      \     'right': ''
      \ },
      \ 'subseparator': {
      \     'left': '',
      \     'right': ''
      \ }
      \ }

let g:lightline.component_expand = {
      \ 'linter_checking': 'lightline#ale#checking',
      \ 'linter_warnings': 'lightline#ale#warnings',
      \ 'linter_errors': 'lightline#ale#errors',
      \ 'linter_ok': 'lightline#ale#ok',
      \ }

let g:lightline.component_type = {
      \ 'linter_checking': 'warning',
      \ 'linter_warnings': 'warning',
      \ 'linter_errors': 'error',
      \ 'linter_ok': 'left',
      \ }
function! LightlineModified()
  if &filetype == "help"
    return ""
  elseif &modified
    return "+"
  elseif &modifiable
    return ""
  else
    return ""
  endif
endfunction

function! LightlineReadonly()
  if &filetype == "help"
    return ""
  elseif &readonly
    return ""
  else
    return ""
  endif
endfunction

function! LightlineFugitive()
  if exists("*fugitive#head")
    let branch = fugitive#head()
    return branch !=# '' ? ' '.branch : ''
  endif
  return ''
endfunction

function! LightlineFilename()
  return ('' != LightlineReadonly() ? LightlineReadonly() . ' ' : '') .
        \ ('' != expand('%:t') ? expand('%:t') : '[No Name]') .
        \ ('' != LightlineModified() ? ' ' . LightlineModified() : '')
endfunction
