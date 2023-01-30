local M = {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-web-devicons" },
    opts = {
        options = {
            theme = "auto",
            disabled_filetypes = { "dashboard", "lazy" },
            ignore_focus = { "neo-tree" },
            globalstatus = true,
        },
    },
    event = "VeryLazy",
}

return M
