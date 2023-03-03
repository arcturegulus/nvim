local settings = require("core.config.settings")

return {
    -- onedark.nvim
    {
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
    },

    -- everblush
    {
        "Everblush/nvim",
        name = "everblush",
        lazy = not settings.is_theme("everblush"),
        opts = {
            transparent_background = settings.transparent,
        },
        config = function(_, opts)
            require("everblush").setup(opts)
            if settings.is_theme("everblush") then
                vim.cmd [[colorscheme everblush]]
            end
        end,
        event = "VeryLazy",
    },
}
