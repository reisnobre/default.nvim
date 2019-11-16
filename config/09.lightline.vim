"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Lightline 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:lightline = {
            \ 'active': {
            \     'left': [
            \         [ 'mode', 'paste' ],
            \         [ 'fugitive' ],
            \     	  [ 'filepath', 'filename_active', 'readonly', 'modified' ],
            \     ],
            \     'right': [ 
            \         [ 'coc_status', 'coc_error', 'coc_warning', 'coc_info', 'coc_hint', 'coc_fix' ],
            \         [ 'filetype' ],
            \	    ]
            \ },
            \ 'component_function': {
            \     'coc_status': 'LightlineCocStatus',
            \     'fugitive': 'LightlineFugitive',
            \     'readonly': 'LightlineReadonly',
            \     'modified': 'LightlineModified',
            \     'filename': 'LightlineFilename',
            \     'filename_active'  : 'LightlineFilenameActive',
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
            \   'coc_error'        : 'LightlineCocErrors',
            \   'coc_warning'      : 'LightlineCocWarnings',
            \   'coc_info'         : 'LightlineCocInfos',
            \   'coc_hint'         : 'LightlineCocHints',
            \   'coc_fix'          : 'LightlineCocFixes',
            \   'coc_status'       : 'LightlineCocStatus',
            \ }

let g:lightline.component_type = {
            \   'coc_error'        : 'error',
            \   'coc_warning'      : 'warning',
            \   'coc_info'         : 'tabsel',
            \   'coc_hint'         : 'middle',
            \   'coc_fix'          : 'middle',
            \   'coc_status'       : 'middle',
            \   'linter_checking'  : 'warning',
            \   'linter_warnings'  : 'warning',
            \   'linter_errors'    : 'error',
            \   'linter_ok'        : 'left',
            \ }

let iterm_profile = $ITERM_PROFILE
if iterm_profile == 'Nord'
  let g:lightline.colorscheme = 'nord' 
else
  let g:lightline.colorscheme = 'solarized'
endif

function! s:lightline_coc_diagnostic(kind, sign) abort
  if !get(g:, 'coc_enabled', 0)
    return ''
  endif
  let c = get(b:, 'coc_diagnostic_info', 0)
  if empty(c) || get(c, a:kind, 0) ==# 0
    return ''
  endif
  try
    let s = g:coc_user_config['diagnostic'][a:sign . 'Sign']
  catch
    let s = '!'
  endtry
  return printf('%d %s', c[a:kind], s)
endfunction

function! s:lightline_is_plain() abort
  return &buftype ==? 'terminal' || &filetype ==? 'help'
endfunction

function! s:lightline_is_lean() abort
  return &filetype =~? '\v^(vim-plug|defx|vista(_kind)?|mundo(diff)?)$'
endfunction

function! s:lightline_modified() abort
  return s:lightline_is_lean() || s:lightline_is_plain() ?  ''  :
  \      &modified                                       ?  '' :
  \      &modifiable                                     ?  ''  : '-'
endfunction

function! s:lightline_readonly() abort
  return (s:lightline_is_lean() || s:lightline_is_plain()) && &filetype !=? 'help' ? '' : &readonly ? '' : ''
endfunction

function! LightlineFugitive()
  if exists("*fugitive#head")
    let branch = fugitive#head()
    return branch !=# '' ? ' '.branch : ''
  endif
  return ''
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

function! LightlineFilename()
  return ('' != LightlineReadonly() ? LightlineReadonly() . ' ' : '') .
        \ ('' != expand('%:t') ? expand('%:t') : '[No Name]') .
        \ ('' != LightlineModified() ? ' ' . LightlineModified() : '')
endfunction

function! LightlineFilenameActive() abort
  if s:lightline_is_lean()
    return ''
  endif
  if &buftype ==? 'terminal'
    return has('nvim') ? b:term_title . ' (' . b:terminal_job_pid . ')' : ''
  endif
  if empty(expand('%:t'))
    return '[No Name]'
  endif

  let mo = s:lightline_modified()

  return empty(mo) ? expand('%:t') : expand('%:t') . ' ' . mo
endfunction

function! LightlineCocStatus() abort
  return get(g:, 'coc_status', '')
endfunction

function! LightlineCocErrors() abort
  return s:lightline_coc_diagnostic('error', 'error')
endfunction

function! LightlineCocWarnings() abort
  return s:lightline_coc_diagnostic('warning', 'warning')
endfunction

function! LightlineCocInfos() abort
  return s:lightline_coc_diagnostic('information', 'info')
endfunction

function! LightlineCocHints() abort
  return s:lightline_coc_diagnostic('hints', 'hint')
endfunction
