-- The purpose is to add current buffer search shorcut

return {
    -- add current buffer search
    {
        "nvim-telescope/telescope.nvim",
        keys = {
            {
                "<leader>.",
                function()
                    require("telescope.builtin").current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
                        previewer = false,
                    }))
                end,
                desc = "Search in current buffer",
            },
        },
    },
}
