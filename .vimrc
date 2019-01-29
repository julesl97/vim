set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()
Plugin 'VundleVim/Vundle.vim'
Plugin 'mattn/emmet-vim'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
Plugin 'othree/html5.vim'
Plugin 'WolfgangMehner/c-support'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'

Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}



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

" Enable folding
set foldmethod=indent
set foldlevel=99
" Enable folding with the spacebar
nnoremap <space> za

" For local replace
nnoremap gr gd[{V%::s/<C-R>///gc<left><left><left>

" For global replace
nnoremap gR gD:%s/<C-R>///gc<left><left><left>

" PYTHON======================================
au BufNewFile,BufRead *.py, *.python
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix
    
"python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF
