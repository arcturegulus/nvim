local M = {
    "romgrk/barbar.nvim",
    dependencies = { "nvim-web-devicons" },
    opts = {
        auto_hide = true,
        exclude_ft = { "neo-tree" },
        icon_pinned = "󰐃",
        maximum_length = 20,
    },
    event = "VeryLazy",
}

return M
