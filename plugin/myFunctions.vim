" My small collection of random functions

" Detect the currently running OS
function! GetRunningOS()
	if has("win32")
		return "win"
	endif
	if has("unix")
		if system('uname')=~'Darwin'
			return "mac"
		else
			return "linux"
		endif
	endif
endfunction

" Run make on the current file
" cd to the correct dir, set makeprg to correct type, run make
" input types: html, valid, format
function! MyMaker(var1)
	cd %:p:h
	" echo a:var1
	exe 'make ' . expand('%<') . '.' . a:var1
	" make
endfunction
