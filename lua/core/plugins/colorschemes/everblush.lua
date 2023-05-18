local settings = require("core.config.settings")

local M = {
  "Everblush/nvim",
  name = "everblush",
  lazy = not settings.is_theme("everblush"),
  opts = {
    transparent_background = settings.transparent,
  },
  config = function(_, opts)
    require("everblush").setup(opts)
    if settings.is_theme("everblush") then
      vim.cmd("colorscheme everblush")
    end
  end,
  event = "VeryLazy",
}

return M
