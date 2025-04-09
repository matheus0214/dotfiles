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

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'preservim/nerdtree'

call plug#end()

" Install bat for better preview (optional but recommended)
" For Ubuntu/Debian: sudo apt install bat
" For macOS: brew install bat
" For Arch Linux: sudo pacman -S bat

" Setup fzf with file preview using bat or cat
let g:fzf_preview_window = ['right:50%', 'ctrl-/']

" Exclude .venv and other directories, with code preview
let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --follow --glob "!.git" --glob "!.venv" --glob "!node_modules"'

" Custom command for files with preview
command! -bang -nargs=? -complete=dir Files
  \ call fzf#vim#files(<q-args>, fzf#vim#with_preview({
  \   'source': 'rg --files --hidden --follow --glob "!.git" --glob "!.venv" --glob "!node_modules"'
  \ }), <bang>0)

" For ripgrep with preview
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case --glob "!.venv" -- '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)

" Optional: Custom key bindings
nnoremap <leader>f :Files<CR>
nnoremap <leader>e :NERDTreeFocus<CR>
