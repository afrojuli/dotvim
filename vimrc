execute pathogen#infect()
syntax on
set hlsearch
set ai
nnoremap <CR> :noh<CR><CR>
" damit kann man einfach copy and paste verwenden

set paste

set ruler
" size of a hard tabstop
" size of an indent
set tabstop=4
set shiftwidth=4
set expandtab
set number
set ve=all
autocmd InsertEnter * set cul
autocmd InsertLeave * set nocul

" auto open NERDTree, if no files specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" open NERDTree with Ctrl-n
map <C-n> :NERDTreeToggle<CR>

" close vim if only NERDTree is still there
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
