execute pathogen#infect()
call pathogen#helptags()
syntax on
filetype on
" kein automatischer Zeilenumbruch im wort
set linebreak
" foldingmethod zu indent
    " set fdm=indent
set hlsearch
set ai
nnoremap <CR> :noh<CR><CR>
" damit kann man einfach copy and paste verwenden
set paste

set ruler
" stize of a hard tabstop
" size of an indent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set number
"ueberall bewegen koennen
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

" use tabs in makefiles
autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab

" use ▶  to show tabs
set listchars=tab:▶\ ,eol:¶ 

" Show syntax highlighting groups for word under cursor
nmap <C-S-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc
" leader zu ,
let mapleader = ","
