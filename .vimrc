set number
set relativenumber
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set signcolumn="yes"
set noswapfile 
set ignorecase
set wildmenu 
set wildoptions=pum
set smartcase
set ignorecase

filetype on
filetype plugin on
filetype indent on " file type based indentation
autocmd FileType make set noexpandtab shiftwidth=8 softtabstop=0
autocmd FileType go set noexpandtab shiftwidth=8 softtabstop=0 tabstop=8

nnoremap <Space>q :quit<CR>
nnoremap <Space>c :bd<CR>
nnoremap <Space>w :w!<CR>
nnoremap <Space>s :vsplit<CR>
nnoremap <Space>h :split<CR>
nnoremap <Space>wl <C-w>l<CR>
nnoremap <Space>wh <C-w>h<CR>
nnoremap <Space>wj <C-w>j<CR>
nnoremap <Space>wk <C-w>k<CR>
nnoremap <Space>e :Explore<CR>

nmap <silent> <C-N> :cn<CR>zv
nmap <silent> <C-P> :cp<CR>zv
nnoremap <C-h> <C-w><
nnoremap <C-j> <C-w>+
nnoremap <C-k> <C-w>-
nnoremap <C-l> <C-w>>
