return {
    -- add current buffer search
    {
        "nvim-telescope/telescope.nvim",
        keys = {
            {
                "<leader>.",
                function()
                    require("telescope.builtin").current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
                        -- winblend = 10,
                        previewer = false,
                    }))
                end,
                desc = "Fuzzily search in current buffer",
            },
        },
    },

    -- add telescope-fzf-native
    {
        "telescope.nvim",
        dependencies = {
            "nvim-telescope/telescope-fzf-native.nvim",
            build = "make",
            config = function()
                require("telescope").load_extension("fzf")
            end,
        },
    },
}
