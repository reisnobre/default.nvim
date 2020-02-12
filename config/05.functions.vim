" Language specifics
function! TabSize4()
	set tabstop=4
 	set softtabstop=4
 	set shiftwidth=4
endfunction

function! TabSize2()
	set tabstop=2
 	set softtabstop=2
 	set shiftwidth=2
endfunction

function! s:bg(group, mode) abort
  return s:attr(a:group, s:attr(a:group, 'reverse', a:mode) ? 'fg' : 'bg', a:mode)
endfunction
