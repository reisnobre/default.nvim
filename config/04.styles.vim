"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Enable 256 colors palette in Gnome Terminal
if $COLORTERM == 'gnome-terminal'
	set t_Co=256
endif


" Enable syntax highlighting
syntax enable 

" Add a bit extra margin to the left
set foldcolumn=1

" Colorscheme
colorscheme nord
set background=dark
