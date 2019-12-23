"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colorscheme

if system('uname 2> /dev/null') =~ 'Darwin'
  if $ITERM_PROFILE =~ 'Nord'
    colo Nord
  else
      colo solarized
      set background=light
  endif
else
  colo 'nord'
endif
