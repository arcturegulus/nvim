local M = {
    "goolord/alpha-nvim",
    dependencies = { "nvim-web-devicons" },
    config = function()
        require("alpha").setup(require("alpha.themes.startify").config)
    end,
    event = "VimEnter",
}

return M
