
syntax on
filetype plugin indent on

augroup reload_vimrc " {
	autocmd!
	autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }"

nmap =j :%!python -m json.tool<CR>

let mapleader=","

set tabstop=4
set softtabstop=0 noexpandtab
set shiftwidth=4

set showbreak=↪
let g:deoplete#enable_at_startup = 1

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"let g:syntastic_python_checkers = ['pylint']
"let g:syntastic_scala_checkers = ['fsc']
