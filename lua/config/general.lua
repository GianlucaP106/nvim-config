-- General config loaded after lazy bootstrap (manually added)

-- config which key styles
vim.api.nvim_set_hl(0, "WhichKeyNormal", { bg = "#000000" })
vim.api.nvim_set_hl(0, "WhichKeyBorder", { bg = "#000000", fg = "#808080" })

vim.api.nvim_set_hl(0, "SnacksIndent", { link = "NonText" })
vim.api.nvim_set_hl(0, "SnacksIndentScope", { fg = "#A0A0A0" })
-- vim.api.nvim_set_hl(0, "SnacksIndentScope", { fg = "#FFFFFF" })
