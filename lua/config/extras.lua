return {
    { import = "lazyvim.plugins.extras.lang.typescript" },
    { import = "lazyvim.plugins.extras.dap.core" },
    { import = "lazyvim.plugins.extras.editor.outline" },
    -- { import = "lazyvim.plugins.extras.lang.clangd" },

    -- for some reason java needs to be installed the other way (using the LazyExtras interface).
    -- Discovered on march 24th 2024 - noticed lombok was not working
    -- { import = "lazyvim.plugins.extras.lang.java" },

    { import = "lazyvim.plugins.extras.lang.json" },
    { import = "lazyvim.plugins.extras.lang.markdown" },
    { import = "lazyvim.plugins.extras.lang.python" },
    { import = "lazyvim.plugins.extras.lang.rust" },
    { import = "lazyvim.plugins.extras.lang.yaml" },
    { import = "lazyvim.plugins.extras.lang.docker" },
    { import = "lazyvim.plugins.extras.lang.tex" },
}
