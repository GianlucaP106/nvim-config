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
                    vscBack = "#000000",
                    -- vscLineNumber = '#92bbcf',
                },

                -- Override highlight groups (see ./lua/vscode/theme.lua)
                group_overrides = {
                    -- this supports the same val table as vim.api.nvim_set_hl
                    -- use colors from this colorscheme by requiring vscode.colors!
                    -- Cursor = { fg = c.vscDarkBlue, bg = c.vscLightGreen, bold = false },

                    -- typescriptInterfaceName = { fg = c.vscBlue, bg = 'NONE' },
                },
            })
            require("vscode").load()

            -- with tree sitter
            vim.api.nvim_set_hl(0, "@keyword", { fg = c.vscBlue, bg = "NONE" })
            vim.api.nvim_set_hl(0, "@type.builtin", { fg = c.vscBlueGreen, bg = "NONE" })
            vim.api.nvim_set_hl(0, "@attribute", { fg = c.vscBlueGreen, bg = "NONE" })

            vim.api.nvim_set_hl(0, "PreProc", { fg = c.vscBlueGreen, bg = "NONE" })
            vim.api.nvim_set_hl(0, "typescriptDefault", { fg = c.vscPink, bg = "NONE" })
            vim.api.nvim_set_hl(0, "Type", { fg = c.vscBlueGreen, bg = "NONE" })
        end,
    },

    -- Configure LazyVim to load gruvbox
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "vscode",
        },
    },
}
