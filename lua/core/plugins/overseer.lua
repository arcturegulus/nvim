local M = {
    "stevearc/overseer.nvim",
    dependencies = {
        "dressing.nvim",
        "telescope.nvim",
        "toggleterm.nvim",
    },
    config = {
        templates = { "builtin" },
        strategy = "toggleterm",
    },
    event = "VeryLazy",
}

return M
