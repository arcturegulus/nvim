local M = {
    "utilyre/barbecue.nvim",
    name = "barbecue",
    dependencies = {
        "SmiteshP/nvim-navic",
        "nvim-web-devicons",
    },
    opts = {
        exclude_filetypes = require("core.config.utils").text_filetypes,
        show_dirname = false,
        theme = "auto",
    },
    event = "VeryLazy",
}

return M
