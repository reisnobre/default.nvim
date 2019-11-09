"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Ale
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ale_lint_on_text_changed = 'always'
let g:ale_echo_msg_format = '%linter%: %s'
let g:ale_linters = {
  \ 'javascript': ['eslint'],
  \ 'typescript': ['eslint', 'tslint', 'tsserver'],
  \ 'vue': ['eslint', 'stylelint', 'tsserver'],
  \ 'php': ['phpcs'],
  \ 'html': []
\ }
let g:ale_linter_aliases = {'vue': ['css', 'javascript', 'typescript']}

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Lightline 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:lightline = {
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

let iterm_profile = $ITERM_PROFILE
if iterm_profile == 'Nord'
  let g:lightline.colorscheme = 'nord' 
else
  let g:lightline.colorscheme = 'solarized'
endif

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


function! LightlineTheme()
endfunction
