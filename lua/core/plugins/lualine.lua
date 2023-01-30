local M = {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-web-devicons" },
    opts = {
        options = {
            theme = "auto",
            disabled_filetypes = { "dashboard", "lazy" },
            globalstatus = true,
        },
    },
    event = "VeryLazy",
}

return M
