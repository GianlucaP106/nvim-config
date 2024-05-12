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
