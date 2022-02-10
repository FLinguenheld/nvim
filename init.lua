-- Config Flo - 2022-02

-- :PackerSync to install
require('packer').startup(function()
	use 'wbthomason/packer.nvim'

	-- Theme and starter
	use "projekt0n/github-nvim-theme"
	use 'goolord/alpha-nvim'				-- A configurer !!!
	use 'kyazdani42/nvim-web-devicons'		-- Need nerd font like hack
	use 'nvim-lualine/lualine.nvim'
	use 'ryanoasis/vim-devicons'	        -- Nécessaire ???

	-- TreeSitter
	use 'nvim-treesitter/nvim-treesitter'

	-- Lsp
	use 'neovim/nvim-lspconfig'			  -- Collection of configurations for the built-in LSP client
	use 'williamboman/nvim-lsp-installer' -- :LspInstall

	-- Completion
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'

	-- Telescope
	use 'nvim-lua/plenary.nvim'
	use 'nvim-telescope/telescope.nvim'
	use 'nvim-telescope/telescope-file-browser.nvim'

	-- Others
	use 'numToStr/Comment.nvim'				-- gcc gbc
	use 'Pocco81/AutoSave.nvim'
	use 'iamcco/markdown-preview.nvim'		-- :call mkdp#util#install()
	use 'preservim/vimux'
	use 'phaazon/hop.nvim'

	end
)


-- Ignore compiled files
vim.opt.wildignore = "__pycache__"
vim.opt.wildignore = vim.opt.wildignore + { "*.o", "*~", "*.pyc", "*pycache*" }

-- Tabs
-- vim.opt.cindent = true
vim.opt.wrap = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true

-- Numbers
vim.wo.relativenumber = true
vim.wo.number = true

-- Window
vim.opt.scrolloff = 10		-- Make it so there are always ten lines below my cursor
vim.opt.splitright = true	-- Prefer windows splitting to the right
vim.opt.splitbelow = true	-- Prefer windows splitting to the bottom
vim.opt.showmode = false	-- Textes Insert/Visual en doublon avec powerline

-- Pep8
vim.wo.colorcolumn = '115'

-- Highlight yank
vim.api.nvim_exec(
    [[
        augroup highlight_yank
        autocmd!
        au TextYankPost * silent! lua vim.highlight.on_yank { higroup='IncSearch', timeout=249 }
        augroup END
    ]],
    false
)

-- Text behaviour
vim.opt.formatoptions = vim.opt.formatoptions
  - "a" -- Auto formatting is BAD.
  - "t" -- Don't auto format my code. I got linters for that.
  + "c" -- In general, I like it when comments respect textwidth
  + "q" -- Allow formatting comments w/ gq
  - "o" -- O and o, don't continue comments
  + "r" -- But do continue when pressing enter.
  + "n" -- Indent past the formatlistpat, not underneath it.
  + "j" -- Auto-remove comments if possible.
  - "2" -- I'm not in gradeschool anymore

-- vim.o.formatoptions = vim.o.formatoptions .. 'tcrqnj'
-- vim.opt.formatoptions:remove { "o" }

require('packages')
require('keybindings')
require('themes')


-- -- TEST -−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
-- local function blah()
-- 	print "Hello world !\n"
-- end
-- -- TEST -−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
