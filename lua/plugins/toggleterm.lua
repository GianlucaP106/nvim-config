-- The purpose of this plugin is to add terminal windows in nvim

local getToggleTermCommand = function(cmd, direction, size)
    return {
        "<leader>" .. cmd,
        "<cmd>ToggleTerm size=" .. size .. " dir=. direction=" .. direction .. "<CR>",
        desc = "Toggle terminal " .. direction,
    }
end

return {
    {
        "akinsho/toggleterm.nvim",
        version = "*",
        config = true,
        keys = {
            getToggleTermCommand("Th", "horizontal", 40),
            getToggleTermCommand("Tv", "vertical", 80),
            getToggleTermCommand("Tf", "float", 40),
            getToggleTermCommand("Tt", "tab", 40),
            getToggleTermCommand("ft", "float", 40),
            getToggleTermCommand("fT", "float", 40),
        },
    },
    -- Add the hint in which key
    {
        "folke/which-key.nvim",
        opts = {
            defaults = {
                ["<leader>T"] = { name = "+Toggle termninal" },
            },
        },
    },
}
