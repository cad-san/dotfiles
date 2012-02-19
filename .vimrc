" stantard format
set noswapfile
set nobackup
set number
set fileformat=unix

" vindle Setting
set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" vundle
Bundle 'gmarik/vundle'
" neocomplcache
Bundle 'Shougo/neocomplcache'
" quickrun
Bundle 'thinca/vim-quickrun'
" pyflakes
Bundle 'mitechie/pyflakes-pathogen'
" autoclose
Bundle 'scottstvnsn/autoclose.vim' 
" surround
Bundle 'surround.vim'
" yankring
Bundle 'chrismetcalf/vim-yankring'
filetype plugin indent on

" neocomplcache
let g:neocomplcache_enable_at_startup = 1 " 起動時に有効化

" yankring
let g:yankring_history_dir = '$HOME/.vim'

filetype on            " enables filetype detection
filetype plugin on     " enables filetype specific plugins

" indent setting
set autoindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" python setting
autocmd FileType python setl smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete 

