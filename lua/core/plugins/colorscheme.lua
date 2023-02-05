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
            custom_colors = function(colors)
                -- replicating the Aurora X vscode theme
                -- as close as is possible
                colors.editor.cursor = "#FF000F"
                colors.editor.bg = "#07090F"
                colors.editor.fg = "#EEFFFF"
                colors.editor.fg_dark = colors.editor.fg
                colors.editor.line_numbers = "#1E2438"

                colors.syntax.keyword = colors.main.cyan
                colors.syntax.operator = colors.main.purple
                colors.syntax.comments = "#546E7A"

                colors.backgrounds.sidebars = colors.editor.bg
                colors.backgrounds.floating_windows = colors.editor.bg
                colors.backgrounds.non_current_windows = colors.editor.bg
            end
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
        end
    },
}
