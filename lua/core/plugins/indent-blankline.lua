local M = {
    "lukas-reineke/indent-blankline.nvim",
    enabled = true,
    opts = {
        filetype_exclude = {
            "help",
            "alpha",
            "dashboard",
            "neo-tree",
            "Trouble",
            "lazy",
        },
    },
    event = "BufReadPre",
}

return M
