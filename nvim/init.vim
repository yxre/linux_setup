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
set clipboard+=unnamedplus



let mapleader = " "



noremap <leader>h :tabp<CR>
noremap <leader>l :tabn<CR>
noremap <leader>t :tabnew<CR>

" nnoremap <leader>P :NERDTreeFocus<CR>
" nnoremap <leader>i :NERDTree<CR>
" nnoremap <leader>p :NERDTreeToggle<CR>
nnoremap <leader>f <cmd>NnnPicker<CR>

nnoremap <F5> :make
nnoremap <F6> :!ctags -R .

nnoremap <leader>tf <cmd>Telescope find_files<cr>
nnoremap <leader>tg <cmd>Telescope live_grep<cr>

nnoremap <leader>bt <cmd>ObsidianToday<cr>
nnoremap <leader>by <cmd>ObsidianYesterday<cr>
nnoremap <leader>bo <cmd>ObsidianQuickSwitch<cr>
nnoremap <leader>bf <cmd>ObsidianFollowLink<cr>
nnoremap <leader>bd <cmd>ObsidianBacklinks<cr>
:vnoremap <leader>cc :w !xclip -selection clipboard<CR>


autocmd FileType org setlocal noexpandtab tabstop=4 shiftwidth=4 noautoindent
