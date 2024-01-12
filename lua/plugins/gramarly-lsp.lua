return {
    "neovim/nvim-lspconfig",
    config = function()
        require("lspconfig").grammarly.setup({
            filetypes = {
                "markdown",
                "text",
                -- "txt",
            },
        })
    end,
}
