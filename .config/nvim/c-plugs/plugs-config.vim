" Aquí está la configuración de cada uno de los Pluggins

"================================================================|
"////////////// vim-javascript //////////////////////////////////|
"================================================================|

let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1

augroup javascript_folding
    au!
    au FileType javascript setlocal foldmethod=syntax
augroup END

map <leader>l :exec &conceallevel ? "set conceallevel=0" : "set conceallevel=1"<CR>

"////////////////////////////////////////////////////////////////|
"================================================================|



"================================================================|
"////////////// VimTex //////////////////////////////////////////|
"================================================================|

syntax enable

let g:vimtex_view_method = 'zathura'
"let g:vimtex_view_general_viewer = 'evince'

""let g:vimtex_compiler_method = 'latexrun'

let g:vimtex_quickfix_open_on_warning = 0

"let g:vimtex_compiler_latexmk = {
"            \ 'build_dir' : 'build',
"            \}
" let g:vimtex_compiler_engine = 'lualatex'

"////////////////////////////////////////////////////////////////|
"================================================================|


"================================================================|
"////////////// QUICKTEX ////////////////////////////////////////|
"================================================================|

""let g:quicktex_usedefault = 1

let g:quicktex_tex = {
    \' '   : "\<ESC>:call search('<+.*+>')\<CR>\"_c/+>/e\<CR>",
    \'mth' : "\\( <+++> \\) <++>",
    \'mmth' : "\\[\<CR><+++>\<CR>\\]\<CR><++>",
    \'prf' : "\\begin{proof}\<CR><+++>\<CR>\\end{proof}",
    \'sol' : "\\begin{solution}\<CR><+++>\<CR>\\end{solution}",
	\'item' : "\\begin{itemize}<+++>\<CR>\\setlength{\\parindent}{1cm}\<CR>\\item\<CR><++>\<CR>\\end{itemize}",
	\'enum' : "\\begin{enumerate}<+++>\<CR>\\setlength{\\parindent}{1cm}\<CR>\\item\<CR><++>\<CR>\\end{enumerate}",
    \'itm': "\\item\<CR><+++>",
    \'env' : "\\begin{<+++>}\<CR>\\end{<++>}",
    \'align' : "\\begin{align*}\<CR><+++>\<CR>\\end{align*}",
    \'eqn' : "\\begin{equation*}\<CR><+++>\<CR>\\end{equation*}",
	\'fig': "\\begin{figure}[H]\<CR>\\centering\<CR>\\includegraphics[width=<+++>\\textwidth]{<++>}\<CR>\\caption{<++>}\<CR>\\end{figure}",
	\'tab': "\\begin{tabular}{<+++>}\<CR><++>\<CR>\\end{tabular}",
	\'def': "\\begin{definition}\<CR><+++>\<CR>\\end{definition}"
\}

let g:quicktex_math = {
    \' '    : "\<ESC>:call search('<+.*+>')\<CR>\"_c/+>/e\<CR>",
    \'set'  : '\left\{ <+++> \right\} <++>',
    \'frac' : '\frac{<+++>}{<++>} <++>',
    \'dfrac' : '\dfrac{<+++>}{<++>} <++>',
	\'sum' : '\sum_{<+++>}^{<++>} <++> ',
	\'prod' : '\prod_{<+++>}^{<++>} <++> ',
    \'Pars' : '\left( <+++> \right) <++>',
    \'pars' : '( <+++> ) <++>',
    \'Llavs' : '\left\{ <+++> \right\} <++>',
    \'llavs' : '\{ <+++> \} <++>',
    \'Corchs' : '\left[ <+++> \right] <++>',
    \'corchs' : '[ <+++> ] <++>',
	\'bar'	: '\overline{<+++>} <++>',
	\'abs' : '\abs{<+++>} <++>',
	\'norm' : '\\norm{<+++>} <++>',
    \'pmtx' : "\\begin{pmatrix}\<CR><+++>\<CR>\\end{pmatrix}",
	\'pint' : "\\prodint{<+++>} <++>",
	\'ex' : "^{<+++>} <++>",
	\'mcal' : "\\mathcal{<+++>} <++>",
	\'mbb' : "\\mathbb{<+++>} <++>",
	\'cases' : "\\left\\{ <+++> \\right.",
	\'tab': "\\begin{tabular}{<+++>}\<CR><++>\<CR>\\end{tabular}"
\}
"/////////////////////////////////////////////////////////////////|
"=================================================================|


"=================================================================|
"////////////// vim-latex-live-preview ///////////////////////////|
"=================================================================|

let g:livepreview_previewer = 'zathura'

"////////////////////////////////////////////////////////////////|
"================================================================|


"=================================================================|
"////////////// colorscheme onecolor ///////////////////////////|
"=================================================================|

if (empty($TMUX))
    if (has("nvim"))
          let $NVIM_TUI_ENABLE_TRUE_COLOR=1
    endif
    if (has("termguicolors"))
        set termguicolors
    endif
endif


"////////////////////////////////////////////////////////////////|
"================================================================|

"=================================================================|
"////////////// Ulti Snips ////////////////////////////|
"=================================================================|

let g:UltiSnipsExpandTrigger='<Tab>'
let g:UltiSnipsJumpForwardTrigger='<space><space>'
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

let g:UltiSnipsEditSplit="vertical"

"let g:UltiSnipsSnippetStorageDirectoryForUltiSnipsEdit="~/.config/nvim/plugged/vim-snippets/UltiSnips/"

"////////////////////////////////////////////////////////////////|
"================================================================|

