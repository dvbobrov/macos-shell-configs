execute pathogen#infect()
" Tab autocompletion
function InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction

imap <TAB> <C-r>=InsertTabWrapper()<CR>
set complete=.,k,b,t

set encoding=utf-8
set nocompatible
set ttyfast
set nomodeline

filetype plugin indent on

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set smartindent

set ruler
set relativenumber
set mouse=a

nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

nnoremap <F2> :set paste!<CR>
nnoremap <F6> :tabe 
nnoremap <F7> :tabp<CR>
nnoremap <F8> :tabn<CR>

nnoremap ; :
set viminfo='20,\"50
set history=50

set autowrite
set guioptions=aegirL

syntax on
