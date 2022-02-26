
local nightfox = require('nightfox')

-- This function set the configuration of nightfox. If a value is not passed in the setup function
-- it will be taken from the default configuration above
nightfox.setup({
    styles = {
        comments = "italic",            -- change style of comments to be italic
        keywords = "bold",              -- change style of keywords to be bold
        functions = "italic,bold"       -- styles can be a comma separated list
    },
    inverse = {
        match_paren = true,             -- inverse the highlighting of match_parens
    },
    colors = {
        red = "#FF000",                 -- Override the red color for MAX POWER
        bg_alt = "#000000",
    },
    hlgroups = {
        TSPunctDelimiter = { fg = "${red}" }, -- Override a highlight group with the color red
        LspCodeLens = { bg = "#000000", style = "italic" },
    }
})

-- CHOIX −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
local nb = 5

function up()
    nb =  nb + 1
    updateScheme()
end

function down()
    nb =  nb - 1
    updateScheme()
end

vim.api.nvim_set_keymap('n', '<leader>à',  '<cmd>lua up()<CR>', {})
vim.api.nvim_set_keymap('n', '<leader>À',  '<cmd>lua down()<CR>', {})

function updateScheme()

    local theme_line
    local hop
    local hopOne
    local hopTwo

    -- −−−−−−−−−−−−−−−−−−−
    if nb <= -1 then
        nb = 6
    elseif nb >= 7 then
        nb = 0
    end

    -- −−−−−−−−−−−−−−−−−−−
    if nb == 0 then

        theme_line = 'wombat'

        nightfox.setup({
          fox = "nightfox",
        })
        nightfox.load()

        vim.api.nvim_command('highlight HopNextKey      guifg=#F68541       gui=bold')
        vim.api.nvim_command('highlight HopNextKey1     guifg=#41F685       gui=bold')
        vim.api.nvim_command('highlight HopNextKey2     guifg=#41F685')
        vim.api.nvim_command('highlight HopUnmatched    guifg=#353D59       guibg=bg    guisp=#363D59')

        vim.api.nvim_command('highlight CursorLineNR    guifg=#9D79D6       gui=bold')

    elseif nb == 1 then

        theme_line = 'wombat'

        nightfox.setup({
          fox = "nordfox",
        })
        nightfox.load()

        vim.api.nvim_command('highlight HopNextKey      guifg=#FA3F39       gui=bold')
        vim.api.nvim_command('highlight HopNextKey1     guifg=#39FA3F       gui=bold')
        vim.api.nvim_command('highlight HopNextKey2     guifg=#39FA3F')
        vim.api.nvim_command('highlight HopUnmatched    guifg=#495365       guibg=bg    guisp=#495365')

        vim.api.nvim_command('highlight CursorLineNR    guifg=#C895BF       gui=bold')

    elseif nb == 2 then

        theme_line = 'wombat'

        nightfox.setup({
          fox = "duskfox",
        })
        nightfox.load()

        vim.api.nvim_command('highlight HopNextKey      guifg=#D00688       gui=bold')
        vim.api.nvim_command('highlight HopNextKey1     guifg=#88D006       gui=bold')
        vim.api.nvim_command('highlight HopNextKey2     guifg=#88D006')
        vim.api.nvim_command('highlight HopUnmatched    guifg=#4F4B63       guibg=bg    guisp=#4F4B63')

        vim.api.nvim_command('highlight CursorLineNR    guifg=#CCB1ED       gui=bold')

    elseif nb == 3 then

        theme_line = 'wombat'

        nightfox.setup({
          fox = "dayfox",
        })
        nightfox.load()

        vim.api.nvim_command('highlight HopNextKey      guifg=#E53730       gui=bold')
        vim.api.nvim_command('highlight HopNextKey1     guifg=#3730E5       gui=bold')
        vim.api.nvim_command('highlight HopNextKey2     guifg=#3730E5')
        vim.api.nvim_command('highlight HopUnmatched    guifg=#BBBCC3       guibg=bg    guisp=#BBBCC3')

        vim.api.nvim_command('highlight CursorLineNR    guifg=#6080B0       gui=bold')

    elseif nb == 4 then
        theme_line = 'wombat'

        nightfox.setup({
          fox = "dawnfox",
        })
        nightfox.load()

        vim.api.nvim_command('highlight HopNextKey      guifg=#EF4D46       gui=bold')
        vim.api.nvim_command('highlight HopNextKey1     guifg=#A146EF       gui=bold')
        vim.api.nvim_command('highlight HopNextKey2     guifg=#A146EF')
        vim.api.nvim_command('highlight HopUnmatched    guifg=#BBBCC3       guibg=bg    guisp=#BBBCC3')

        vim.api.nvim_command('highlight CursorLineNR    guifg=#286983       gui=bold')

    elseif nb == 5 then
        theme_line = 'ayu_mirage'

        vim.o.background = 'dark'
        vim.cmd("colorscheme melange")

        vim.api.nvim_command('highlight HopNextKey      guifg=#FF7926       gui=bold')
        vim.api.nvim_command('highlight HopNextKey1     guifg=#26ACFF       gui=bold')
        vim.api.nvim_command('highlight HopNextKey2     guifg=#26ACFF')
        vim.api.nvim_command('highlight HopUnmatched    guifg=#443D37       guibg=bg    guisp=#443D37')

        vim.api.nvim_command('highlight CursorLineNR    guifg=#CC7F2B    gui=bold')

    else
        theme_line = 'ayu_light'

        vim.o.background = 'light'
        vim.cmd("colorscheme melange")

        vim.api.nvim_command('highlight HopNextKey      guifg=#5DC633       gui=bold')
        vim.api.nvim_command('highlight HopNextKey1     guifg=#9D33C6       gui=bold')
        vim.api.nvim_command('highlight HopNextKey2     guifg=#9D33C6')
        vim.api.nvim_command('highlight HopUnmatched    guifg=#BBBCC3       guibg=bg    guisp=#BBBCC3')

        vim.api.nvim_command('highlight CursorLineNR    guifg=#CC7F2B    gui=bold')

    end 

    -- −−−−−−−−−−−−−−−−−−−
    require('lualine').setup {
      options = { theme  = theme_line },
    }


    -- vim.api.nvim_command('highlight HopNextKey      guifg=hop       gui=bold')
    -- vim.api.nvim_command('highlight HopNextKey1     guifg=hopOne    gui=bold')
    -- vim.api.nvim_command('highlight HopNextKey2     guifg=hopTwo')
   -- vim.api.nvim_command('highlight HopUnmatched guifg=#666666 guibg=bg guisp=#666666 ctermfg=242')
end

updateScheme()
