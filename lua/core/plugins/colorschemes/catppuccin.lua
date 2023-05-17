local settings = require("core.config.settings")

local M = {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = not settings.is_theme("catppuccin"),
    opts = {
        flavor = "mocha",
        transparent_background = settings.transparent,
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
        custom_highlights = function(colors)
            return {
                BufferLineFill = { bg = colors.mantle },
                BufferLineOffsetSeparator = {
                    fg = colors.mantle,
                    bg = colors.mantle,
                },
                NvimTreeWinSeparator = {
                    fg = colors.mantle,
                    bg = colors.mantle,
                },
                WinSeparator = {
                    fg = colors.mantle,
                    bg = colors.base,
                },
            }
        end,
    },
    config = function(_, opts)
        require("catppuccin").setup(opts)
        if settings.is_theme("catppuccin") then
            vim.cmd [[colorscheme catppuccin]]
        end
    end,
    event = "VeryLazy",
}

return M
