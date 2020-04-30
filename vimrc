let base16colorspace=256  " Access colors present in 256 colorspace
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif
set shell=/bin/bash
set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-rails'
Plug 'vim-ruby/vim-ruby'
Plug 'kchmck/vim-coffee-script'
Plug 'terryma/vim-multiple-cursors'
Plug 'slim-template/vim-slim'
Plug 'tomtom/tcomment_vim'
Plug 'Yggdroot/indentLine'
Plug 'ntpeters/vim-better-whitespace'
Plug 'elixir-lang/vim-elixir'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'posva/vim-vue'
Plug 'sheerun/vim-polyglot'

" Color Schemes
Plug 'chriskempson/base16-vim'
Plug 'kaicataldo/material.vim'

call plug#end()            " required

filetype plugin indent on    " required

" colorscheme base16-material-darker
set background=dark
let g:material_theme_style = 'darker'
colorscheme material

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

highlight ColorColumn ctermbg=grey

" Speed highlighting up
set nocursorcolumn
set nocursorline
syntax sync minlines=256

" Make `jj` and `jk` throw you into normal mode
inoremap jj <esc>
inoremap jk <esc>

" Disable beeping
set noeb vb t_vb=
