return {
    "akinsho/bufferline.nvim",
    opts = {
        options = {
            show_close_icon = false,
            show_buffer_close_icons = false,
            separator_style = { "", "" },
            indicator = {
                style = "none",
            },
        },
        highlights = {
            background = {
                link = "NonText",
            },
            buffer_visible = {
                link = "NonText",
            },
        },
    },
}
