"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" ====== CTRLP ====== "
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe,*.meta,*.cs.meta
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn|meta|swp|wav)$'
let g:buffergator_autoexpand_on_split = 0


" ====== Utilsnips ===== "
" let g:UltiSnipsSnippetsDir="~/.config/nvim/plugged/snippets/UltiSnips"


" ====== NERDtree ====== " 
nnoremap <Leader>n :NERDTree<CR>
" vmap ++ <plug>NERDCommenterToggle
" nmap ++ <plug>NERDCommenterToggle
let NERDTreeQuitOnOpen=1
let g:NERDTreeGitStatusWithFlags = 1
let g:NERDTreeColorMapCustom = {
    \ "Staged"    : "#0ee375",  
    \ "Modified"  : "#d9bf91",  
    \ "Renamed"   : "#51C9FC",  
    \ "Untracked" : "#FCE77C",  
    \ "Unmerged"  : "#FC51E6",  
    \ "Dirty"     : "#FFBD61",  
    \ "Clean"     : "#87939A",   
    \ "Ignored"   : "#808080"   
    \ }                         

let g:NERDTreeIgnore = ['^node_modules$']

" ====== FAR ====== " 
let g:ackprg = 'ag --vimgrep --smart-case'                                                   
cnoreabbrev ag Ack
cnoreabbrev aG Ack
cnoreabbrev Ag Ack
cnoreabbrev AG Ack
let g:ackhighlight = 1
set backupcopy=yes

" ====== COC ====== " 

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
  \   'preferShownAbove': v:false
  \ })

  call coc#config('diagnostic', {
  \   'errorSign'  : '',
  \   'warningSign': '',
  \   'infoSign'   : '',
  \   'hintSign'   : 'ﯦ'
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

" ====== ALE ====== " 
let g:ale_linters = {
            \   'c': [], 'cpp': [], 'rust': [], 'go': [], 'python': [], 'sh': [],
            \   'html': [], 'css': [],
            \   'javascript': [], 'typescript': [], 'reason': [], 'dart': [],
            \   'json': [], 'vue': [],
            \   'tex': [], 'latex': [], 'bib': [], 'bibtex': []
            \ }
let g:ale_linter_aliases = {
\   'pandoc': 'markdown'
\ }

let g:ale_sign_info          = ''
let g:ale_sign_error         = ''
let g:ale_sign_warning       = ''
let g:ale_sign_style_error   = ''
let g:ale_sign_style_warning = ''

" let g:ale_lint_on_insert_leave = 1
let g:ale_lint_on_text_changed = 'always'

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

autocmd VimEnter call s:ale_highlight()

" ====== Lightline ====== " 
let g:lightline = {'colorscheme': 'nord'}
let g:lightline.active = {
      \   'left' : [
      \     ['mode', 'paste'],
      \     ['fugitive'],
      \     ['filepath', 'filename_active', 'current_tag']
      \   ],
      \   'right': [
      \     ['lineinfo',
      \      'coc_error', 'coc_warning', 'coc_info', 'coc_hint', 'coc_fix', 'coc_status'
      \      ],
      \     ['filetype'],
      \     ['fileinfo']
      \   ]
      \ }

let g:lightline.inactive = {
      \   'left' : [['filepath', 'filename_inactive']],
      \   'right': [['lineinfo'], ['filetype'], ['fileinfo']]
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
      \   'coc_error'        : 'LightlineCocErrors',
      \   'coc_warning'      : 'LightlineCocWarnings',
      \   'coc_info'         : 'LightlineCocInfos',
      \   'coc_hint'         : 'LightlineCocHints',
      \   'coc_fix'          : 'LightlineCocFixes',
      \   'coc_status'       : 'LightlineCocStatus',
      \   'ale_error'        : 'LightlineAleErrors',
      \   'ale_warning'      : 'LightlineAleWarnings',
      \   'ale_info'         : 'LightlineAleInfos',
      \   'ale_style_error'  : 'LightlineAleStyleErrors',
      \   'ale_style_warning': 'LightlineAleStyleWarnings'
\ }
let g:lightline.component_type = {
      \   'coc_error'        : 'error',
      \   'coc_warning'      : 'warning',
      \   'coc_info'         : 'tabsel',
      \   'coc_hint'         : 'middle',
      \   'coc_fix'          : 'middle',
      \   'coc_status'       : 'middle',
      \   'ale_error'        : 'error',
      \   'ale_warning'      : 'warning',
      \   'ale_info'         : 'tabsel',
      \   'ale_style_error'  : 'error',
      \   'ale_style_warning': 'warning'
      \ }
let g:lightline.separator = {'left': '', 'right': ''}
let g:lightline.subseparator = {'left': '', 'right': ''}

" LightlineFugitive() {{{
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
" }}}
" LightlineFilepath() {{{
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
" }}}
" LightlineFilenameActive() {{{
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
" }}}
" LightlineFilenameInactive() {{{
function! LightlineFilenameInactive() abort
  if &filetype ==? 'vista_kind'
    return '留VISTA'
  endif
  return s:lightline_is_lean() ? '留' . toupper(&filetype) : LightlineFilenameActive()
