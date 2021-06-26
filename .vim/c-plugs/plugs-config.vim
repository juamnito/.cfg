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

let g:vimtex_view_method = 'zathura'
let g:vimtex_quickfix_open_on_warning = 0

let g:vimtex_compiler_latexmk = {
            \ 'build_dir' : 'build',
            \}

"////////////////////////////////////////////////////////////////|
"================================================================|


"================================================================|
"////////////// QUICKTEX ////////////////////////////////////////|
"================================================================|

let g:quicktex_tex = {
    \' '   : "\<ESC>:call search('<+.*+>')\<CR>\"_c/+>/e\<CR>",
    \'mth' : "\\( <+++> \\) <++>",
    \'mmth' : "\\[\<CR><+++>\<CR>\\]\<CR><++>",
    \'prf' : "\\begin{proof}\<CR><+++>\<CR>\\end{proof}",
    \'sol' : "\\begin{solution}\<CR><+++>\<CR>\\end{solution}",
    \'itemize' : "\\begin{itemize}\<CR>\\item<+++>\<CR><++>\<CR>\\end{itemize}",
    \'enumerate' : "\\begin{enumerate}[<+++>]\<CR>\\item\<CR><++>\<CR>\\end{enumerate}",
    \'env' : "\\begin{<+++>}\<CR>\<CR>\\end{<++>}",
    \'align' : "\\begin{align*}\<CR><+++>\<CR>\\end{align*}",
    \'eqn' : "\\begin{equation*}\<CR><+++>\<CR>\\end{equation*}"
\}

let g:quicktex_math = {
    \' '    : "\<ESC>:call search('<+.*+>')\<CR>\"_c/+>/e\<CR>",
    \'set'  : '\left\{ <+++> \right\} <++>',
    \'frac' : '\frac{<+++>}{<++>} <++>',
    \'indic' : '\ind{<+++>}{<++>} <++>',
    \'Pars' : '\left( <+++> \right) <++>',
    \'pars' : '( <+++> ) <++>',
    \'Llavs' : '\left\{ <+++> \right\} <++>',
    \'llavs' : '\{ <+++> \} <++>',
    \'Corchs' : '\left[ <+++> \right] <++>',
    \'corchs' : '[ <+++> ] <++>',
    \'pmtx' : "\\begin{pmatrix}\<CR><+++>\<CR>\\end{pmatrix}"
\}
"/////////////////////////////////////////////////////////////////|
"=================================================================|
"
"
"=================================================================|
"////////////// vim-latex-live-preview ///////////////////////////|
"=================================================================|

let g:livepreview_previewer = 'zathura'

"////////////////////////////////////////////////////////////////|
"================================================================|


