set shell=/bin/bash
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'
Plugin 'kchmck/vim-coffee-script'
Plugin 'kien/ctrlp.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'slim-template/vim-slim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'heartsentwined/vim-emblem'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'flazz/vim-colorschemes'
Plugin 'tomtom/tcomment_vim'

call vundle#end()            " required
filetype plugin indent on    " required

colorscheme vividchalk
set number
set expandtab
set nowrap
set tabstop=2
set softtabstop=2
set shiftwidth=2
set autoindent
set copyindent
set shiftwidth=2
set colorcolumn=80
syntax enable

" CtrlP settings
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<c-t>'],
    \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
    \ }

" whitesace dot configuration
set list listchars=tab:>-,trail:•,precedes:<,extends:>
