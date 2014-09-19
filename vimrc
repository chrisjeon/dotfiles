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
Plugin 'heartsentwined/vim-emblem'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'flazz/vim-colorschemes'
Plugin 'tomtom/tcomment_vim'
Plugin 'Yggdroot/indentLine'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()            " required
filetype plugin indent on    " required

colorscheme dark-ruby
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
syntax enable

" whitesace dot configuration
set list listchars=tab:>-,trail:•,precedes:<,extends:>

highlight ColorColumn ctermbg=7
highlight Normal ctermfg=grey ctermbg=black
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"

let g:ctrlp_prompt_mappings = {
  \ 'AcceptSelection("e")': [],
  \ 'AcceptSelection("t")': ['<cr>', '<c-m>'],
  \ }
