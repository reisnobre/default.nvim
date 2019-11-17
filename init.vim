" -> Plugins 
" -> General
" -> Remaps 
" -> Styles 
" -> Functions 
" -> Languages 
" -> Lightline 
" -> Everythingelse 
"
for f in split(glob('~/.config/nvim/config/*.vim'), '\n')
	exe 'source' f
endfor
