
for f in split(glob('~/.config/nvim/general/*.vim'), '\n')
	exe 'source' f
endfor

source $HOME/.config/nvim/themes/nord.vim

for f in split(glob('~/.config/nvim/keys/*.vim'), '\n')
	exe 'source' f
endfor

for f in split(glob('~/.config/nvim/plug-config/*.vim'), '\n')
	exe 'source' f
endfor


" for f in split(glob('~/.config/nvim/config/*.vim'), '\n')
" 	exe 'source' f
" endfor
