let g:ale_lint_on_text_changed = 'always'
let g:ale_echo_msg_format = '%linter%: %s'
let g:ale_linters = {
  \ 'javascript': ['eslint', 'tsserver'],
  \ 'typescript': ['eslint', 'tsserver'],
  \ 'vue': ['vls', 'vetur', 'eslint'],
  \ 'php': ['phpcs'],
  \ 'python': ['flake8', 'pylint'],
  \ 'html': []
\ }

let g:ale_sign_info          = ''
let g:ale_sign_error         = ''
let g:ale_sign_warning       = ''
let g:ale_sign_style_error   = ''
let g:ale_sign_style_warning = ''

" autocmd vimrc User ALEJobStarted call lightline#update()
" autocmd vimrc User ALELintPost   call lightline#update()
" autocmd vimrc User ALEFixPost    call lightline#update()
"
" " Diagnostic's highlighting {{{
function! s:ale_highlight() abort
  hi! link ALEErrorLine SignColumn
  hi! link ALEWarningLine SignColumn
  hi! link ALEInfoLine SignColumn
  if exists('g:loaded_lightline')
    let c = g:lightline#palette().normal.error[0]
    let i = s:farthest_color(s:bg('ALEErrorLine', 'gui'), c[:1])
    call s:hi('ALEErrorSign', c[0+i], s:bg('ALEErrorLine', 'gui')
         \                  , c[2+i], s:bg('ALEErrorLine', 'cterm'))
    let c = g:lightline#palette().normal.warning[0]
    let i = s:farthest_color(s:bg('ALEWarningLine', 'gui'), c[:1])
    call s:hi('ALEWarningSign', c[0+i], s:bg('ALEWarningLine', 'gui')
         \                   , c[2+i], s:bg('ALEWarningLine', 'cterm'))
    let c = g:lightline#palette().tabline.tabsel[0]
    let i = s:farthest_color(s:bg('ALEInfoLine', 'gui'), c[:1])
    call s:hi('ALEInfoSign', c[0+i], s:bg('ALEInfoLine', 'gui')
         \                 , c[2+i], s:bg('ALEInfoLine', 'cterm'))
  else
    call s:hi('ALEErrorSign'   , 'lightred'  , s:bg('ALEErrorLine'   , 'gui')
         \                     , 'lightred'  , s:bg('ALEErrorLine'   , 'cterm'))
    call s:hi('ALEWarningSign' , 'yellow'    , s:bg('ALEWarningLine' , 'gui')
         \                     , 'yellow'    , s:bg('ALEWarningLine' , 'cterm'))
    call s:hi('ALEInfoSign'    , 'lightblue' , s:bg('ALEInfoLine'    , 'gui')
         \                     , 'lightblue' , s:bg('ALEInfoLine'    , 'cterm'))
  endif
endfunction
