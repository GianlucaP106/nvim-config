return {
    {
        "mfussenegger/nvim-jdtls",
        opts = function()
            return {
                -- How to find the root dir for a given filename. The default comes from
                -- lspconfig which provides a function specifically for java projects.
                root_dir = require("lspconfig.server_configurations.jdtls").default_config.root_dir,

                -- How to find the project name for a given root dir.
                project_name = function(root_dir)
                    return root_dir and vim.fs.basename(root_dir)
                end,

                -- Where are the config and workspace dirs for a project?
                jdtls_config_dir = function(project_name)
                    return vim.fn.stdpath("cache") .. "/jdtls/" .. project_name .. "/config"
                end,
                jdtls_workspace_dir = function(project_name)
                    return vim.fn.stdpath("cache") .. "/jdtls/" .. project_name .. "/workspace"
                end,

                -- How to run jdtls. This can be overridden to a full java command-line
                -- if the Python wrapper script doesn't suffice.
                cmd = {
                    vim.fn.exepath("jdtls"),
                    "--jvm-arg=" .. string.format("-javaagent:%s", vim.fn.expand("$MASON/share/jdtls/lombok.jar")),
                },
                full_cmd = function(opts)
                    local fname = vim.api.nvim_buf_get_name(0)
                    local root_dir = opts.root_dir(fname)
                    local project_name = opts.project_name(root_dir)
                    local cmd = vim.deepcopy(opts.cmd)
                    if project_name then
                        vim.list_extend(cmd, {
                            "-configuration",
                            opts.jdtls_config_dir(project_name),
                            "-data",
                            opts.jdtls_workspace_dir(project_name),
                        })
                    end
                    return cmd
                end,

                -- These depend on nvim-dap, but can additionally be disabled by setting false here.
                dap = { hotcodereplace = "auto", config_overrides = {} },
                test = true,
            }
        end,
    },

    -- nvim java config, commented for now but not needed
    -- {
    --     "nvim-java/nvim-java",
    --     dependencies = {
    --         "nvim-java/lua-async-await",
    --         "nvim-java/nvim-java-core",
    --         "nvim-java/nvim-java-test",
    --         "nvim-java/nvim-java-dap",
    --         "MunifTanjim/nui.nvim",
    --         "neovim/nvim-lspconfig",
    --         "mfussenegger/nvim-dap",
    --         {
    --             "williamboman/mason.nvim",
    --             opts = {
    --                 registries = {
    --                     "github:nvim-java/mason-registry",
    --                     "github:mason-org/mason-registry",
    --                 },
    --             },
    --         },
    --     },
    -- },
}
