set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()
Plugin 'VundleVim/Vundle.vim'
Plugin 'mattn/emmet-vim'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'othree/html5.vim'

source ~/.vim/cscope_maps.vim

set mouse=a
set number
" Colors
"set background=dark
"colorscheme solarized

set tabstop=2
set shiftwidth=2
" tabs a cool
"set expandtab
set cursorline
set cursorcolumn
filetype plugin indent on

syntax on
set smartindent
"set background=dark
"set showcmd
"set ruler
"set backspace=indent,eol,start
"set shiftround
let g:user_emmet_leader_key='<C-e>'
hi CursorColumn  ctermbg=Black
hi CursorLine cterm=NONE  ctermbg=Black
