-- Leader −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
vim.g.mapleader = ','

local keymap = vim.api.nvim_set_keymap
local opt = {noremap = true }

keymap('', 'B', '^', {})	-- Applique aux modes Normal, Visual, Select, Operator-pending
keymap('', 'W', '$', {})


-- Terminal −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
keymap('t', '<ESC>', '<C-\\><C-n>', opt)

-- Clipboard −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
keymap('',  '<C-c>',		'"+y', opt)		-- Copy nvim to desk clipboard
keymap('n', '<C-P>',		'"*p', opt)		-- Past from desk to nvim

keymap('n', '<leader>p',	'"1p', opt)
keymap('n', '<leader>P',	'"2p', opt)

-- Window −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
keymap('n', '<M-left>',		':vertical resize -2<CR>', opt)
keymap('n', '<M-down>',		':resize -2<CR>', opt)
keymap('n', '<M-up>',		':resize +2<CR>', opt)
keymap('n', '<M-right>',	':vertical resize +2<CR>', opt)

keymap('n', '<C-left>',		'<C-w>h<CR>', opt)
keymap('n', '<C-down>',		'<C-w>j<CR>', opt)
keymap('n', '<C-up>',		'<C-w>k<CR>', opt)
keymap('n', '<C-right>',	'<C-w>l<CR>', opt)

-- LSPCONFIG −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
keymap('n', 'gd',		':lua vim.lsp.buf.definition() <CR>', opt)
keymap('n', 'gD',		':lua vim.lsp.buf.declaration() <CR>', opt)
keymap('n', 'gi',		':lua vim.lsp.buf.implementation() <CR>', opt)
keymap('n', 'gw',		':lua vim.lsp.buf.document_symbol() <CR>', opt)
keymap('n', 'gW',		':lua vim.lsp.buf.workspace_symbol() <CR>', opt)
keymap('n', 'gr',		':lua vim.lsp.buf.references() <CR>', opt)
keymap('n', 'gt',		':lua vim.lsp.buf.type_definition() <CR>', opt)
keymap('n', 'K',		':lua vim.lsp.buf.hover() <CR>', opt)
keymap('n', '<C-k>',		':lua vim.lsp.buf.signature_help() <CR>', opt)
keymap('n', '<leader>af',	':lua vim.lsp.buf.code_action() <CR>', opt)
keymap('n', '<leader>rn',	':lua vim.lsp.buf.rename() <CR>', opt)

-- TELESCOPE −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
keymap('n', '<leader>ff',	':lua require("telescope.builtin").find_files() <CR>', opt)
keymap('n', '<leader>fg',	':lua require("telescope.builtin").live_grep() <CR>', opt)
keymap('n', '<leader>fb',	':lua require("telescope.builtin").buffers() <CR>', opt)
keymap('n', '<leader>fh',	':lua require("telescope.builtin").help_tags() <CR>', opt)

keymap('n', '<leader>fhh',	':lua require("telescope.builtin").highlights() <CR>', opt)
keymap('n', '<leader>fm',	':lua require("telescope.builtin").marks() <CR>', opt)

keymap('n', '<leader>fr',	':Telescope file_browser<CR>', opt)

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
keymap('', '.', ':HopWord<CR>', opt)
-- keymap('', ';', ':HopLineStart<CR>', opt)
keymap('', ';', ':HopLine<CR>', opt)
