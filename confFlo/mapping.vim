" −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
" −−−−−−−−−−−−−−− Mapping Flo −−−−−−−−−−−−−−−


" -- Touche leader
let mapleader = ","

" -- Remap
nnoremap B ^				" Début de ligne
nnoremap W $				" Fin de ligne
nnoremap $ <nop>
nnoremap ^ <nop>

nnoremap dW d$		" Coupe du curseur à la fin de ligne sans le saut de ligne (complète dd)
nnoremap yW y$		" Copie du curseur à la fin de ligne sans le saut de ligne (complète yy)

nnoremap dB d0		" Coupe du curseur au début de la ligne
nnoremap yB y0		" Copie du curseur au début de la ligne

" -- Clipboard
vnoremap <C-c> "+y
"nnoremap <leader>Y "*y
nnoremap <leader>p "*p												" Past from desk clipboard
nnoremap <silent> <leader>y  :<C-u>CocList -A --normal yank<cr>		" List of yanked words

" -- Terminal mode
tnoremap <Esc> <C-\><C-n>	" Permet de quitter le mode terminal avec un double cligue Esc

" -- Enregistre et lance python
"autocmd FileType python map <buffer> <F6> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
"autocmd FileType python map <buffer> <F6> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>

autocmd FileType python map <buffer> <F6> :w<CR>:exec 'term python3' shellescape(@%, 1)<CR> i
autocmd FileType python imap <buffer> <F6> <Esc> :w<CR>:exec 'term python3' shellescape(@%, 1)<CR> i


" −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
nnoremap <leader><space> :nohlsearch<CR>
" −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
" Use alt + hjkl to resize windows
nnoremap <M-down>    :resize -2<CR>
nnoremap <M-up>    :resize +2<CR>
nnoremap <M-left>    :vertical resize -2<CR>
nnoremap <M-right>    :vertical resize +2<CR>

" Better window navigation
nnoremap <C-left> <C-w>h
nnoremap <C-down> <C-w>j
nnoremap <C-up> <C-w>k
nnoremap <C-right> <C-w>l

" Better window navigation
"nnoremap <C-h> <C-w>h
"nnoremap <C-j> <C-w>j
"nnoremap <C-k> <C-w>k
"nnoremap <C-l> <C-w>l

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

