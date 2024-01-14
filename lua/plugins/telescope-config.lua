local find_files = function()
    require("telescope.builtin").find_files({
        hidden = true,
        file_ignore_patterns = {
            ".git",
        },
    })
end

local find_file_config = function(key)
    return {
        key,
        find_files,
        desc = "Find Files",
    }
end

return {
    -- change some telescope options and a keymap to browse plugin files
    {
        "nvim-telescope/telescope.nvim",
        keys = {
            -- add a keymap to browse plugin files
            -- stylua: ignorecase

            {
                "<leader>fp",
                function()
                    require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root })
                end,
                desc = "Find Plugin File",
            },
            find_file_config("<leader>ff"),
            find_file_config("<leader><space>"),
            {
                "<leader>.",
                function()
                    require("telescope.builtin").current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
                        winblend = 10,
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
