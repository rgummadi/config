set nocompatible
call plug#begin('C:\Users\hcl_rgum\AppData\Local\nvim\autoload')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-commentary'
Plug 'junegunn/fzf',{ 'do': { -> fzf#install() } } 
Plug 'junegunn/fzf.vim'
Plug 'junegunn/limelight.vim'
Plug 'morhetz/gruvbox'  
Plug 'mhartington/oceanic-next'
Plug 'dracula/vim', { 'as': 'dracula' } 
Plug 'vimwiki/vimwiki'
call plug#end()




"==========General Config ==============
set number relativenumber
set backspace=indent,eol,start "Allow backspace in insert mode
set showcmd                    "Show incomplete cmds down the bottom
set showmode                   "Show current mode down the bottom
set autoread                   "Reaload files changed outside vim
set splitbelow splitright
set hidden                     " The current buffer can be put to the background w/o writing to disk
set cursorline                  " highlight current line
set title                       " show title in console title bar
set ff=unix                     " default file types: UNIX
cd c:\Users\hcl_rgum
let mapleader = "\<Space>"
nnoremap <Leader>w :w<CR>
nnoremap <C-i> i <Esc>r 

vnoremap <C-c> "+y
map <C-v> "+P

"Check file in shell check 
" map <Leader>s :!clear && shellcheck %<CR>

if (has("termguicolors"))
 set termguicolors
endif

syntax enable
" set background=light
" colorscheme gruvbox
colorscheme dracula
"===================Navigate Buffers ===================
nnoremap <leader>bb :buffers<cr>:b<space> 
nnoremap <leader><tab> :b#<cr>

"" ================ Turn Off Swap Files ==============

set noswapfile
set nobackup
set nowb

"================= Indentation =============
set smarttab
set smartindent
set autoindent
set shiftwidth=4
set tabstop=4
set expandtab
set list
set listchars=tab:>-

"================= Easy window navigation =====================
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" =======" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove 
map <leader>t<leader> :tabnext<cr>

" ========== Folding ========================
" set foldmethod=manual
" set foldcolumn=1
"========= Search ===========================

" set incsearch       " Find the next match as we type the search
set hls!        " Highlight searches by default
set ignorecase      " Ignore case when searching...
set smartcase       " ...unless we type a capital
nnoremap <CR> :noh<CR><CR>
" ===============Edit vimr configuration file===============
nnoremap <Leader>ve :e $MYVIMRC<CR>
" " Reload vimr configuration file
nnoremap <Leader>vr :source $MYVIMRC<CR> 

"================== for NerdTree plugin ------------------
filetype plugin indent on
autocmd VimEnter * NERDTree
map <Leader>n <ESC>:NERDTreeToggle <RETURN>
map <Leader>f <ESC>:NERDTreeFind <RETURN>
map <Leader>nm <ESC>:NERDTreeMirror <RETURN>
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeShowHidden=1  "Show hidden files in NerdTree
let NERDTreeMapOpenInTab='\r'
let g:NERDTreeHijackNetrw = 0
let g:NERDTreeWinSize = 31
let g:NERDTreeChDirMode = 2
let g:NERDTreeAutoDeleteBuffer = 1
let g:NERDTreeShowBookmarks = 1
let g:NERDTreeCascadeOpenSingleChildDir = 1
"================== for Limelight plugin ------------------
let g:limelight_default_coefficient = 0.7
let g:limelight_conceal_ctermfg = 238
nmap <silent> gl :Limelight!!<CR>
xmap gl <Plug>(Limelight)
