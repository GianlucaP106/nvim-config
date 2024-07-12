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
            getToggleTermCommand("hh", "horizontal", 25),
            getToggleTermCommand("hv", "vertical", 80),
            getToggleTermCommand("hf", "float", 40),
            getToggleTermCommand("ht", "tab", 40),
            getToggleTermCommand("ft", "float", 40),
            getToggleTermCommand("fT", "float", 40),
        },
    },
    -- Add the hint in which key
    {
        "folke/which-key.nvim",
        opts = {
            spec = {
                { "<leader>h", group = "Toggle termninal" },
            },
        },
    },
}
