set nocompatible
call plug#begin('C:\Users\hcl_rgum\AppData\Local\nvim\autoload')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-commentary'
call plug#end()




"==========General Config ==============
set number
set backspace=indent,eol,start "Allow backspace in insert mode
set showcmd                    "Show incomplete cmds down the bottom
set showmode                   "Show current mode down the bottom
set autoread                   "Reaload files changed outside vim

set hidden                     " The current buffer can be put to the background w/o writing to disk
set cursorline                  " highlight current line
set title                       " show title in console title bar
set ff=unix                     " default file types: UNIX
cd c:\Users\hcl_rgum
let mapleader = "\<Space>"
nnoremap <Leader>w :w<CR>
nnoremap <C-i> i <Esc>r 

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
" ================ Search ===========================

" set incsearch       " Find the next match as we type the search
" set hlsearch        " Highlight searches by default
set ignorecase      " Ignore case when searching...
set smartcase       " ...unless we type a capital

" ===============Edit vimr configuration file===============
nnoremap <Leader>ve :e $MYVIMRC<CR>
" " Reload vimr configuration file
nnoremap <Leader>vr :source $MYVIMRC<CR> 

"================== for NerdTree plugin ------------------
filetype plugin indent on
autocmd VimEnter * NERDTree
map <Leader>n <ESC>:NERDTreeToggle <RETURN>
map <Leader>f <ESC>:NERDTreeFind <RETURN>
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeShowHidden=1	"Show hidden files in NerdTree
let NERDTreeMapOpenInTab='\r'
