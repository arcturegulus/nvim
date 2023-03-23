local settings = require("core.config.settings")

return {
    -- catppuccin
    {
        "catppuccin/nvim",
        name = "catppuccin",
        lazy = not settings.is_theme("catppuccin"),
        opts = {
            flavor = "mocha",
            transparent_background = settings.transparent,
            dim_inactive = {
                enabled = true,
            },
            integrations = {
                barbar = true,
                indent_blankline = { enabled = true },
                leap = true,
                lsp_trouble = true,
                mason = true,
                native_lsp = { enabled = true },
                neotree = true,
                notify = true,
                treesitter = true,
                illuminate = true,
                which_key = true,
            },
        },
        config = function(_, opts)
            require("catppuccin").setup(opts)
            if settings.is_theme("catppuccin") then
                vim.cmd [[colorscheme catppuccin]]
            end
        end,
        event = "VeryLazy",
    },

    -- rose-pine
    {
        "rose-pine/neovim",
        name = "rose-pine",
        lazy = not settings.is_theme("rose-pine"),
        opts = {
            disable_background = settings.transparent,
        },
        config = function(_, opts)
            require("rose-pine").setup(opts)
            if settings.is_theme("rose-pine") then
                vim.cmd [[colorscheme rose-pine]]
            end
        end,
        event = "VeryLazy",
    },

    -- tokyonight.nvim
    {
        "folke/tokyonight.nvim",
        lazy = not settings.is_theme("tokyonight"),
        opts = {
            style = "night",
            transparent = settings.transparent,
            styles = {
                sidebars = "transparent",
            },
        },
        config = function (_, opts)
            require("tokyonight").setup(opts)
            if settings.is_theme("tokyonight") then
                vim.cmd [[colorscheme tokyonight]]
            end
        end,
        event = "VeryLazy",
    },

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
