"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Add a bit extra margin to the left
set foldcolumn=2

" Colorscheme
let iterm_profile = $ITERM_PROFILE
if iterm_profile == 'Nord'
  colo Nord
else
    colo solarized
    set background=light
endif
