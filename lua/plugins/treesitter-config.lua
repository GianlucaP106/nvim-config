-- The purpose is to ensure some parsers are installed on top of the default

return {
    -- If you'd rather extend the default config, use the code below instead:
    {
        "nvim-treesitter/nvim-treesitter",
        opts = function(_, opts)
            vim.list_extend(opts.ensure_installed, {
                "java",
                "cpp",
                "prisma",
                "sql",
                "rust",
                "graphql",
                "dockerfile",
                "latex",
            })
        end,
    },
}
