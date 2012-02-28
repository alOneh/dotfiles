syntax on
filetype on
filetype indent on
filetype plugin on

set background=dark
set shiftwidth=4
set tabstop=4

if has("autocmd")
  filetype plugin indent on
endif

set showcmd             " Show (partial) command in status line.
set showmatch           " Show matching brackets.
set ignorecase          " Do case insensitive matching
set smartcase           " Do smart case matching
set incsearch           " Incremental search
set hidden              " Hide buffers when they are abandoned
set number
set modelines=1

# Disable swap files
set noswapfile