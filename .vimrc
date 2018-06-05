call plug#begin('~/.vim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'tomasr/molokai', {'do': 'cp colors/* ~/.vim/colors/'}
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'elzr/vim-json'

call plug#end()

" Note: Skip initialization for vim-tiny or vim-small.
if !1 | finish | endif

if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif
endif

" Required:
filetype plugin indent on

set t_Co=256
syntax enable
try
  colorscheme molokai
  let g:molokai_original = 1
  let g:rehash256 = 1
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme desert
endtry

" Vim-Json:
let g:vim_json_syntax_conceal = 0

set number
set ignorecase
set nobackup
set smartcase
set wrapscan
set incsearch
set hlsearch
set noerrorbells
set novisualbell
set visualbell t_vb=
set showmatch matchtime=1
set laststatus=2
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
augroup auto_comment_off
  autocmd!
  autocmd BufEnter * setlocal formatoptions-=r
  autocmd BufEnter * setlocal formatoptions-=o
augroup END
augroup auto_set_nopaste
  autocmd!
  autocmd InsertLeave * set nopaste
augroup END

