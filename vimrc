call pathogen#infect()
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()
" set number
let c_space_errors = 1
let g:load_doxygen_syntax=1
set incsearch
syntax on

set background=dark

let s:uname = system("echo -n \"$(uname)\"")
if s:uname == "Linux"
	colorscheme relaxedgreen
else
	colorscheme solarized
endif

imap <F5> <C-o>:setlocal spell! spelllang=en_us<CR>

map <F12> :call TrimWhiteSpace()<CR>
" Removes trailing spaces
func! TrimWhiteSpace()
  %s/\s*$//
  ''
:endfunction

set cin
set ai
set si
set noci
set hlsearch
set nu
map <silent> <F1> :let @/=""<CR>


au BufNewFile,BufRead SCons* set filetype=scons


" OmniCppComplete Stuff
set tags+=tags;$HOME
set tags+=~/.vim/tags/cpp

set nocp
filetype plugin on
set ofu=syntaxcomplete#Complete

let OmniCpp_ShowScopeInAbbr = 1

" automatically open and close the popup menu / preview window 
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif 
set completeopt=menuone,menu,longest

set wildmode=longest:full
set wildmenu

let g:syntastic_python_checker = 'pyflakes'

let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=0
let g:syntastic_enable_highlighting=1
let g:syntastic_auto_loc_list=1
let g:syntastic_loc_list_height=5

let g:syntastic_mode_map = { 'mode': 'active',
		\ 'active_filetypes': ['python', 'javascript', 'css', 'html'],
			\ 'passive_filetypes': ['make','cpp','c'] }
