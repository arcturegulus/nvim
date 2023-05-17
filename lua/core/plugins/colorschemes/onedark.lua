local settings = require("core.config.settings")

local M = {
    "navarasu/onedark.nvim",
    lazy = not settings.is_theme("onedark"),
    opts = {
        style = "darker",
        transparent = settings.transparent,
        lualine = {
            transparent = settings.transparent,
        },
    },
    config = function(_, opts)
        require("onedark").setup(opts)
        if settings.is_theme("onedark") then
            vim.cmd [[colorscheme onedark]]
        end
    end,
    event = "VeryLazy",
}

return M
