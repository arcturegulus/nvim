local settings = require("core.config.settings")

local M = {
  "Alexis12119/nightly.nvim",
  lazy = not settings.is_theme("nightly"),
  opts = {},
  config = function(_, opts)
    require("nightly").setup(opts)
    if settings.is_theme("nightly") then
      vim.cmd("colorscheme nightly")
    end
  end,
  event = "VeryLazy",
}

return M
