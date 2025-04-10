set number
set relativenumber

syntax on

set ignorecase
set smartcase

set mouse=a

set hlsearch

set showmatch

set splitbelow

let mapleader = " "

call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'airblade/vim-gitgutter'

call plug#end()
" Optional: Custom key bindings
nnoremap <leader>f :CtrlP<CR>
nnoremap <leader>b :CtrlPBuffer<CR>
nnoremap <leader>e :NERDTreeFocus<CR>

colorscheme habamax

let g:ctrlp_custom_ignore = '\v(node_modules|.git|.cache|build|dist|tmp)/'

