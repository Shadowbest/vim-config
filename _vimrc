source /tools/vim/vim82/defaults.vim

" Line numbers
set number
set relativenumber
set ruler

" Format options
set formatoptions=tcqn1
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set noshiftround
set wrap
set smartindent
set cursorline
set breakindent

" Highlight matching brackets
set matchpairs+=<:>
set matchpairs+={:}
set matchpairs+=(:)
set matchpairs+=[:]

" Status bar
set laststatus=2

" Matchit plugin
packadd! matchit

" Remaps
inoremap ii <Esc>

" Syntax highlighting
syntax	enable 

set backupcopy=yes

set fileencodings=utf-8

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
Plug 'nathanaelkane/vim-indent-guides'
Plug 'preservim/nerdtree'
call plug#end()

let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

let g:user_emmet_install_global = 0
autocmd FileType html,css,scss,sass,less EmmetInstall

" Redefine emmet leader key
let g:user_emmet_leader_key="<C-c>"

" Enable indent guides by default
let g:indent_guides_enable_on_vim_startup = 1
