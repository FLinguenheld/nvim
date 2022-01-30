" −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
" −−−−−−−−−−−−−−− Airline Flo −−−−−−−−−−−−−−−



" airline
let g:airline_powerline_fonts = 1
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors
set background=dark " for the dark version
" set background=light " for the light version
"colorscheme one


let g:airline_symbols = {}


let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.colnr = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.dirty='⚡'


let g:airline_section_z = '%3p%% %#__accent_bold#%{g:airline_symbols.linenr}%4l%#__restore__#%#__accent_bold#/%L%{g:airline_symbols.maxlinenr}%#__restore__# %3v/%03{col("$")-1}'
"let g:airline_section_z = '%3p%% %#__accent_bold#%{g:airline_symbols.linenr}%4l%#__restore__#%#__accent_bold#/%L%{g:airline_symbols.maxlinenr}%#__restore__# :%3v/%03{col("$")-1}'

