" −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
" −−−−−−−−−−−−−−− Airline Flo −−−−−−−−−−−−−−−


" Switch to your current theme
let g:airline_theme = 'onedark'

" Always show tabs
"set showtabline=2


" We don't need to see things like -- INSERT -- anymore
set noshowmode

" Masque le texte utf-8[unix]
let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'

" Symboles - Activer la police dans le terminal
" Installer également : sudo apt-get install fonts-powerline
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.colnr = '  '
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.dirty='⚡'

let g:airline_section_z = '%3p%% %#__accent_bold#%{g:airline_symbols.linenr}%4l%#__restore__#%#__accent_bold#/%L%{g:airline_symbols.maxlinenr}%#__restore__# :%3v/%03{col("$")-1}'


"let g:airline_symbols.linenr = '  '
"let g:airline_symbols.maxlinenr = '  '
"
" −−−−−−−−−−−−−−−−−
" Barre des buffers
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = ''
"let g:airline#extensions#tabline#left_alt_sep = ''
"let g:airline#extensions#tabline#right_sep = ''
"let g:airline#extensions#tabline#right_alt_sep = ''
"let g:airline#extensions#tabline#buffer_idx_mode = 1
