syntax enable
execute pathogen#infect()
filetype plugin indent on

set autoindent
set ignorecase
set smartcase
set wrap 
set laststatus=2
set wildmenu
set number
set exrc

colorscheme molokai


let mapleader = " "

noremap <leader>h :tabp<CR>
noremap <leader>l :tabn<CR>
noremap <leader>t :tabnew<CR>
noremap <leader>o :CtrlP<CR>

nnoremap <leader>P :NERDTreeFocus<CR>
nnoremap <leader>i :NERDTree<CR>
nnoremap <leader>p :NERDTreeToggle<CR>
nnoremap <leader>f :NERDTreeFind<CR>

nnoremap <F5> :make
nnoremap <F6> :!ctags -R .

autocmd FileType lua setlocal tabstop=2 shiftwidth=2
