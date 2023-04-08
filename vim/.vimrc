execute pathogen#infect()
syntax on
filetype plugin indent on

set background=dark
colorscheme gruvbox

set number
set relativenumber

set shiftwidth=4
set tabstop=4
" Use space characters instead of tabs.
set expandtab

" While searching though a file incrementally highlight matching characters as you type.
set incsearch
" Use highlighting when doing a search.
set hlsearch
" Ignore capital letters during search.
set ignorecase
" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase
" Show matching words during a search.
set showmatch

set cursorline

" Set the commands to save in history default number is 20.
set history=1000

" Show the mode you are on the last line.
set showmode

inoremap jk <Esc>

nnoremap <silent> <C-p> :Files<CR>
nnoremap <silent> <C-f> :Ag<CR>

" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
