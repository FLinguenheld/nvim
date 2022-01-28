 -- Force le chemin pour python (Pour les env virtuels)
" let g:python_host_prog = '/usr/bin/python'
" let g:python3_host_prog = '/usr/bin/python3'

" −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
call plug#begin()
Plug 'joshdick/onedark.vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mhinz/vim-startify'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-telescope/telescope-file-browser.nvim'
Plug 'IMOKURI/line-number-interval.nvim'

Plug 'tpope/vim-commentary'		" gcc
"Plug 'preservim/tagbar'

call plug#end()

" −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
source $HOME/.config/nvim/confFlo/onedark.vim
source $HOME/.config/nvim/confFlo/airline.vim
source $HOME/.config/nvim/confFlo/mapping.vim
source $HOME/.config/nvim/confFlo/coc.vim
source $HOME/.config/nvim/confFlo/linenumber.vim
"source $HOME/.config/nvim/confFlo/fzf.vim
source $HOME/.config/nvim/confFlo/starty.vim
" −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−

set relativenumber 
" set cursorcolumn
set wrap			" Affiche les lignes trop longues sur plusieurs lignes
set scrolloff=5		" Affiche mini 3 lignes autour du curseur
set cursorline		" Met la ligne en cours en surbrillance
set title

" Only one line for command line
set cmdheight=1

" -- Commentaires
set fo-=cro			" Valeur par défaut 'jcroql' - Désactive le guillemet auto lors d'un saut de ligne de commentaire
"set fo=jql			" Désactive le guillemet auto lors d'un saut de ligne de commentaire

" -- Tab
set tabstop=4
set softtabstop=4

" TEST FOR JAVASCRIPT − 13-01-2022
set smarttab
set cindent
set shiftwidth=4	" Ca Ca A L AIR BIEN-−−−−−−−−−−−−−v−

" -- Bip
set visualbell
set noerrorbells

" -- Active le comportement habituel de backspace
set backspace=indent,eol,start

" -- Ferme l'arbre de vim après utilisation(doublon avec coc-explorer)
let g:netrw_fastbrowse = 0

" -- Active la souris
set mouse=a

" -- Pep8
highlight ColorColumn ctermbg=gray
set colorcolumn=118
