local settings = require("core.config.settings")

return {
    {
        -- onedark.nvim
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
            vim.cmd [[colorscheme onedark]]
        end,
    },
}
