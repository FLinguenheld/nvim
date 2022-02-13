local keymap = vim.api.nvim_set_keymap
local opt = {noremap = true }

keymap('', 'B', '^', {})	-- Applique aux modes Normal, Visual, Select, Operator-pending
keymap('', 'W', '$', {})

keymap('n', 'l', '.', opt)  -- Derniere commande

-- Terminal −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
keymap('t', '<ESC>', '<C-\\><C-n>', opt)

-- Clipboard −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
keymap('',  '<C-c>',		'"+y', opt)		-- Copy nvim to desk clipboard
keymap('n', '<C-P>',		'"*p', opt)		-- Past from desk to nvim

keymap('n', '<leader>p',	'"1p', opt)
keymap('n', '<leader>P',	'"2p', opt)
keymap('n', '<leader>y',	':Telescope registers<CR>', opt)

-- Window −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
keymap('n', '<M-left>',		':vertical resize -2<CR>', opt)
keymap('n', '<M-down>',		':resize -2<CR>', opt)
keymap('n', '<M-up>',		':resize +2<CR>', opt)
keymap('n', '<M-right>',	':vertical resize +2<CR>', opt)

keymap('n', '<C-left>',		'<C-w>h<CR>', opt)
keymap('n', '<C-down>',		'<C-w>j<CR>', opt)
keymap('n', '<C-up>',		'<C-w>k<CR>', opt)
keymap('n', '<C-right>',	'<C-w>l<CR>', opt)

-- TELESCOPE −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
-- Recherche dossier courant
keymap('n', '<leader>ff',	'<cmd>lua findFiles_1()<CR>', opt)
keymap('n', '<leader>fF',	'<cmd>lua findFiles_2()<CR>', opt)

-- Recherche home 
keymap('n', '<leader>fç',	'<cmd>lua findFiles_Home(false)<CR>', opt)
keymap('n', '<leader>fÇ',	'<cmd>lua findFiles_Home(true)<CR>', opt)

-- Old files
keymap('n', '<leader>fo',   ':Telescope oldfiles <CR>', opt)

-- Recherche dossier
keymap('n', '<leader>fr',	'<cmd>lua require "telescope".extensions.file_browser.file_browser() <CR>', opt)
keymap('n', '<leader>fR',	'<cmd>ua require "telescope".extensions.file_browser.file_browser({hidden=true}) <CR>', opt)

-- Grep
keymap('n', '<leader>fg',	'<cmd>lua require("telescope.builtin").live_grep() <CR>', opt)
keymap('n', '<leader>fG',	'<cmd>lua liveGrep_Home() <CR>', opt)
keymap('n', '<leader>fs',	'<cmd>lua require("telescope.builtin").grep_string() <CR>', opt)

-- 
keymap('n', '<leader>fb',	'<cmd>lua require("telescope.builtin").buffers() <CR>', opt)
keymap('n', '<leader>fH',	'<cmd>lua require("telescope.builtin").help_tags() <CR>', opt)

--
keymap('n', '<leader>fh',	'<cmd>lua require("telescope.builtin").highlights() <CR>', opt)
keymap('n', '<leader>fm',	'<cmd>lua require("telescope.builtin").marks() <CR>', opt)




-- VIMUX −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
keymap('n', '<leader>vb',	':call VimuxRunCommand("clear; rspec " . bufname("%"))<CR>', opt)
keymap('n', '<leader>vp',	':VimuxPromptCommand<CR>', opt)
keymap('n', '<leader>vl',	':VimuxRunLastCommand<CR>', opt)

keymap('n', '<leader>vc',	':VimuxCloseRunner<CR>', opt)
keymap('n', '<leader>vC',	':VimuxClearTerminalScreen<CR>', opt)
keymap('n', '<leader>vx',	':VimuxInterruptRunner<CR>', opt)

keymap('n', '<leader>vi',	':VimuxInspectRunner<CR>', opt)
keymap('n', '<leader>vz',	':VimuxZoomRunner<CR>', opt)

-- HOP −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
keymap('', '.',             '<cmd>HopWord<CR>', opt)
keymap('', '<leader>.',     '<cmd>HopChar1<CR>', opt)
keymap('', '<leader>;',     '<cmd>HopLineStart<CR>', opt)
keymap('', '<space>',       '<cmd>HopLine<CR>', opt)




-- LSPCONFIG −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
-- Mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
local opts = { noremap=true, silent=true }
vim.api.nvim_set_keymap('n', '<leader>e',           '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
vim.api.nvim_set_keymap('n', '[d',                  '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
vim.api.nvim_set_keymap('n', ']d',                  '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>q',           '<cmd>lua vim.diagnostic.setloclist()<CR>', opts)

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
    -- Enable completion triggered by <c-x><c-o>
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

    -- Mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gD',             '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd',             '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi',             '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)

    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K',              '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<C-k>',          '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)

    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>wa',     '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>wr',     '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>wl',     '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>D',      '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>rn',     '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>ca',     '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr',             '<cmd>lua vim.lsp.buf.references()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>fo',     '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
end

-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches
local servers = { 'pyright', 'rust_analyzer', 'tsserver' }
for _, lsp in pairs(servers) do
    require('lspconfig')[lsp].setup {
        on_attach = on_attach,
        flags = {
            -- This will be the default in neovim 0.7+
            debounce_text_changes = 150,
    }
}
end
