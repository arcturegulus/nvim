local M = {
    "nvim-lualine/lualine.nvim",
    enabled = false,
    dependencies = { "nvim-web-devicons" },
    opts = {
        options = {
            theme = "auto",
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