endfunction
" }}}
" LightlineCurrentTag() {{{
function! LightlineCurrentTag() abort
  if s:lightline_is_lean() || s:lightline_is_plain() || winwidth(0) < 80
    return ''
  endif
  let tag = get(b:, 'vista_nearest_method_or_function', '')
  let limit = float2nr(0.15 * winwidth(0))
  return len(tag) > limit ? tag[0:limit] . '…' : tag
endfunction
" }}}
" LightlineLineinfo() {{{
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
" }}}
" LightlineFileinfo() {{{
function! LightlineFileinfo() abort
  if s:lightline_is_lean() || s:lightline_is_plain() || winwidth(0) < 80
    return ''
  endif
  return printf('%s[%s]',
         \      empty(&fileencoding) ? &encoding : &fileencoding,
         \      &fileformat . (exists('*WebDevIconsGetFileFormatSymbol') ? ' ' . WebDevIconsGetFileFormatSymbol() : ''))
endfunction
" }}}
" LightlineFiletype() {{{
function! LightlineFiletype() abort
  if empty(&filetype) || s:lightline_is_lean() || s:lightline_is_plain()
    return ''
  endif
  return &filetype . (exists('*WebDevIconsGetFileTypeSymbol') ? ' ' . WebDevIconsGetFileTypeSymbol() : '')
endfunction
" }}}
" LightlineCocErrors() {{{
function! LightlineCocErrors() abort
  return s:lightline_coc_diagnostic('error', 'error')
endfunction
" }}}
" LightlineCocWarnings() {{{
function! LightlineCocWarnings() abort
  return s:lightline_coc_diagnostic('warning', 'warning')
endfunction
" }}}
" LightlineCocInfos() {{{
function! LightlineCocInfos() abort
  return s:lightline_coc_diagnostic('information', 'info')
endfunction
" }}}
" LightlineCocHints() {{{
function! LightlineCocHints() abort
  return s:lightline_coc_diagnostic('hints', 'hint')
endfunction
" }}}
" LightlineCocFixes() {{{
function! LightlineCocFixes() abort
  let b:coc_line_fixes = get(get(b:, 'coc_quickfixes', {}), line('.'), 0)
  return b:coc_line_fixes > 0 ? printf('%d ', b:coc_line_fixes) : ''
endfunction
" }}}
" LightlineCocStatus() {{{
function! LightlineCocStatus() abort
  return get(g:, 'coc_status', '')
endfunction
" }}}
" LightlineAleErrors() {{{
function! LightlineAleErrors() abort
  return s:lightline_ale_diagnostic('error')
endfunction
" }}}
" LightlineAleWarnings() {{{
function! LightlineAleWarnings() abort
  return s:lightline_ale_diagnostic('warning')
endfunction
" }}}
" LightlineAleInfos() {{{
function! LightlineAleInfos() abort
  return s:lightline_ale_diagnostic('info')
endfunction
" }}}
" LightlineAleStyleErrors() {{{
function! LightlineAleStyleErrors() abort
  return s:lightline_ale_diagnostic('style_error')
endfunction
" }}}
" LightlineAleStyleWarnings() {{{
function! LightlineAleStyleWarnings() abort
  return s:lightline_ale_diagnostic('style_warning')
endfunction
" }}}
" Util {{{
" s:lightline_is_lean() {{{
function! s:lightline_is_lean() abort
  return &filetype =~? '\v^(vim-plug|defx|vista(_kind)?|mundo(diff)?)$'
endfunction
" }}}
" s:lightline_is_plain() {{{
function! s:lightline_is_plain() abort
  return &buftype ==? 'terminal' || &filetype ==? 'help'
endfunction
" }}}
" s:lightline_modified() {{{
function! s:lightline_modified() abort
  return s:lightline_is_lean() || s:lightline_is_plain() ?  ''  :
  \      &modified                                       ?  '' :
  \      &modifiable                                     ?  ''  : '-'
endfunction
" }}}
" s:lightline_readonly() {{{
function! s:lightline_readonly() abort
  return (s:lightline_is_lean() || s:lightline_is_plain()) && &filetype !=? 'help' ? '' : &readonly ? '' : ''
endfunction
" }}}
" s:lightline_coc_diagnostic(kind, sign) {{{
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
" }}}
" s:lightline_ale_diagnostic(kind) {{{
function! s:lightline_ale_diagnostic(kind) abort
  if !get(g:, 'ale_enabled', 0)
    return ''
  endif
  if !get(b:, 'ale_linted', 0)
    return ''
  endif
  if ale#engine#IsCheckingBuffer(bufnr(''))
    return ''
  endif
  let c = ale#statusline#Count(bufnr(''))
  if empty(c) || get(c, a:kind, 0) ==# 0
    return ''
  endif
  return printf('%d %s', c[a:kind], get(g:, 'ale_sign_' . a:kind, '!'))
endfunction

