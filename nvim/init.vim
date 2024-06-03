syntax enable
filetype plugin indent on
lua require('plugins')
lua require('init')

set autoindent
set ignorecase
set smartcase
set wrap 
set laststatus=2
set wildmenu
set number
set exrc



let mapleader = " "

noremap <leader>h :tabp<CR>
noremap <leader>l :tabn<CR>
noremap <leader>t :tabnew<CR>
noremap <leader>o :CtrlP<CR>
noremap <leader>cc "+y
noremap <leader>cp "+p

" nnoremap <leader>P :NERDTreeFocus<CR>
" nnoremap <leader>i :NERDTree<CR>
" nnoremap <leader>p :NERDTreeToggle<CR>
nnoremap <leader>f <cmd>NnnPicker<CR>

nnoremap <F5> :make
nnoremap <F6> :!ctags -R .

nnoremap <leader>tf <cmd>Telescope find_files<cr>
nnoremap <leader>tg <cmd>Telescope live_grep<cr>
nnoremap <leader>ot <cmd>ObsidianToday<cr>
nnoremap <leader>oy <cmd>ObsidianYesterday<cr>
nnoremap <leader>oo <cmd>ObsidianQuickSwitch<cr>
nnoremap <leader>of <cmd>ObsidianFollowLink<cr>
nnoremap <leader>od <cmd>ObsidianBacklinks<cr>

