"  __  __ _         _                    
" |  \/  (_) __   _(_)_ __ ___  _ __ ___ 
" | |\/| | | \ \ / / | '_ ` _ \| '__/ __|
" | |  | | |  \ V /| | | | | | | | | (__ 
" |_|  |_|_|   \_/ |_|_| |_| |_|_|  \___|
"                                        
"                                        

"================================================================|
"////////////// GENERAL SETTINGS ////////////////////////////////|
"================================================================|

set nocompatible

" set exrc
""set guicursor
set relativenumber
set nu                                                          
set nohlsearch
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4                                           
set expandtab                                              
set autoindent
" set nowrap                                                      
set showmode

set noswapfile
set nobackup
set undodir=~/.vim/udodir
set undofile

set incsearch
set scrolloff=8
" set colorcolumn=80
set signcolumn=yes

set t_Co=256
syntax on

set clipboard=unnamedplus

set mouse=a
    " Tabs
        filetype indent on
set smartindent                                               
set encoding=UTF-8

" hidden characters
set listchars=tab:»\ ,space:·,nbsp:␣,precedes:«,extends:»,eol:¬ ",trail:•
set list
                                                                
    " searching words                                           
    set ignorecase                                              
    " set hlsearch                                              
                                                                
    " colors                                                    
        colorscheme gruvbox
        " colorscheme xcodedark
        " colorscheme xcodedarkhc
        " colorscheme xcodelight
        " colorscheme xcodewwdc
    set background=dark
    " highlight Normal guibg=none
    "
" Si necesitas el árbol de archivos cada que inicies vim descomenta lo
" siguiente
    " autocmd VimEnter * NERDTree

if executable('rg')
    let g:rg_derive_root='true'
endif

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:netrw_browse_split=2
let g:netrw_banner=0
let g:netrw_winsize=25

let g:ctrlp_use_caching=0

"////////////////////////////////////////////////////////////////|
"================================================================|

"================================================================|
"////////////// PLUGGINS CONFIG /////////////////////////////////|
"================================================================|
    source $HOME/.vim/c-plugs/plugged.vim
    source $HOME/.vim/c-plugs/plugs-config.vim
"////////////////////////////////////////////////////////////////|
"================================================================|

"================================================================|
"////////////// MAPPINGS ////////////////////////////////////////|
"================================================================|
    source $HOME/.vim/c-plugs/maps.vim
"////////////////////////////////////////////////////////////////|
