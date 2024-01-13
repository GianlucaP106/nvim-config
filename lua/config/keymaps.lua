-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

-- fuzz search in current buffer
vim.keymap.set("n", "<leader>.", function()
    require("telescope.builtin").current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
        winblend = 10,
        previewer = false,
    }))
end, { desc = "Fuzzily search in current buffer" })

-- quit window key map
vim.keymap.set("n", "<leader>qw", ":q<CR>", { desc = "Quit window" })
