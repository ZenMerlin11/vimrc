" Setup vundle plugins
" =============================================================================
source ~/.vim/plugins.vim


" Lightline settings
" =============================================================================
set laststatus=2


" NERDTree settings
" =============================================================================
"" Open NERDTree automatically even if no file was opened
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"" Set node delimitter
let g:NERDTreeNodeDelimiter = "\u00a0"


" General Editor Settings
" =============================================================================
"" Appearance 
syntax on
set number
colorscheme gruvbox

"" Tabs
set expandtab
set softtabstop=2
set shiftwidth=2

"" Keymappings
let mapleader = "-"

""" Editing
inoremap jk <esc>
vnoremap jk <esc> 
nnoremap <space> viw
nnoremap <leader>c viw~<esc>
inoremap <S-tab> <C-d>
nnoremap <S-tab> <<
inoremap <tab> <C-t>
nnoremap <tab> >>

""" Windows
noremap <C-h> <C-w>h
noremap <C-l> <C-w>l
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
nnoremap <leader>q <C-w>q
nnoremap <leader>h <C-w>s
nnoremap <leader>v <C-w>v

""" Tools
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>hb i" <esc>78i=<esc>
noremap <C-a> ggvG$
nnoremap <leader>a ggvG$
