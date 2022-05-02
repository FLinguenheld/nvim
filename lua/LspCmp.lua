-- Setup nvim-cmp.
local cmp = require'cmp'

cmp.setup({
  snippet = {
    -- REQUIRED - you must specify a snippet engine
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
      -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
      -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
      -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
    end,
  },
  window = {
    -- completion = cmp.config.window.bordered(),
    -- documentation = cmp.config.window.bordered(),
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-f>'] = cmp.mapping.scroll_docs(-4),
    ['<C-F>'] = cmp.mapping.scroll_docs(4),
    ['<C-c>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'vsnip' }, -- For vsnip users.
    -- { name = 'luasnip' }, -- For luasnip users.
    -- { name = 'ultisnips' }, -- For ultisnips users.
    -- { name = 'snippy' }, -- For snippy users.
  }, {
    { name = 'buffer' },
  })
})


-- Set configuration for specific filetype.
cmp.setup.filetype('gitcommit', {
  sources = cmp.config.sources({
    { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
  }, {
    { name = 'buffer' },
  })
})

-- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline('/', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = 'buffer' }
  }
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = cmp.config.sources({
    { name = 'path' }
  }, {
    { name = 'cmdline' }
  })
})





-- local lspkind = require "lspkind"
-- lspkind.init()

-- local cmp = require "cmp"

-- cmp.setup {
--       mapping = {
--         ["<C-f>"] = cmp.mapping.scroll_docs(-4),
--         ["<C-F>"] = cmp.mapping.scroll_docs(4),
--         ["<C-e>"] = cmp.mapping {
--           i = cmp.mapping.abort(),
--           c = cmp.mapping.close(),
--         },

--         -- C-y or enter - À confirmer
--         ["<c-y>"] = cmp.mapping(
--           cmp.mapping.confirm {
--             behavior = cmp.ConfirmBehavior.Insert,
--             select = true,
--           },
--           { "i", "c" }
--         ),
--         ["<CR>"] = cmp.mapping.confirm { select = true},
--   },

--   --    the order of your sources matter (by default). That gives them priority
--   --    you can configure:
--   --        keyword_length
--   --        priority
--   --        max_item_count
--   --        (more?)
--   sources = {
--     { name = "gh_issues" },
--     { name = "nvim_lua" },
--     { name = "nvim_lsp" },
--     { name = "path" },
--     { name = "luasnip" },
--     { name = "buffer", keyword_length = 2 },
--   },

--   sorting = {
--     comparators = {
--       cmp.config.compare.offset,
--       cmp.config.compare.exact,
--       cmp.config.compare.score,

--       -- copied from cmp-under, but I don't think I need the plugin for this.
--       -- I might add some more of my own.
--       function(entry1, entry2)
--         local _, entry1_under = entry1.completion_item.label:find "^_+"
--         local _, entry2_under = entry2.completion_item.label:find "^_+"
--         entry1_under = entry1_under or 0
--         entry2_under = entry2_under or 0
--         if entry1_under > entry2_under then
--           return false
--         elseif entry1_under < entry2_under then
--           return true
--         end
--       end,

--       cmp.config.compare.kind,
--       cmp.config.compare.sort_text,
--       cmp.config.compare.length,
--       cmp.config.compare.order,
--     },
--   },

--   -- Youtube: mention that you need a separate snippets plugin
--   snippet = {
--     expand = function(args)
--       require("luasnip").lsp_expand(args.body)
--     end,
--   },

--   formatting = {
--     -- Youtube: How to set up nice formatting for your sources.
--     format = lspkind.cmp_format {
--       with_text = true,
--       menu = {
--         buffer = "[buf]",
--         nvim_lsp = "[LSP]",
--         nvim_lua = "[api]",
--         path = "[path]",
--         luasnip = "[snip]",
--         gh_issues = "[issues]",
--         tn = "[TabNine]",
--       },
--     },
--   },

--   experimental = {
--     view_entries = "native",
--     ghost_text = true,
--   },
-- }

