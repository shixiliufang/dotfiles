" display
syntax on
"set cursorcolumn
set cursorline
set history=1000
set number
set ruler
set scrolloff=5
set showcmd
set showmode

" general
filetype on
filetype plugin on
set encoding=utf-8
set nocompatible
set title

" indentation
filetype indent on
set expandtab
set shiftwidth=4
set smarttab
set softtabstop=4
set tabstop=4

" plugin
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'Yggdroot/indentLine'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'Valloric/YouCompleteMe'
call vundle#end()
map <F2> :NERDTreeToggle<CR>
