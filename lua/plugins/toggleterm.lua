-- The purpose of this plugin is to add terminal windows in nvim

local function toggleVertical()
    local screenX = vim.api.nvim_get_option_value("columns", {})
    local size = screenX / 3
    vim.cmd("ToggleTerm size=" .. size .. " dir=. direction=vertical")
end

return {
    {
        "akinsho/toggleterm.nvim",
        version = "*",
        config = function()
            require("toggleterm").setup()

            -- double escape back to normal mode for terminal
            vim.api.nvim_set_keymap("t", "<Esc><Esc>", "<C-\\><C-n>", { noremap = true, silent = true })

            -- make nav keys work for terminal mode
            local nav_keys = {
                ["<C-h>"] = "<C-w>h",
                ["<C-j>"] = "<C-w>j",
                ["<C-k>"] = "<C-w>k",
                ["<C-l>"] = "<C-w>l",
            }
            for key, value in pairs(nav_keys) do
                vim.keymap.set("t", key, "<C-\\><C-n>" .. value)
            end

            -- enter terminal mode automatically
            vim.api.nvim_create_autocmd("WinEnter", {
                pattern = "*toggleterm*",
                callback = function()
                    vim.defer_fn(function()
                        vim.api.nvim_command("startinsert")
                    end, 50)
                end,
            })
        end,
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
                    toggleVertical()
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
            {
                "<C-_>",
                function()
                    toggleVertical()
                end,
                desc = "Toggle terminal horizontal",
            },
            {
                "<C-/>",
                function()
                    toggleVertical()
                end,
                desc = "Toggle terminal horizontal",
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
