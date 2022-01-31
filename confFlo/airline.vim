" −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
" −−−−−−−−−−−−−−− Airline Flo −−−−−−−−−−−−−−−
let g:airline_powerline_fonts = 1
set guifont=Hack\ Nerd\ Font\ 12
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors

" set background=dark " for the dark version
" set background=light " for the light version
"colorscheme one

let g:airline_symbols = {}
let g:airline_left_sep = "\ue0b0"
" let g:airline_left_alt_sep = '\ue0b5'
let g:airline_right_sep = "\ue0b2"
" let g:airline_right_alt_sep = '\ue0b7'
let g:airline_symbols.branch = '\ue0a0'
let g:airline_symbols.colnr = ''
let g:airline_symbols.readonly = '\ue0a2'
let g:airline_symbols.linenr = ''
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.dirty='⚡'

let g:airline_section_z = airline#section#create(['%3p%%' . "\ue0bd" . '%3{line(".")}/%L' . "\ue0bd" . '%3v/%{col("$")-1}'])
" let g:airline_section_z = '%3p%% %#__accent_bold#%{g:airline_symbols.linenr}%4l%#__restore__#%#__accent_bold#/%L%{g:airline_symbols.maxlinenr}%#__restore__# %3v/%03{col("$")-1}'
