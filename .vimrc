:source $VIMRUNTIME/defaults.vim

"Show line numbers
:set number
:set relativenumber
:set ruler

:set formatoptions=tcqrn1
:set tabstop=2
:set shiftwidth=2
:set softtabstop=2
:set expandtab
:set noshiftround
:set wrap
:set smartindent

" Highlight matching pairs of brackets
:set matchpairs+=<:>
:set matchpairs+={:}
:set matchpairs+=(:)
:set matchpairs+=[:]

" Status bar
:set laststatus=2

" Matchit plugin
packadd! matchit

" Simple Mappings
:map \p i(<Esc>ea)<Esc>
:map \c i{<Esc>ea}<Esc>

:syntax enable
:color lucius
"LuciusBlackLowContrast
LuciusDarkLowContrast
"LuciusLightLowContrast

:set term=screen-256color
:set t_ut=

if $TERM == "xterm-256color"
  set t_Co=256
endif

:set backupcopy=yes

" Plugins
call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'mattn/emmet-vim'
Plug 'pangloss/vim-javascript'
call plug#end()
