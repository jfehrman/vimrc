" ===============  Pathogen setup.=============
set nocompatible
set noerrorbells
execute pathogen#infect()

" =============== My Stuff ====================
syntax on
set incsearch
set tabstop=2
set nu rnu
set shiftwidth=2
set expandtab
set smartindent
set nowrap
set smarttab
set mouse=
set background=dark
set hlsearch
filetype plugin on
filetype plugin indent on
" Folding
let g:php_folding=2
set foldmethod=syntax
set foldlevelstart=4
" Autocomplete
set omnifunc=syntaxcomplete#Complete
set completeopt-=preview
au BufRead,BufNewFile *.tag set filetype=html
" Enable mouse
set mouse=a
" Set column reminder 81
set colorcolumn=81

" ============= Compatability ================
set encoding=utf-8
set t_Co=256
hi Comment ctermfg=lightblue

" ============= Custom commands ==============
command Test execute "!phpunit %"
command Snips new|read !cat ~/.vim/bundle/custom_snippets/snippets/*
command CustomHelp tabnew|read !cat ~/.vim/splash.txt

" ========== Other Config Sources =============
source ~/.vim/config/NerdTree.vim
source ~/.vim/config/Airline.vim
source ~/.vim/config/PHPQA.vim
source ~/.vim/config/Snippets.vim
source ~/.vim/config/Clang.vim
source ~/.vim/config/Syntastic.vim
source ~/.vim/config/VimCompletesMe.vim

au BufNewFile,BufRead *.ejs set filetype=html
