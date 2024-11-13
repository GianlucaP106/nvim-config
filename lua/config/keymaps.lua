-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

-- quit window key map
vim.keymap.set("n", "<leader>qw", ":q<CR>", { desc = "Quit window" })

-- forces me to use hjkl
vim.keymap.set("n", "<Down>", function()
    print("use j")
end, { desc = "" })

vim.keymap.set("n", "<Up>", function()
    print("use k")
end, { desc = "" })

vim.keymap.set("n", "<Left>", function()
    print("use h")
end, { desc = "" })

vim.keymap.set("n", "<Right>", function()
    print("use l")
end, { desc = "" })

vim.keymap.set("n", "<leader>tp", "<Plug>PlenaryTestFile")
vim.api.nvim_set_keymap("t", "<Esc><Esc>", "<C-\\><C-n>", { noremap = true, silent = true })
