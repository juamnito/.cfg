"================================================================|
"////////////// GENERAL SETTINGS ////////////////////////////////|
"================================================================|

""set nocompatible

set exrc
""set guicursor
set cul
set relativenumber
set nu
set nohlsearch
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
"set expandtab 
""set autoindent
set showmode
set spelllang=es_mx

set nobackup
set nowritebackup

set cmdheight=2
set updatetime=300


set wrap
""set linebreak
set textwidth=0

set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir
set undofile

set incsearch
set scrolloff=8
""set colorcolumn=80
set signcolumn=yes
set t_Co=256
syntax on

set clipboard=unnamed
set mouse=r

    " Tabs
    " filetype plugin indent on

""set smartindent                                               
set encoding=utf-8

" hidden characters
set listchars=tab:»\ ,space:·,nbsp:␣,precedes:«,extends:»,eol:¬ ",trail:•
set list
                                                                
    " searching words                                           
    set ignorecase                                              

    " set hlsearch                                              
                                                                
    " colors                                                    
        ""colo seoul256
        colorscheme onedark
        ""colorscheme gruvbox
        " colorscheme xcodedark
        " colorscheme xcodedarkhc
        " colorscheme xcodewwdc
    set background=dark
    " highlight Normal guibg=none
    "
    " Transparency
    hi Normal guibg=NONE ctermbg=NONE

" Si necesitas el árbol de archivos cada que inicies vim descomenta lo
" siguiente
    " autocmd VimEnter * NERDTree


"////////////////////////////////////////////////////////////////|
"================================================================|
"

"================================================================|
"////////////// PLUGGINS CONFIG /////////////////////////////////|
"================================================================|
source $HOME/.config/nvim/c-plugs/plugged.vim
source $HOME/.config/nvim/c-plugs/plugs-config.vim
"////////////////////////////////////////////////////////////////|
"================================================================|


"================================================================|
"////////////// MAPPINGS ////////////////////////////////////////|
"================================================================|
source $HOME/.config/nvim/c-plugs/maps.vim
"////////////////////////////////////////////////////////////////|
"================================================================|
