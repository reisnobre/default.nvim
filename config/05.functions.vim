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

"
au Filetype php,python call TabSize4()
au Filetype html,javascript,css,scss,sass,vue call TabSize2()
