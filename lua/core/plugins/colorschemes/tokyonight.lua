local settings = require("core.config.settings")

local M = {
  "folke/tokyonight.nvim",
  lazy = not settings.is_theme("tokyonight"),
  opts = {
    style = "night",
    transparent = settings.transparent,
    styles = {
      sidebars = "transparent",
    },
  },
  config = function(_, opts)
    require("tokyonight").setup(opts)
    if settings.is_theme("tokyonight") then
      vim.cmd("colorscheme tokyonight")
    end
  end,
  event = "VeryLazy",
}

return M
