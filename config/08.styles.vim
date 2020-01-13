"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colorscheme

if system('uname 2> /dev/null') =~ 'Darwin'
  if $ITERM_PROFILE =~ 'Nord'
    colorscheme Nord
  elseif $ITERM_PROFILE =~ 'Dracula'
    colorscheme Dracula
  else
      colo solarized
      set background=light
  endif
else
  colo 'nord'
endif
