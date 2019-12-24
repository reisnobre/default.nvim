:""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Lightline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:lightline = {
            \ 'active': {
            \     'left': [
            \         [ 'mode', 'paste' ],
            \         [ 'fugitive' ],
            \     	  [ 'gtmstatus','filepath', 'filename_active', 'current_tag', 'readonly', 'modified' ],
            \     ],
            \     'right': [
            \         [ 'filetype', 'fileinfo' ],
            \         [ 'coc_status', 'coc_error', 'coc_warning', 'coc_fix', 'coc_hint' ],
            \	    ]
            \ },
            \ 'component_function': {
            \     'gtmstatus'        : 'GTMStatusline',
            \     'current_tag'      : 'LightlineCurrentTag',
            \     'coc_status'       : 'LightlineCocStatus',
            \     'fugitive'         : 'LightlineFugitive',
            \     'readonly'         : 'LightlineReadonly',
            \     'modified'         : 'LightlineModified',
            \     'filename'         : 'LightlineFilename',
            \     'filename_active'  : 'LightlineFilenameActive',
            \     'filename_inactive': 'LightlineFilenameInactive',
            \     'lineinfo'         : 'LightlineLineinfo',
            \     'fileinfo'         : 'LightlineFileinfo',
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

let g:lightline.inactive = {
\   'left' : [['filepath', 'filename_inactive']],
\   'right': [['lineinfo'], ['filetype'], ['fileinfo']]
\ }

let g:lightline.component = {
\   'mode': '%#RedStar#留%#LightlineLeft_active_0#%{LightlineMode()}',
\   'close': '%999X  '
\ }

let g:lightline.component_expand = {
            \   'coc_error'        : 'LightlineCocErrors',
            \   'coc_warning'      : 'LightlineCocWarnings',
            \   'coc_info'         : 'LightlineCocInfos',
            \   'coc_hint'         : 'LightlineCocHints',
            \   'coc_fix'          : 'LightlineCocFixes',
            \   'coc_status'       : 'LightlineCocStaus',
            \ }

let g:lightline.component_type = {
            \   'coc_error'        : 'error',
            \   'coc_warning'      : 'warning',
            \   'coc_info'         : 'tabsel',
            \   'coc_hint'         : 'middle',
            \   'coc_fix'          : 'middle',
            \   'coc_status'       : 'middle',
            \ }

if system('uname 2> /dev/null') =~ 'Darwin'
  if $ITERM_PROFILE =~ 'Nord'
    let g:lightline.colorscheme = 'nord'
  else
    let g:lightline.colorscheme = 'solarized'
  endif
else
    let g:lightline.colorscheme = 'nord'
endif

" Helper functions
"
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

" s:attr(group, attr, ...)             | get group attribute {{{
"" s:hi(g, gf, gb, ctf, ctb)            | highlighting helper {{{
function! s:hi(group, guifg, guibg, ctermfg, ctermbg) abort
  exec printf('hi %s guifg=%s guibg=%s ctermfg=%s ctermbg=%s',
       \      a:group, a:guifg, a:guibg, a:ctermfg, a:ctermbg)
endfunction

function! s:attr(group, attr, ...) abort
  call assert_inrange(0, 1, a:0)
  if a:0 > 0
    let a = synIDattr(synIDtrans(hlID(a:group)), a:attr, a:1)
  else
    let a = synIDattr(synIDtrans(hlID(a:group)), a:attr)
  endif
  return empty(a) || a ==# '-1' ? 'NONE' :  a
endfunction

" s:bg(group, mode)                    | get background of highlighting group {{{
function! s:bg(group, mode) abort
  return s:attr(a:group, s:attr(a:group, 'reverse', a:mode) ? 'fg' : 'bg', a:mode)
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

" Component functions
"
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

function! LightlineMode() abort
  call s:hi('RedStar', '#ff0000', s:bg('LightlineLeft_active_0', 'gui')
       \             , 196, s:bg('LightlineLeft_active_0', 'cterm'))
  if &filetype ==? 'vista_kind'
    return 'VISTA'
  endif
  if &buftype ==? 'terminal'
    return 'TERM'
  endif
  return s:lightline_is_lean() || s:lightline_is_plain() ? toupper(&filetype) : lightline#mode()
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

" LightlineFilenameInactive() {{{
function! LightlineFilenameInactive() abort
  if &filetype ==? 'vista_kind'
    return '留VISTA'
  endif
  return s:lightline_is_lean() ? '留' . toupper(&filetype) : LightlineFilenameActive()
endfunction

function! LightlineCurrentTag() abort
  if s:lightline_is_lean() || s:lightline_is_plain() || winwidth(0) < 80
    return ''
  endif
  let tag = get(b:, 'vista_nearest_method_or_function', '')
  let limit = float2nr(0.15 * winwidth(0))
  return len(tag) > limit ? tag[0:limit] . '…' : tag
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

" LightlineLineinfo() {{{
function! LightlineLineinfo() abort
  return &filetype ==? 'help'              ? ''  :
  \      &filetype ==? 'vim-plug'          ? '⚉ ' :
  \      &filetype =~? '\v^vista(_kind)?$' ? ' ' :
  \      &buftype  ==? 'terminal'          ? ' ' :
  \      s:lightline_is_lean() || s:lightline_is_plain() ? ' '  :
  \      printf('%d:%d ☰ %d%%', line('.'), col('.'), 100*line('.')/line('$'))
endfunction

" LightlineFileinfo() {{{
function! LightlineFileinfo() abort
  if s:lightline_is_lean() || s:lightline_is_plain() || winwidth(0) < 80
    return ''
  endif
  return printf('%s[%s]',
         \      empty(&fileencoding) ? &encoding : &fileencoding,
         \      &fileformat . (exists('*WebDevIconsGetFileFormatSymbol') ? ' ' . WebDevIconsGetFileFormatSymbol() : ''))
endfunction
