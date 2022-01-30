" −− Leader −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
let mapleader = ","

" −− Movements −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
nnoremap B ^				" Début de ligne
nnoremap W $				" Fin de ligne
nnoremap $ <nop>
nnoremap ^ <nop>

nnoremap dW d$		" Coupe du curseur à la fin de ligne sans le saut de ligne (complète dd)
nnoremap yW y$		" Copie du curseur à la fin de ligne sans le saut de ligne (complète yy)

nnoremap dB d0		" Coupe du curseur au début de la ligne
nnoremap yB y0		" Copie du curseur au début de la ligne


" −− Clipboard −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
" Copy nvim to desk clipboard
vnoremap <leader>c "+y
" Past from desk clipboard
nnoremap <leader>v "*p

nnoremap <leader>p "1p
nnoremap <leader>P "2p

" −− Terminal −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
tnoremap <Esc> <C-\><C-n>	" Permet de quitter le mode terminal avec un double clique Esc


" −− Python −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
autocmd FileType python map <buffer> <F6> :w<CR>:exec 'term python3' shellescape(@%, 1)<CR> i
autocmd FileType python imap <buffer> <F6> <Esc> :w<CR>:exec 'term python3' shellescape(@%, 1)<CR> i


" −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
nnoremap <leader><space> :nohlsearch<CR>


" −− Telescope & LSP −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
" Using Lua functions
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

" LSP config
" <C-t> to go back - on taglist
" <C-o> to go back - on jumplist
nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gt <cmd>lua vim.lsp.buf.type_definition()<CR>
nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>

" diagnostics
nnoremap <silent> <leader>en <cmd>lua vim.lsp.diagnostic.goto_next()<CR>
nnoremap <silent> <leader>ep <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent> <leader>ed <cmd>lua require('telescope.builtin').diagnostics()<cr>
" nnoremap <silent> <leader>ed :Telescope diagnostics<CR>

nnoremap <silent> <leader>r <cmd>lua vim.lsp.buf.rename()<CR>


" −− Window management −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
nnoremap <M-down>    :resize -2<CR>
nnoremap <M-up>      :resize +2<CR>
nnoremap <M-left>    :vertical resize -2<CR>
nnoremap <M-right>   :vertical resize +2<CR>

" Better window navigation
nnoremap <C-left>    <C-w>h
nnoremap <C-down>    <C-w>j
nnoremap <C-up>      <C-w>k
nnoremap <C-right>   <C-w>l
