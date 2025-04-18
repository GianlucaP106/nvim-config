-- Highlight groups (not loaded by LazyVim automatically)

-- ensure black bg in a number of places
vim.api.nvim_set_hl(0, "NonText", { bg = "#000000", fg = "#5a5a5a" })
vim.api.nvim_set_hl(0, "NeoTreeExpander", { bg = "#000000" })
vim.api.nvim_set_hl(0, "NeoTreeIndentMarker", { bg = "#000000" })
vim.api.nvim_set_hl(0, "StatusLine", { bg = "#000000", fg = "#d4d4d4" })
vim.api.nvim_set_hl(0, "FloatBorder", { bg = "#000000" })
vim.api.nvim_set_hl(0, "WhichKeyNormal", { bg = "#000000" })
vim.api.nvim_set_hl(0, "WhichKeyBorder", { bg = "#000000", fg = "#808080" })
vim.api.nvim_set_hl(0, "SnacksIndentScope", { fg = "#A0A0A0" })
vim.api.nvim_set_hl(0, "FzfLuaDirPart", { link = "NonText" })
vim.api.nvim_set_hl(0, "LazyNormal", { bg = "#000000" })
vim.api.nvim_set_hl(0, "LazyGitNormal", { bg = "#000000" })
