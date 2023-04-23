local M = {
    "stevearc/overseer.nvim",
    dependencies = {
        "dressing.nvim",
        "telescope.nvim",
    },
    config = {
        templates = { "builtin", "user.cpp_build" },
        strategy = "toggleterm",
    },
    event = "VeryLazy",
}

return M
