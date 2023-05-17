local settings = require("core.config.settings")

local M = {
    "EdenEast/nightfox.nvim",
    lazy = not settings.is_theme("nightfox"),
    opts = {},
    config = function(_, opts)
        require("nightfox").setup(opts)
        if settings.is_theme("nightfox") then
            vim.cmd [[colorscheme nightfox]]
        end
    end,
    event = "VeryLazy",
}

return M
