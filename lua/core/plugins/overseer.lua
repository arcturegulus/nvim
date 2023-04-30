local M = {
    "stevearc/overseer.nvim",
    dependencies = {
        "dressing.nvim",
        "telescope.nvim",
    },
    config = {
        strategy = "toggleterm",
    },
    event = "VeryLazy",
}

return M
