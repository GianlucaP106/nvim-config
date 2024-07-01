-- making rust_analyzer and rustaceanvim work together

return {
    "neovim/nvim-lspconfig",
    opts = {
        setup = {
            rust_analyzer = function()
                return true
            end,
        },
    },
}
