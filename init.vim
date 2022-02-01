
" −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
call plug#begin()
Plug 'joshdick/onedark.vim'

Plug 'vim-airline/vim-airline'
Plug 'mhinz/vim-startify'
Plug 'tpope/vim-commentary'		" gcc

Plug 'wbthomason/packer.nvim'
Plug 'neovim/nvim-lspconfig'
" Completion
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'

" For luasnip users.
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'


Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-telescope/telescope-file-browser.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
" :call mkdp#util#install()

Plug 'kyazdani42/nvim-web-devicons'		" Needs nerd font like hack
Plug 'ryanoasis/vim-devicons'

Plug 'preservim/vimux'

"Plug 'preservim/tagbar'
call plug#end()

" −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
source $HOME/.config/nvim/confFlo/onedark.vim
source $HOME/.config/nvim/confFlo/lsp.lua
source $HOME/.config/nvim/confFlo/airline.vim
source $HOME/.config/nvim/confFlo/mapping.vim
source $HOME/.config/nvim/confFlo/linenumber.vim
source $HOME/.config/nvim/confFlo/starty.vim
" −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−

" Lsp completion
set completeopt=menu,menuone,noselect

" highlight yanked text
au TextYankPost * silent! lua vim.highlight.on_yank()


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

" -- Active la souris
set mouse=a

" -- Pep8
highlight ColorColumn ctermbg=gray
set colorcolumn=118
