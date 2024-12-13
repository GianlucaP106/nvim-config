-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

-- forces me to use hjkl
local nav_keys = {
    ["h"] = "<Down>",
    ["j"] = "<Up>",
    ["k"] = "<Left>",
    ["l"] = "<Right>",
}
for k, arrow in pairs(nav_keys) do
    vim.keymap.set("n", arrow, function()
        print("use " .. k)
    end, { desc = "" })
end

-- plenary test
vim.keymap.set("n", "<leader>tp", "<Plug>PlenaryTestFile")

vim.keymap.set("n", "<leader>.", "<cmd>FzfLua blines<cr>", {
    desc = "Search in current buffer",
})
