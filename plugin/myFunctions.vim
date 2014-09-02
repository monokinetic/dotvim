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

