let g:rooter_silent_chdir = 1
autocmd BufEnter * silent! lcd %:p:h " change dirs as files are oppened
