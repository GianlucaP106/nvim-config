-- The purpose of this override is to prevent dapui from closing after each process termination
-- The lines commented are there in the default config, by removing them the dapui doesnt close

return {
    "rcarriga/nvim-dap-ui",

    -- only needed because of a bug tracked here: https://github.com/LazyVim/LazyVim/pull/2763/files
    dependencies = {
        "nvim-neotest/nvim-nio",
    },

    config = function(_, opts)
        -- setup dap config by VsCode launch.json file
        -- require("dap.ext.vscode").load_launchjs()
        local dap = require("dap")
        local dapui = require("dapui")
        dapui.setup(opts)
        dap.listeners.after.event_initialized["dapui_config"] = function()
            dapui.open({})
        end
        -- dap.listeners.before.event_terminated["dapui_config"] = function() end
        -- dap.listeners.before.event_exited["dapui_config"] = function() end
    end,
}
