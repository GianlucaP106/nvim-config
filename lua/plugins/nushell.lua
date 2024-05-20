-- the purpose of this is nushell support
-- The support is quite buggy but its ok

return {
    {
        "neovim/nvim-lspconfig",
        init = function()
            require("lspconfig").nushell.setup({})
        end,
    },
    {
        "LhKipp/nvim-nu",
        config = function()
            require("nu").setup({})
        end,
    },
}
