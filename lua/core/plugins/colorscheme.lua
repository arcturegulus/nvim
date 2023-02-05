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

    -- material.nvim
    {
        "marko-cerovac/material.nvim",
        lazy = not settings.is_theme("material"),
        opts = {
            plugins = {
                "dashboard",
                "gitsigns",
                "indent-blankline",
                "nvim-cmp",
                "nvim-tree",
                "nvim-web-devicons",
                "telescope",
                "trouble",
                "which-key",
            },
            disable = {
                background = settings.transparent,
                eob_lines = true,
            },
            lualine_style = "stealth",
        },
        config = function(_, opts)
            vim.g.material_style = "deep ocean"
            require("material").setup(opts)
            if settings.is_theme("material") then
                vim.cmd [[colorscheme material]]
            end
        end,
        event = "VeryLazy",
    },
}
