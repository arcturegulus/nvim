local M = {
    "stevearc/overseer.nvim",
    dependencies = {
        "dressing.nvim",
        "telescope.nvim",
    },
    config = {
        templates = { "builtin", "user.cpp_build" },
    },
    event = "VeryLazy",
}

return M
