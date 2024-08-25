-- The purpose of this plugin is to add terminal windows in nvim

return {
    {
        "akinsho/toggleterm.nvim",
        version = "*",
        config = true,
        keys = {
            {
                "<leader>hh",
                function()
                    local screenY = vim.api.nvim_get_option_value("lines", {})
                    local size = screenY / 3
                    vim.cmd("ToggleTerm size=" .. size .. " dir=. direction=horizontal")
                end,
                desc = "Toggle terminal horizontal",
            },
            {
                "<leader>hv",
                function()
                    local screenX = vim.api.nvim_get_option_value("columns", {})
                    local size = screenX / 3
                    vim.cmd("ToggleTerm size=" .. size .. " dir=. direction=vertical")
                end,
                desc = "Toggle terminal vertical",
            },
            {
                "<leader>hf",
                function()
                    vim.cmd("ToggleTerm dir=. direction=float")
                end,
                desc = "Toggle terminal float",
            },
            {
                "<leader>ht",
                function()
                    vim.cmd("ToggleTerm dir=. direction=tab")
                end,
                desc = "Toggle terminal tab",
            },
        },
    },
    -- Add the hint in which key
    {
        "folke/which-key.nvim",
        opts = {
            spec = {
                { "<leader>h", group = "Terminal" },
            },
        },
    },
}
