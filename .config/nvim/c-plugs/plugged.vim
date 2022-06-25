call plug#begin('~/.config/nvim/plugged')                               
                                                                
    " Colors
    Plug 'morhetz/gruvbox'                                          
    Plug 'junegunn/seoul256.vim'
    Plug 'arzg/vim-colors-xcode'
    Plug 'joshdick/onedark.vim'

    Plug 'jremmen/vim-ripgrep'                                      
    Plug 'tpope/vim-fugitive'                                       
    " Plug 'vim-colors-lucid'
    " Plug 'mrkn/mrkn256'

    " Nerd Tree
    Plug 'preservim/nerdtree'                                       
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim'

    " Nerd tree icons
    Plug 'ryanoasis/vim-devicons'

    Plug 'vim-utils/vim-man'                                        
    Plug 'lyuts/vim-rtags'                                          
    Plug 'https://github.com/kien/ctrlp.vim'                        
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'mbbill/undotree'                                          
    Plug 'VundleVim/Vundle.vim'                                     

    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " " Telescope 
    " Plug 'nvim-telescope/telescope.nvim'

    " Vim-Tex
    Plug 'brennier/quicktex'
    Plug 'lervag/vimtex'
        " Output previewing
    ""Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' } 

    " Javascript
    ""Plug 'pangloss/vim-javascript'

    " Python
    " Plug 'tmhedberg/simpylfold'
    " Plug 'nvie/vim-flake8'
                                                                
call plug#end()                                                 
