syntax on
filetype indent on
filetype plugin on

set background=dark
set expandtab
set shiftwidth=4
set tabstop=4
set backspace=indent,eol,start                 " Make backspace erase across lines
set wildmode=longest,list                      " Bash-style file completion
set nowrap

if has("autocmd")
    filetype on
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
set hlsearch

# Disable swap files
set noswapfileset noswapfileset noswapfileset noswapfileset ruler
set laststatus=2
set statusline=%<%F\ %h%m%r%=%-14.(%l,%c%V%)\ %P

let g:user_zen_settings = {
\    'indentation' : '    ',
\    'php' : {
\        'extends' : 'html',
\        'filters' : 'c',
\    },
\    'xml' : {
\        'extends' : 'html',
\    },
\    'haml' : {
\        'extends' : 'html',
\    },
\    'twig' : {
\        'extends' : 'html',
\    }
\}

nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>
