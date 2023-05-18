local settings = require("core.config.settings")

local M = {
  "rose-pine/neovim",
  name = "rose-pine",
  lazy = not settings.is_theme("rose-pine"),
  opts = {
    disable_background = settings.transparent,
  },
  config = function(_, opts)
    require("rose-pine").setup(opts)
    if settings.is_theme("rose-pine") then
      vim.cmd([[colorscheme rose-pine]])
    end
  end,
  event = "VeryLazy",
}

return M
