if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif
set shell=/bin/bash
set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin('~/.vim/plugged')

Plug 'terryma/vim-multiple-cursors'
Plug 'slim-template/vim-slim'
Plug 'tomtom/tcomment_vim'
Plug 'Yggdroot/indentLine'
Plug 'ntpeters/vim-better-whitespace'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'sheerun/vim-polyglot'
Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary' }

" Color Schemes
Plug 'dracula/vim', { 'as': 'dracula' }

call plug#end()            " required

filetype plugin indent on    " required

set background=dark
colorscheme dracula

set number
set expandtab
set nowrap
set tabstop=2
set softtabstop=2
set shiftwidth=2
set backspace=2
set autoindent
set copyindent
set shiftwidth=2
set colorcolumn=80
set splitbelow
set splitright
set hlsearch
set ignorecase
set nobackup
set nowb
set noswapfile

" Speed highlighting up
set nocursorcolumn
set nocursorline
syntax sync minlines=256

" Make `jj` and `jk` throw you into normal mode
inoremap jj <esc>
inoremap jk <esc>

" Disable beeping
set noeb vb t_vb=

let &t_SI.="\e[6 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[2 q" "EI = NORMAL mode (ELSE)

" Vim Clap
let g:clap_layout = { 'relative': 'editor' }
" Open files
nnoremap <Leader>f :Clap files<CR>
" Search in the current buffer
nnoremap <Leader>g :Clap grep<CR>
