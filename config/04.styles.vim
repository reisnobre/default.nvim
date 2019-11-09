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
if iterm_profile == 'Nord'
  colo Nord
else
    colo solarized
    set background=light
endif
