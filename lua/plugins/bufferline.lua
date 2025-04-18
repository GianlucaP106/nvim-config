local function apply_bg(highlights)
    local resolved = {}

    for group, opts in pairs(highlights) do
        resolved[group] = vim.tbl_extend("force", opts, { bg = "#000000" })
    end

    return resolved
end

return {
    "akinsho/bufferline.nvim",
    opts = {
        options = {
            show_buffer_icons = true,
            show_buffer_close_icons = false,
            show_close_icon = false,
            show_tab_indicators = false,
            themable = false,
            separator_style = {},
            indicator = {
                style = "none",
            },
            numbers = "none",
            offsets = {
                {
                    filetype = "neo-tree",
                    text = "Neo-tree",
                    highlight = "NonText",
                    text_align = "left",
                },
            },
        },
        highlights = apply_bg({
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
            buffer_selected = {},

            modified = {
                link = "NonText",
            },
            modified_visible = {
                link = "NonText",
            },
            modified_selected = {
                link = "NonText",
            },

            tab = {
                link = "NonText",
            },
            tab_close = {
                link = "BufferLineTab",
            },

            tab_selected = {
                link = "NonText",
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

            info_diagnostic_selected = {},

            info_selected = {},

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
            hint_diagnostic_selected = {},
            hint_selected = {},

            indicator_selected = {},
            error_diagnostic_selected = {},
            pick_selected = {},
            warning_diagnostic_selected = {},
            error_selected = {},
            close_button_selected = {},
            numbers_selected = {},
            diagnostic_selected = {},
            warning_selected = {},
            separator_selected = {},
            separator_visible = {},
            separator = {},
            offset_separator = {},
            indicator_visible = {},
            pick_visible = {},

            tab_separator = {},
            tab_separator_selected = {},
            pick = {},
        }),
    },
}
