set nocompatible
filetype off

" Directories
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
set undodir=~/.vim/undo

" Basic
filetype plugin indent on
set backspace=indent,eol,start
set fileformats=unix
set ls=2
set number
set ruler
set scrolloff=5
set shell=/bin/bash
set showcmd
set smartcase
set title
set ttyfast
syntax on

" Tabs
set autoindent
set expandtab
set tabstop=4
set softtabstop=0
set shiftwidth=4

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Highlight current line in insert mode
set cursorline

" Disallow arrow keys
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>
