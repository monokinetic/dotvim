" run pathogen stuff first
call pathogen#infect()
Helptags

syntax on
filetype plugin indent on
let g:sclangPipeApp     = "~/.vim/bundle/scvim/bin/start_pipe"
let g:sclangDispatcher  = "~/.vim/bundle/scvim/bin/sc_dispatcher"

" Navigate between windows using Alt+arrows
map <C-UP> <C-W><C-UP>
map <C-DOWN> <C-W><C-DOWN>
map <C-LEFT> <C-W><C-LEFT>
map <C-RIGHT> <C-W><C-RIGHT>

let leader=","
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
let g:org_agenda_select_dirs=["~/desktop/org_files"]
let g:org_agenda_files = split(glob("~/desktop/org_files/org-mod*.org"),"\n")

" ----------------------
" Emacs setup
" ----------------------
" To use Emacs you will need to define the client.  On
" Linux/OSX this is typically simple, just:
let g:org_command_for_emacsclient = 'emacsclient'
"
