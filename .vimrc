set nocompatible
set history=500
filetype plugin on
filetype indent on
syntax enable
set autoread
set autowrite
set autochdir
set wildmenu 
set backspace=eol,start,indent
set wildignore=*.o,*~,*.pyc
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store


"display
try
    colorscheme desert
catch
endtry
set ruler
set number
set background=dark
set cursorline
set laststatus=2
set showmatch 
set mat=2
set lazyredraw 

"search
set magic
set hlsearch
set incsearch 
set ignorecase
set smartcase

"encoding
set encoding=utf8
set ffs=unix,dos,mac

"indent and tab setting
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set autoindent
set smartindent

"fold
set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=indent

"self-defined keymapping
nnoremap B ^
nnoremap E $
nnoremap $ <nop>
nnoremap ^ <nop>

"golang
let g:go_fmt_command = "goimports"
let g:go_version_warning = 0
autocmd FileType go setlocal shiftwidth=4 tabstop=4

"ctrlp
let g:ctrlp_working_path_mode = 0
let g:ctrlp_map = '<c-f>'
map <leader>j :CtrlP<cr>
map <c-b> :CtrlPBuffer<cr>
let g:ctrlp_max_height = 20
let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git\|^\.coffee'


"lightline
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ ['mode', 'paste'],
      \             ['fugitive', 'readonly', 'filename', 'modified'] ],
      \   'right': [ [ 'lineinfo' ], ['percent'] ]
      \ },
      \ 'component': {
      \   'readonly': '%{&filetype=="help"?"":&readonly?"🔒":""}',
      \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
      \   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}'
      \ },
      \ 'component_visible_condition': {
      \   'readonly': '(&filetype!="help"&& &readonly)',
      \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
      \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
      \ },
      \ 'separator': { 'left': ' ', 'right': ' ' },
      \ 'subseparator': { 'left': ' ', 'right': ' ' }
      \ }
