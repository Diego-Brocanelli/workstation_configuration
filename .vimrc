set shell=/bin/bash

filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'dracula/vim', { 'name': 'dracula' }

" All of your Plugins must be added before the following line
call vundle#end()            " required

syntax on
colorscheme dracula

set number 
set encoding=utf-8
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4
set smarttab
set cursorline
set ruler

