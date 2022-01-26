" −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
" −−−−−−−−−−−−−−−−− FZF Flo −−−−−−−−−−−−−−−−−

" Configure la recherche pour exclure les dossiers .git et env
let $FZF_DEFAULT_OPTS = '--layout=reverse --info=inline'
let $FZF_DEFAULT_COMMAND="rg --files --hidden -g '!.git' -g '!env/'"

" Keys une fois ouvert −−−−−
" ctrl-t a l'air beaucoup moins pratique que 'entrer' - A supp ?
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit' }


" Keys −−−−−−−−−−−−−−−−−−−−−
" :Files [PATH] 	Files (runs $FZF_DEFAULT_COMMAND if defined)
" :Rg [PATTERN] 	rg search result (ALT-A to select all, ALT-D to deselect all)
" :Lines [QUERY] 	Lines in loaded buffers
" :BLines [QUERY] 	Lines in the current buffer
" :Buffers
" :History			v:oldfiles and open buffers
" :History/		 	Search history
nnoremap <leader>z :Files<CR>
nnoremap <leader>r :Rg<CR>
nnoremap <leader>f :BLines<CR>
nnoremap <leader>F :Lines<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>h :History<CR>
nnoremap <leader>H :History/<CR>


" −−−−−−−−−−−−−−−−−−−−−−−−−−
" Border color
let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.5,'xoffset': 0.5, 'highlight': 'Todo', 'border': 'sharp' } }

" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

