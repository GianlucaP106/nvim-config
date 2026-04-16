return {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
        require("copilot").setup({
            suggestion = {
                auto_trigger = true,
                keymap = {
                    accept = "<Tab>",
                },
            }
        })

        -- local suggestion = {
        --     auto_trigger = true,
        --     keymap = {},
        -- }

        -- local ok_lazy, cmp_util = pcall(require, "lazyvim.util.cmp")
        -- if ok_lazy then
        --     suggestion.keymap.accept = false
        --     cmp_util.actions.ai_accept = function()
        --         local copilot_suggestion = package.loaded["copilot.suggestion"]
        --         if copilot_suggestion and copilot_suggestion.is_visible() then
        --             LazyVim.create_undo()
        --             copilot_suggestion.accept()
        --             return true
        --         end
        --     end
        -- else
        --     suggestion.keymap.accept = "<Tab>"
        -- end

        -- require("copilot").setup({
        --     suggestion = suggestion,
        -- })

        -- local ok, cmp = pcall(require, "cmp")
        -- if ok then
        --     cmp.event:on("menu_opened", function()
        --         vim.b.copilot_suggestion_hidden = true
        --     end)
        --     cmp.event:on("menu_closed", function()
        --         vim.b.copilot_suggestion_hidden = false
        --     end)
        -- end
    end,
}
