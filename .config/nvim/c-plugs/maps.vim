"================================================================|
"////////////// MAPPINGS ////////////////////////////////////////|
"================================================================|

let mapleader=" "                                          

    " General compilation
    noremap make :wall<CR> :! make<CR>
    noremap <silent> <C-S>  :update<CR>
    vnoremap <silent> <C-S> <C-C>:update<CR>
    inoremap <silent> <C-S> <C-O>:update<CR>

    " Generic                                                   
    inoremap ( ()<Left>
    inoremap { {}<Left>
    inoremap [ []<Left>

    inoremap ' ''<Left>
    inoremap " ""<Left>

    " Windows
        nnoremap    <leader>v :vnew <CR>
        nnoremap    <leader>b :new <CR>

        nnoremap    <leader>h :wincmd h<CR>
        nnoremap    <leader>l :wincmd l<CR>
        nnoremap    <leader>j :wincmd j<CR>
        nnoremap    <leader>k :wincmd k<CR>

        " resizing
        nnoremap <silent> <leader>+ :vertical resize +5<CR>
        nnoremap <silent> <leader>- :vertical resize -5<CR>

    " UndoTree
    nnoremap <leader>u :UndotreeShow<CR>

    " NERDTree
        nnoremap <leader>tt <Esc>:NERDTreeToggle<Enter>
	" Telescope
		nnoremap <leader>ff <cmd>Telescope find_files<cr>
		nnoremap <leader>fg <cmd>Telescope live_grep<cr>
		nnoremap <leader>fb <cmd>Telescope buffers<cr>
		nnoremap <leader>fh <cmd>Telescope help_tags<cr>

    " Guide
        inoremap ;gui <++> 

        inoremap ,, <Esc>/<++><Enter>"_c4l<C-R>_
        vnoremap <leader><leader> <Esc>/<++><Enter>"_c4l<C-R>_
        nnoremap <leader><leader> <Esc>/<++><Enter>"_c4l<C-R>_
                                                                
    " LaTeX maps                                                
        autocmd FileType tex inoremap $ $$<Left>
        autocmd FileType tex imap \[ \[\]<Left><Left>                     

        autocmd FileType tex nnoremap enun :!~/T-scripts/Scripts/open-enun<CR><CR>
        autocmd FileType tex nnoremap sbib :!~/T-scripts/Scripts/open-bib<CR><CR>
    " C++ 
        autocmd FileType cpp inoremap /* /**/<Left><Left>
        autocmd FileType cpp inoremap {<CR> {<CR>}<C-o>O

"////////////////////////////////////////////////////////////////|
"================================================================|
