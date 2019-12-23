augroup txt_files
  au!

  autocmd BufRead,BufNewFile *.txt setlocal filetype=txt
  autocmd FileType txt setlocal wrap
  autocmd FileType txt setlocal textwidth=72
  autocmd FileType txt setlocal spell
  autocmd FileType txt setlocal spelllang=pt_br,en

augroup end

augroup markdow_files
  au!
  autocmd BufRead,BufNewFile *.md setlocal filetype=markdown
  autocmd FileType markdown setlocal wrap
  autocmd FileType markdown setlocal spell
  autocmd FileType markdown setlocal spelllang=pt_br,en
augroup end

augroup latex_files
  au!

  autocmd BufRead,BufNewFile *.tex setlocal filetype=tex

  autocmd FileType tex,bib noremap <buffer> <F5> :w<CR>:!make<CR>
  autocmd FileType tex,bib setlocal spell
  autocmd FileType tex,bib setlocal spelllang=pt_br,en
  "autocmd BufWritePost *.tex :!latexmk -pdf

  autocmd FileType tex syn region texZone      start="\\begin{verbatim}"           end="\\end{verbatim}\|%stopzone\>"  contains=@Spell
  autocmd FileType tex syn region texZone      start="\\begin{code}"               end="\\end{code}\|%stopzone\>"  contains=@Spell
  " listings package:
  autocmd FileType tex syn region texZone      start="\\begin{lstlisting}"         end="\\end{lstlisting}\|%stopzone\>"    contains=@NoSpell
  " moreverb package:
  autocmd FileType tex syn region texZone      start="\\begin{verbatimtab}"        end="\\end{verbatimtab}\|%stopzone\>"   contains=@Spell
  autocmd FileType tex syn region texZone      start="\\begin{verbatimwrite}"      end="\\end{verbatimwrite}\|%stopzone\>" contains=@Spell
  autocmd FileType tex syn region texZone      start="\\begin{boxedverbatim}"      end="\\end{boxedverbatim}\|%stopzone\>" contains=@Spell
  " autocmd FileType tex call lexima#add_rule({'char': '$', 'input_after': '$', 'filetype': 'tex'})
  " autocmd FileType tex call lexima#add_rule({'char': '$', 'at': '\%#\$', 'leave': 1, 'filetype': 'tex'})
  " autocmd FileType tex call lexima#add_rule({'char': '<BS>', 'at': '\$\%#\$', 'delete': 1, 'filetype': 'tex'})
augroup end
