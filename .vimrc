"Pathogen recommended additions
execute pathogen#infect()
syntax on
filetype plugin indent on

"Let pathogen call the HelpTags automatically
call pathogen#helptags()

"Black to grey approximation for colorscheme-jellybeans
let g:jellybeans_use_lowcolor_black = 0

"required for terminal color override
set t_Co=256

"Specific to Molokai
let g:rehash256 = 1

"set colorscheme here
color molokai

"Airline specific commands
let g:airline_powerline_fonts = 1
let g:airline_theme='base16'

"Specific to NERDTree
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"Close vim if nerdtree is the only buffer left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"Pydoc in vertical split
let g:pydoc_open_cmd = 'vsplit' 

"Remove folding by default, just use zi
set nofoldenable

" Pymode code completion and roping
let g:pymode_rope_completion = 1
let g:pymode_rope_complete_on_dot = 1
let g:pymode_rope_autoimport = 1
let g:pymode_rope_autoimport_import_after_complete = 1
