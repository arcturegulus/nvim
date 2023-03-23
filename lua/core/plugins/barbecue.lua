local M = {
    "utilyre/barbecue.nvim",
    name = "barbecue",
    dependencies = {
        "SmiteshP/nvim-navic",
        "nvim-web-devicons",
    },
    opts = {
        show_dirname = false,
        show_basename = false,
        theme = "auto",
    },
    event = "BufReadPre",
}

return M
