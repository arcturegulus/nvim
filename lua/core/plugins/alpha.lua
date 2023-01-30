-- TODO: add configuring dashboard theme

local M = {
    "goolord/alpha-nvim",
    dependencies = { "nvim-web-devicons" },
    config = function()
        require("alpha").setup(require("alpha.themes.dashboard").config)
    end,
    event = "VimEnter",
}

return M
