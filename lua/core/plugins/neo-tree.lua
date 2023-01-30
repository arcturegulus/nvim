local M = {
    "nvim-neo-tree/neo-tree.nvim",
    dependencies = {
        "plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    opts = {
        close_if_last_window = true,
        window = {
            position = "left",
            width = 30,
        },
    },
    cmd = "Neotree",
}

return M
