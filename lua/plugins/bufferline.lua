-- local bufferline = require("bufferline")
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
            fill = {
                link = "NonText",
            },
            trunc_marker = {
                link = "NonText",
            },
            group_separator = {
                link = "BufferLineSeparator",
            },

            buffer = {
                link = "NonText",
            },
            buffer_visible = {
                link = "BufferLineBuffer",
            },

            tab = {
                link = "NonText",
            },
            tab_close = {
                link = "BufferLineTab",
            },

            numbers = {
                link = "NonText",
            },
            numbers_visible = {
                link = "BufferLineNumbers",
            },

            diagnostic = {
                link = "NonText",
            },
            diagnostic_visible = {
                link = "BufferLineDiagnostic",
            },

            duplicate = {
                fg = "#ff8700",
                italic = true,
            },
            duplicate_visible = {
                link = "BufferLineDuplicate",
            },
            duplicate_selected = {
                fg = "#ff8700",
                italic = true,
                bold = true,
            },

            close_button = {
                fg = "#1f1f1f",
            },
            close_button_visible = {
                link = "BufferLineCloseButton",
            },

            error = {
                fg = "#f44747",
                italic = true,
            },
            error_visible = {
                link = "BufferLineError",
            },
            error_diagnostic = {
                link = "BufferLineError",
            },
            error_diagnostic_visible = {
                link = "BufferLineError",
            },

            info = {
                fg = "#569cd6",
                italic = true,
            },
            info_visible = {
                link = "BufferLineInfo",
            },
            info_diagnostic = {
                link = "BufferLineInfo",
            },
            info_diagnostic_visible = {
                link = "BufferLineInfo",
            },

            warning = {
                fg = "#a5a57f",
                italic = true,
            },
            warning_visible = {
                link = "BufferLineWarning",
            },
            warning_diagnostic = {
                link = "BufferLineWarning",
            },
            warning_diagnostic_visible = {
                link = "BufferLineWarning",
            },

            hint = {
                fg = "#569cd6",
                italic = true,
            },
            hint_visible = {
                link = "BufferLineHint",
            },
            hint_diagnostic = {
                link = "BufferLineHint",
            },
            hint_diagnostic_visible = {
                link = "BufferLineHint",
            },
        },
    },
}
