" Sources used to make this vimrc:
"
" https://vonheikemen.github.io/devlog/tools/using-netrw-vim-builtin-file-explorer/
" https://www.freecodecamp.org/news/vimrc-configuration-guide-customize-your-vim-editor/
"

set encoding=utf-8
filetype plugin indent on
syntax on

augroup reload_vimrc " {
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }"

augroup XML
    autocmd!
    autocmd FileType xml setlocal foldmethod=indent foldlevelstart=999 foldminlines=0
augroup END

nmap =j :%!python -m json.tool
nmap =x :%!python3 -c "import xml.dom.minidom, sys; print(xml.dom.minidom.parse(sys.stdin).toprettyxml())";

let mapleader=","

set tabstop=4
set softtabstop=0 noexpandtab
set shiftwidth=4

set showbreak=↪
let g:deoplete#enable_at_startup = 1

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" Use highlighting when doing a search.
" set hlsearch

" Set the commands to save in history default number is 20.
set history=1000

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" Highlight cursor line underneath the cursor horizontally.
set cursorline


"NETRW CONFIG (FILES TREE)
"Taken from https://vonheikemen.github.io/devlog/tools/using-netrw-vim-builtin-file-explorer/

function! NetrwMapping()
    "Toggle hidden files
    nmap <buffer> . gh
    "Close preview
    nmap <buffer> P <C-w>z
    "Open file
    nmap <buffer> l <CR>
    "Open file and close tree
    nmap <buffer> L <CR>:Lexplore<CR>
endfunction

augroup netrw_mapping
    autocmd!
    autocmd filetype netrw call NetrwMapping()
augroup END


nmap <leader>l :Lexplore<CR>
"Keep the current directory and the browsing directory synced
let g:netrw_keepdir = 0

let g:netrw_winsize = 30
let g:netrw_banner = 0
let g:netrw_localcopydircmd = 'cp -r' "Enable recursive copy

"SYNTASTIC CONFIG

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"let g:syntastic_python_checkers = ['pylint']
"let g:syntastic_scala_checkers = ['fsc']
