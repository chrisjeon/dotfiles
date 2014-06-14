set shell=/bin/bash
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'tpope/vim-rails.git'
Plugin 'kchmck/vim-coffee-script'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'L9'
Plugin 'kien/ctrlp.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'slim-template/vim-slim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'flazz/vim-colorschemes'

call vundle#end()            " required
filetype plugin indent on    " required

set number
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set autoindent 
set colorcolumn=80
syntax enable

" CtrlP settings
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<c-t>'],
    \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
    \ }

autocmd VimEnter * NERDTree
let g:nerdtree_tabs_open_on_console_startup=1

colorscheme dark-ruby 
