local snacks = require("snacks")

return {
    "snacks.nvim",
    keys = {},
    ---@type snacks.Config
    opts = {
        scroll = {
            enabled = false,
        },
        styles = {
            lazygit = {
                border = "none",
                wo = {
                    winhighlight = "Normal:LazyGitNormal",
                },
            },
        },
        indent = {
            enabled = true,
        },
    },
}
