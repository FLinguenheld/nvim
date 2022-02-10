-- TELESCOPE −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
require("telescope").setup {
  extensions = {
    file_browser = {
      -- theme = "ivy",
      mappings = {
        ["i"] = {
          -- your custom insert mode mappings
        },
        ["n"] = {
          -- your custom normal mode mappings
        },
      },
    },
  },
}

require("telescope").load_extension "file_browser"


function findFiles_1()
    require('telescope.builtin').find_files{
        wd =  vim.fn.expand('%:p:h'),
        prompt_title = string.format("Recherche : %s/", vim.fn.expand('%:p:h')),
        -- hidden = true,
    }
end
function findFiles_2()
    require('telescope.builtin').find_files{
        cwd =  vim.fn.expand('%:p:h:h'),
        prompt_title = string.format("Recherche : %s/", vim.fn.expand('%:p:h:h')),
    }
end

function findFiles_Home(hidden_file)
    require('telescope.builtin').find_files{
        cwd =  vim.fn.expand(os.getenv("HOME")),
        prompt_title = string.format("Recherche : %s/", os.getenv("HOME")),
        hidden = hidden_file,
    }
end

function liveGrep_Home()

    require('telescope.builtin').live_grep{
        search_dirs = {os.getenv("HOME")},
        prompt_title = os.getenv("HOME"),
    }
end



-- COMPLETION −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
local cmp = require'cmp'
cmp.setup({
	mapping = {
		['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
		['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
		['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
		['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
		['<C-e>'] = cmp.mapping({
		i = cmp.mapping.abort(),
		c = cmp.mapping.close(),
		}),
		['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
	},
	sources = cmp.config.sources({
		  { name = 'nvim_lsp' },
		}, {
		  { name = 'buffer' },
		})
})

-- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline('/', {
	sources = {
	  { name = 'buffer' }
	}
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
	sources = cmp.config.sources({
			  { name = 'path' }
			}, {
			  { name = 'cmdline' }
		})
})

-- Setup lspconfig.
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
-- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
require('lspconfig')['pyright'].setup {
	capabilities = capabilities
}


-- LSPINSTALLER −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
-- Register a handler that will be called for each installed server when it's ready (i.e. when installation is finished
-- or if the server is already installed).
require("nvim-lsp-installer").on_server_ready(function(server)
    local opts = {}

    -- (optional) Customize the options passed to the server
    -- if server.name == "tsserver" then
    --     opts.root_dir = function() ... end
    -- end

	-- Masque les avertissements dans les fichiers lua
	if server.name == "sumneko_lua" then
		opts = {
		  settings = {
			Lua = {
			  diagnostics = {
				globals = { 'vim', 'use' }
			  },
			  --workspace = {
				-- Make the server aware of Neovim runtime files
				--library = {[vim.fn.expand('$VIMRUNTIME/lua')] = true, [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true}
			  --}
			}
		  }
		}
	end

    -- This setup() function will take the provided server configuration and decorate it with the necessary properties
    -- before passing it onwards to lspconfig.
    -- Refer to https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
    server:setup(opts)
end)


-- TREESITTER −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
require'nvim-treesitter.configs'.setup {


  ensure_installed = {
    'c', 'cpp', 'dart', 'go', 'html', 'java', 'javascript', 'python', 'ruby',
    'rust', 'typescript'
  },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = true
  },
  indent = {
    enable = false
  }




	-- -- One of "all", "maintained" (parsers with maintainers), or a list of languages
	-- -- ensure_installed = "maintained",
	-- ensure_installed = {'python', 'lua'},

	-- -- Install languages synchronously (only applied to `ensure_installed`)
	-- sync_install = false,

	-- -- -- List of parsers to ignore installing
	-- -- ignore_install = { "javascript" },

	-- indent = {
	-- enable = true,
	-- },

	-- highlight = {
	-- -- `false` will disable the whole extension
	-- enable = true,

	-- -- -- list of language that will be disabled
	-- -- disable = { "c", "rust" },
	-- --
	-- -- -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
	-- -- -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
	-- -- -- Using this option may slow down your editor, and you may see some duplicate highlights.
	-- -- -- Instead of true it can also be a list of languages
	-- -- additional_vim_regex_highlighting = false,
	-- },
}


-- COMMENT −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
require('Comment').setup(
	{
	    ---Lines to be ignored while comment/uncomment.
	    ---Could be a regex string or a function that returns a regex string.
	    ---Example: Use '^$' to ignore empty lines
	    ---@type string|fun():string
	    ignore = '^$',
	}
)


-- AUTOSAVE −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
require('autosave').setup({
        enabled = true,
        -- execution_message = "AutoSave: saved at " .. vim.fn.strftime("%H:%M:%S"),
        execution_message = "",
        events = {"InsertLeave", "TextChanged"},
        conditions = {
            exists = true,
            filename_is_not = {},
            filetype_is_not = {},
            modifiable = true
        },
        write_all_buffers = false,
        on_off_commands = true,
        clean_command_line_interval = 10,
        debounce_delay = 135
    }
)


-- HOP -−--−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
require'hop'.setup {
	-- branch = 'v1', -- optional but strongly recommended
	-- keys = 'etovxqpdygfblzhckisuran',
	keys = 'etovxqpdygfblzhcwisuran',
	jump_on_sole_occurrence = false
}

