
-- INDENT BLANK LINE −−-−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
vim.opt.list = true
vim.opt.listchars:append("space: ")
vim.opt.listchars:append("eol:↴")
vim.opt.termguicolors = true
vim.cmd [[highlight IndentBlanklineIndent1 guifg=#363646 gui=nocombine]] -- Même gris que les line numbers


require("indent_blankline").setup {

    char_highlight_list = {
        "IndentBlanklineIndent1",
    },

    space_char_blankline = " ",
    show_current_context = true,
    -- show_current_context_start = true,
    -- show_end_of_line = true,
    use_treesitter = true,
}


-- LUALINE −−−-−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    -- theme = 'wombat',
    -- theme = 'material',

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
