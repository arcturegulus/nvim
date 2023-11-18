local settings = require("core.config.settings")

local M = {
  "rebelot/kanagawa.nvim",
  lazy = not settings.is_theme("kanagawa"),
  config = function(_, opts)
    require("kanagawa").setup(opts)
    if settings.is_theme("kanagawa") then
      vim.cmd("colorscheme kanagawa")
    end
  end,
  event = "VeryLazy",
}

return M
