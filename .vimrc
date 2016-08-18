"Pathogen recommended additions, Autoloads new plugins in bundle/
execute pathogen#infect()
syntax on
filetype plugin indent on
filetype plugin on

"Let pathogen call the HelpTags automatically
call pathogen#helptags()

"Black to grey approximation for colorscheme-jellybeans
let g:jellybeans_use_lowcolor_black = 0

"required for terminal color override
" set t_Co=256
" let &t_AB="\e[48;5;%dm"
" let &t_AF="\e[38;5;%dm"

"Specific to Molokai
" let g:rehash256 = 1

"set colorscheme here
" set background=dark
" color molokai
colorscheme jellybeans
let g:ghostbuster_italics=1

"Airline specific commands
let g:airline_powerline_fonts = 1
let g:airline_theme='kalisi'

"Specific to NERDTree
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"Close vim if nerdtree is the only buffer left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"Pydoc in vertical split
" let g:pydoc_open_cmd = 'vsplit' 

"Remove folding by default, just use zi
set nofoldenable

" Pymode code completion and roping
" let g:pymode_rope_completion = 1
" let g:pymode_rope_complete_on_dot = 1
" let g:pymode_rope_autoimport = 1
" let g:pymode_rope_autoimport_import_after_complete = 1

" Constant code checking
" let g:pymode_lint_on_fly = 1

" Added support vertical python-doc
" let g:pymode_doc_vertical = 1

" Change the default 80 character limit demarcation color
hi ColorColumn guibg=#2d2d2d ctermbg=246

" Remove the damn Pymode rope project
" let g:pymode_rope_lookup_project = 0


" Stuff for Python dev
"
syntax enable

" Set line numbers
set number

" Indent when moving to the next line
set autoindent

" Expand tabs to spaces
set expandtab

" enable all python syntax highlighting features
let python_highlight_all = 1

" Set coloumn highlighter for long lines
set colorcolumn=80

" set tabs to four spaces
set ts=4 sw=4

" Rope settings for pymode
let g:pymode_rope_lookup_project = 0
let g:pymode_rope = 0
        
" Set Ttyfast
set ttyfast
