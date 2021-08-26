for f in split(glob('~/.config/nvim/general/*.vim'), '\n')
	exe 'source' f
endfor

runtime ./themes/nord.vim

for f in split(glob('~/.config/nvim/keys/*.vim'), '\n')
	exe 'source' f
endfor

for f in split(glob('~/.config/nvim/plug-config/*.lua'), '\n')
	exe 'source' f
endfor
