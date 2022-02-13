-- Example config in Lua
require("github-theme").setup({
  theme_style = "dark",
  function_style = "italic",
  sidebars = {"qf", "vista_kind", "terminal", "packer"},


--	italics = {
--		comments = true,        -- Enable italic comments
--		keywords = false,       -- Enable italic keywords
--		functions = false,      -- Enable italic functions
--		strings = true,         -- Enable italic strings
--		variables = false       -- Enable italic variables
--	},





  hide_end_of_buffer = false,

  -- Change the "hint" color to the "orange" color, and make the "error" color bright red
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
