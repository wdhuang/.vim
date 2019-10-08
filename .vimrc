set history=500

filetype plugin on
filetype indent on

set autoread
set autochdir
set wildmenu
set wildignore=*.o,*~,*.pyc
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store

set ruler
set number
set backspace=eol,start,indent

set ignorecase
set smartcase
set hlsearch
set incsearch 
set lazyredraw 
set magic

set showmatch 
set mat=2

syntax enable

try
    colorscheme desert
catch
endtry

set background=dark
set cursorline

set encoding=utf8
set ffs=unix,dos,mac

set expandtab
set smarttab
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set linebreak
set tw=500

set autoindent
set smartindent
set wrap

set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=indent

nnoremap B ^
nnoremap E $

nnoremap $ <nop>
nnoremap ^ <nop>
