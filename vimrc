" run pathogen stuff first
call pathogen#infect()
call pathogen#helptags()

syntax on
filetype plugin indent on

" pull in local vim file
source $HOME/.vimrclocal.vim

" define the ctags file
set tags+=$HOME/.tags

" use the Solarized colour skeme
set background=dark
let g:solarized_termtrans = 1
colorscheme solarized

" bash like filename completion
set wildmode=longest:full
set wildmenu

" set up SuperTab to play nicely
let g:SuperTabDefaultCompletionType = "context"
" setup the custom supercollider ctags stuff
let tlist_supercollider_settings='supercollider;c:class name;m:class methods;i:instance methods;v:variables'

" Key mappings -----------------------------
let mapleader=","
set backspace+=indent,eol,start

" ,be to open buffexplorer
nmap <leader>be :BufExplorer<CR>
" ,tl to toggle Taglist
nmap <leader>tl :TlistToggle<CR>
" ,sc to start sc
nmap <leader>sc :SClangStart<CR>
" ,sk to kill sc
nmap <leader>sk :SClangKill<CR>
" ,sr to recompile sc
nmap <leader>sr :SClangRecompile<CR>
" ,w- to maximise a window 
nmap <leader>w- <C-W>_
" ,w= to equalise all windows 
nmap <leader>w= <C-W>=


" Navigate between windows using ctrl+arrows
map <C-UP> <C-W><C-UP>
map <C-DOWN> <C-W><C-DOWN>
map <C-LEFT> <C-W><C-h>
map <C-RIGHT> <C-W><C-l>


"VimOrganizer Stuff
let g:ft_ignore_pat = '\.org'
au! BufRead,BufWrite,BufWritePost,BufNewFile *.org 
au BufEnter *.org            call org#SetOrgFileType()
" let g:org_capture_file = '~/org_files/mycaptures.org'
command! OrgCapture :call org#CaptureBuffer()
command! OrgCaptureFile :call org#OpenCaptureFile()

"==============================================================
" THE UNNECESSARY STUFF
"==============================================================
"  Everything below here is a customization.  None are needed.
"==============================================================

" The variables below are used to define the default Todo list and
" default Tag list.  Both of these can also be defined 
" on a document-specific basis by config lines in a file.
" See :h vimorg-todo-metadata and/or :h vimorg-tag-metadata
" 'TODO | DONE' is the default, so not really necessary to define it at all
" let g:org_todo_setup='TODO | DONE'
" OR, e.g.,:
let g:org_todo_setup='TODO NEXT STARTED | DONE CANCELED'

" include a tags setup string if you want:
let g:org_tags_alist='{@home(h) @work(w)} {easy(e) hard(d)} {computer(c) phone(p)}'
"
" g:org_agenda_dirs specify directories that, along with 
" their subtrees, are searched for list of .org files when
" accessing EditAgendaFiles().  Specify your own here, otherwise
" default will be for g:org_agenda_dirs to hold single
" directory which is directory of the first .org file opened
" in current Vim instance:
" Below is line I use in my Windows install:
" NOTE:  case sensitive even on windows.
let g:org_agenda_select_dirs=["~/Dropbox/org"]
let g:org_agenda_files = split(glob("~/Dropbox/*.org"),"\n")

" ----------------------
" Emacs setup
" ----------------------
" To use Emacs you will need to define the client.  On
" Linux/OSX this is typically simple, just:
let g:org_command_for_emacsclient = '/Applications/Emacs.app/Contents/MacOS/bin/emacsclient'
"
" Set up the correct path variables
let s:path = system("echo echo VIMPATH'${PATH}' | $SHELL -l")
let $PATH = matchstr(s:path, 'VIMPATH\zs.\{-}\ze\n')

" Use powerline
" python from powerline.bindings.vim import source_plugin; source_plugin()
" source /usr/local/lib/python2.7/site-packages/powerline/bindings/vim/plugin/powerline.vim 

source /usr/local/lib/python2.7/site-packages/powerline/bindings/vim/plugin/powerline.vim
set laststatus=2
set guifont=Inconsolata\ for\ Powerline:h12
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8
