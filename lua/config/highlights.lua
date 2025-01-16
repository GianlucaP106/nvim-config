-- Highlight groups (not loaded by LazyVim automatically)

-- general
vim.api.nvim_set_hl(0, "FloatBorder", { bg = "#000000" })

-- config which key styles
vim.api.nvim_set_hl(0, "WhichKeyNormal", { bg = "#000000" })
vim.api.nvim_set_hl(0, "WhichKeyBorder", { bg = "#000000", fg = "#808080" })

-- snacks highlights
vim.api.nvim_set_hl(0, "SnacksIndent", { link = "NonText" })
vim.api.nvim_set_hl(0, "SnacksIndentScope", { fg = "#A0A0A0" })

-- fzf-lua highlights
vim.api.nvim_set_hl(0, "FzfLuaDirPart", { link = "NonText" })

-- lazy.nvim highlights
vim.api.nvim_set_hl(0, "LazyNormal", { bg = "#000000" })

-- lazygit
vim.api.nvim_set_hl(0, "LazyGitNormal", { bg = "#000000" })
