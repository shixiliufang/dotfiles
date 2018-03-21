" Display
syntax on
"set cursorcolumn
set cursorline
set history=1000
set nowrap
set number
set ruler
set scrolloff=5
set showcmd
set showmode

" Encoding
set binary
set bomb
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set ttyfast

" General
filetype on
filetype plugin on
set nocompatible
set title

" Indentation
filetype indent on
set expandtab
set shiftwidth=4
set smarttab
set softtabstop=4
set tabstop=4

" Mapping
map <F2> :NERDTreeToggle<CR>
map <F5> :call Build()<CR>

" Plugin
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'Yggdroot/indentLine'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'suan/vim-instant-markdown'
Plugin 'Valloric/YouCompleteMe'
call vundle#end()
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

" Search
set hlsearch
set incsearch
set ignorecase
set smartcase

" Spell
autocmd FileType md,tex setlocal spell spelllang=en_us,cjk

" Function
function Build()
    exec "w"
    if &filetype == 'c'
        exec "!clang -o %< -Weverything % && ./%<"
    elseif &filetype == 'cpp'
        exec "!clang -o %< -std=c++11 -stdlib=libc++ -Weverything -lc++ -lc++abi % && ./%<"
    elseif &filetype == 'python'
        exec "!python3 %"
    elseif &filetype == 'tex'
        exec "!xelatex % && firefox ./%<" . ".pdf"
    endif
endfunction
