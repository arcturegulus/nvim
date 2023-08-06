local settings = require("core.config.settings")

local M = {
  "AlexvZyl/nordic.nvim",
  lazy = not settings.is_theme("nordic"),
  config = function(_, opts)
    require("nordic").load(opts)
    if settings.is_theme("nordic") then
      vim.cmd("colorscheme nordic")
    end
  end,
  event = "VeryLazy",
}

return M
