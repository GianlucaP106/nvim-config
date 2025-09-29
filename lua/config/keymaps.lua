-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

-- plenary test
vim.keymap.set("n", "<leader>tp", "<Plug>PlenaryTestFile")

-- current buffer search
vim.keymap.set("n", "<leader>.", "<cmd>FzfLua blines<cr>", {
    desc = "Search in current buffer",
})

-- :checktime
vim.keymap.set("n", "<leader>r", "<cmd>checktime<cr>", {
    desc = "Checktime",
})
