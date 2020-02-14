:""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Lightline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:lightline = {'colorscheme': 'nord'}
let g:lightline.active = {
\   'left' : [
\     ['mode', 'paste'],
\     ['fugitive'],
\     ['filepath', 'filename_active', 'current_tag']
\   ],
\   'right': [
\     ['lineinfo', 'filetype', 'fileinfo']
\   ]
\ }


let g:lightline.inactive = {
\   'left' : [
\     ['filepath', 'filename_inactive']
\   ],
\   'right': [
\     ['lineinfo', 'filetype', 'fileinfo']
\   ]
\ }

let g:lightline.component = {
\   'mode': '%#RedStar#留%#LightlineLeft_active_0#%{LightlineMode()}',
\   'close': '%999X  '
\ }

let g:lightline.component_function = {
\   'fugitive'         : 'LightlineFugitive',
\   'filepath'         : 'LightlineFilepath',
\   'filename_active'  : 'LightlineFilenameActive',
\   'filename_inactive': 'LightlineFilenameInactive',
\   'current_tag'      : 'LightlineCurrentTag',
\   'lineinfo'         : 'LightlineLineinfo',
\   'fileinfo'         : 'LightlineFileinfo',
\   'filetype'         : 'LightlineFiletype'
\ }

let g:lightline.component_expand = {
\ }

let g:lightline.component_type = {
\ }

let g:lightline.separator = {'left': '', 'right': ''}
let g:lightline.subseparator = {'left': '', 'right': ''}

function! s:hi(group, guifg, guibg, ctermfg, ctermbg) abort
  exec printf('hi %s guifg=%s guibg=%s ctermfg=%s ctermbg=%s',
       \      a:group, a:guifg, a:guibg, a:ctermfg, a:ctermbg)
endfunction

function! s:bg(group, mode) abort
  return s:attr(a:group, s:attr(a:group, 'reverse', a:mode) ? 'fg' : 'bg', a:mode)
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

function! LightlineFugitive() abort
  if s:lightline_is_lean() || s:lightline_is_plain() || !exists('*fugitive#head')
    return ''
  endif
  try
    let b = fugitive#head()
  catch
    return ''
  endtry
  return b !=# '' ? '' . (winwidth(0) < 80 ? '' : ' ' . b) : ''
endfunction

function! LightlineFilepath() abort
  if s:lightline_is_lean()
    return ''
  endif
  if s:lightline_is_plain() || winwidth(0) < 80
    return s:lightline_readonly()
  endif
  if exists('+shellslash')
    let saved_shellslash = &shellslash
    set shellslash
  endif
  let path_string = substitute(expand('%:h'), fnamemodify(expand('~'),''), '~', '')
  if !empty(path_string) && winwidth(0) / len(path_string) < 5
    let path_string = substitute(path_string, '\v([^/])[^/]*%(/@=|$)', '\1', 'g')
  endif
  if exists('+shellslash')
    let &shellslash = saved_shellslash
  endif
  let ro = s:lightline_readonly()
  return empty(ro) ? path_string :  ro . ' ' . path_string
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

function! LightlineLineinfo() abort
  return &filetype ==? 'help'              ? ''  :
  \      &filetype ==? 'vim-plug'          ? '⚉ ' :
  \      &filetype ==? 'defx'              ? '🖿 ' :
  \      &filetype =~? '\v^vista(_kind)?$' ? ' ' :
  \      &filetype =~? '\v^mundo(diff)?$'  ? '⮌ ' :
  \      &buftype  ==? 'terminal'          ? ' ' :
  \      s:lightline_is_lean() || s:lightline_is_plain() ? ' '  :
  \      printf('%d:%d ☰ %d%%', line('.'), col('.'), 100*line('.')/line('$'))
endfunction

function! LightlineFileinfo() abort
  if s:lightline_is_lean() || s:lightline_is_plain() || winwidth(0) < 80
    return ''
  endif
  return printf('%s[%s]',
         \      empty(&fileencoding) ? &encoding : &fileencoding,
         \      &fileformat . (exists('*WebDevIconsGetFileFormatSymbol') ? ' ' . WebDevIconsGetFileFormatSymbol() : ''))
endfunction

function! LightlineFiletype() abort
  if empty(&filetype) || s:lightline_is_lean() || s:lightline_is_plain()
    return ''
  endif
  return &filetype . (exists('*WebDevIconsGetFileTypeSymbol') ? ' ' . WebDevIconsGetFileTypeSymbol() : '')
endfunction

function! s:lightline_is_lean() abort
  return &filetype =~? '\v^(vim-plug|defx|vista(_kind)?|mundo(diff)?)$'
endfunction

function! s:lightline_is_plain() abort
  return &buftype ==? 'terminal' || &filetype ==? 'help'
endfunction

function! s:lightline_modified() abort
  return s:lightline_is_lean() || s:lightline_is_plain() ?  ''  :
  \      &modified                                       ?  '' :
  \      &modifiable                                     ?  ''  : '-'
endfunction

function! s:lightline_readonly() abort
  return (s:lightline_is_lean() || s:lightline_is_plain()) && &filetype !=? 'help' ? '' : &readonly ? '' : ''
endfunction

function! s:lightline_patch_palette(colorscheme) abort
  try
    let palette = g:lightline#colorscheme#{a:colorscheme}#palette

    call add(palette.normal.left[0], 'bold')
    call add(palette.insert.left[0], 'bold')
    call add(palette.visual.left[0], 'bold')
    call add(palette.replace.left[0], 'bold')
  catch
  endtry
endfunction

