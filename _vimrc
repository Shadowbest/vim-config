"   __  ___                 _   __   ____   __  ___   ___   _____
"  /  |/  /  __ __         | | / /  /  _/  /  |/  /  / _ \ / ___/
" / /|_/ /  / // /      _  | |/ /  _/ /   / /|_/ /  / , _// /__  
"/_/  /_/   \_, /      (_) |___/  /___/  /_/  /_/  /_/|_| \___/  
"          /___/                                               

source /tools/vim/vim82/defaults.vim

" Use Vim settings and not the Vi settings
set nocompatible

" Line numbers
set number
set relativenumber
set noruler " don't show cursor position or line. Vim-airline does it already" 

" Format options
set formatoptions=tqn1
set tabstop=8
set softtabstop=2
set shiftwidth=2
set expandtab
set noshiftround
set wrap " wrap lines
set smartindent
set autoindent
set nocursorline " no cursorline on terminal"
set breakindent

" Disable automatic comment insertion
autocmd FileType javascript,scss,sass,less setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Highlight matching brackets
set showmatch
"set matchpairs+=<:>

" Status bar
set laststatus=2 " always show status line even if there is just one window"
set noshowmode " vim-airline already shows the mode

" Split window options
set splitright  " split to the right instead of left
set splitbelow  " split below instead of the top

" Disable bells and flash
set noeb vb t_vb=

" Matchit plugin
packadd! matchit

" Mappings
let mapleader = " "
inoremap jk <Esc>
nmap <leader>w :w<CR>
nmap <leader>qwe :source $HOME/_vimrc <CR>
nmap <leader>gso :source $HOME/_gvimrc <CR>
nmap <leader>ndt :NERDTree<CR>
nmap <leader>q :q<CR>

" Syntax highlighting
set termguicolors
syntax enable
filetype on
filetype plugin on

set backupcopy=yes

set fileencodings=utf-8
set encoding=utf-8

" Vim Plug
call plug#begin("$HOME/vimfiles/plugged")
Plug 'othree/yajs.vim'
Plug 'othree/html5.vim'
Plug 'vim-airline/vim-airline'
Plug 'jiangmiao/auto-pairs'
Plug 'morhetz/gruvbox'
Plug 'mattn/emmet-vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'cakebaker/scss-syntax.vim'
Plug 'digitaltoad/vim-pug'
Plug 'preservim/nerdtree'
Plug 'cespare/vim-toml'
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'Yggdroot/indentLine'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'ghifarit53/tokyonight-vim'
Plug 'wojciechkepka/vim-github-dark'
Plug 'ayu-theme/ayu-vim'
call plug#end()

let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

let g:user_emmet_install_global = 0
autocmd FileType html,css,scss,sass,less,javascript EmmetInstall

autocmd FileType scss,sass setl iskeyword+=@-@

" Redefine emmet leader key
let g:user_emmet_leader_key="<C-c>"

" Indent Character
let g:indentLine_char = "|"

" COC
source $HOME/coc.vim
