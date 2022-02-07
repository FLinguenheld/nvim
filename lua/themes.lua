-- STARTER −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
require'alpha'.setup(require'alpha.themes.startify'.config)


-- LUALINE −−−-−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
require('lualine').setup {
  options = {
    icons_enabled = true,
    -- theme = 'auto',
    theme = 'wombat',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {},
    always_divide_middle = true,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {}
}


-- THEME −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
require("github-theme").setup({
	theme_style = "dark_default",
	function_style = "italic",
	sidebars = {"qf", "vista_kind", "terminal", "packer"},

	-- Change the "hint" color to the "orange" color,
	-- and make the "error" color bright red
	colors = {hint = "orange", error = "#ff0000"},

	-- Overwrite the highlight groups
	overrides = function(c)
	return {
	  htmlTag = {fg = c.red, bg = "#282c34", sp = c.hint, style = "underline"},
	  DiagnosticHint = {link = "LspDiagnosticsDefaultHint"},
	  -- this will remove the highlight groups
	  TSField = {},
	}
end
})
