local M = {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-web-devicons" },
    opts = {
        options = {
            theme = "auto",
            component_separators = "┃",
            section_separators = "",
            disabled_filetypes = {
                "dashboard",
                "lazy",
                "alpha",
                "TelescopePrompt",
            },
            ignore_focus = { "neo-tree" },
            globalstatus = true,
        },
    },
    event = "VeryLazy",
}

return M
