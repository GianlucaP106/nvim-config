-- vscode theme
return {
    {
        "Mofiqul/vscode.nvim",
        config = function()
            vim.o.background = "dark"
            local c = require("vscode.colors").get_colors()
            require("vscode").setup({
                -- Alternatively set style in setup
                -- style = 'light'

                -- Enable transparent background
                transparent = true,

                -- Enable italic comment
                italic_comments = true,

                -- Disable nvim-tree background color
                disable_nvimtree_bg = true,

                -- Override colors (see ./lua/vscode/colors.lua)
                color_overrides = {
                    -- vscBack = "#000000",
                    -- vscLineNumber = '#92bbcf',
                },

                -- Override highlight groups (see ./lua/vscode/theme.lua)
                group_overrides = {
                    -- Cursor = { fg = c.vscDarkBlue, bg = c.vscLightGreen, bold = false },
                },
            })
            require("vscode").load()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "vscode",
        },
    },
}
