local M = {
    "lukas-reineke/indent-blankline.nvim",
    enabled = true,
    opts = {
        filetype_exclude = {
            "help",
            "alpha",
            "NvimTree",
            "Trouble",
            "lazy",
            "norg",
        },
    },
    event = "BufReadPre",
}

return M
