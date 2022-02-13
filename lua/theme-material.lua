-- THEME −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
require('material').setup({

	contrast = {
		sidebars = false,               -- Enable contrast for sidebar-like windows ( for example Nvim-Tree )
		floating_windows = true,       -- Enable contrast for floating windows
		line_numbers = true,           -- Enable contrast background for line numbers
		sign_column = true,            -- Enable contrast background for the sign column
		cursor_line = true,            -- Enable darker background for the cursor line
		non_current_windows = false,    -- Enable darker background for non-current windows
		popup_menu = false,             -- Enable lighter background for the popup menu
	},

	italics = {
		comments = true,        -- Enable italic comments
		keywords = false,       -- Enable italic keywords
		functions = false,      -- Enable italic functions
		strings = true,         -- Enable italic strings
		variables = false       -- Enable italic variables
	},

	contrast_filetypes = {      -- Specify which filetypes get the contrasted (darker) background
		"terminal",             -- Darker terminal background
		"packer",               -- Darker packer background
		--"qf"                    -- Darker qf list background
	},

	high_visibility = {
		lighter = true,         -- Enable higher contrast text for lighter style
		darker = true           -- Enable higher contrast text for darker style
	},

	disable = {
		borders = true,         -- Disable borders between verticaly split windows
		background = false,     -- Prevent the theme from setting the background (NeoVim then uses your teminal background)
		term_colors = false,    -- Prevent the theme from setting terminal colors
		eob_lines = false       -- Hide the end-of-buffer lines
	},

	-- lualine_style = "default",  -- Lualine style ( can be 'stealth' or 'default' )

	async_loading = true,       -- Load parts of the theme asyncronously for faster startup (turned on by default)

	custom_highlights = {
		-- CursorLine = { fg = '#0000FF', gui = 'underline' },
		-- LineNr = { bg = '#FF0000' }

    },     -- Overwrite highlights with your own
})

vim.g.material_style = "deep ocean"
-- vim.g.material_style = "darker"
-- vim.g.material_style = "lighter"
-- vim.g.material_style = "oceanic"
-- vim.g.material_style = "palenight"

vim.cmd 'colorscheme material'



