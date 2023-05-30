local settings = require("core.config.settings")

local M = {
  "marko-cerovac/material.nvim",
  lazy = not settings.is_theme("material"),
  opts = {
    plugins = {
      "dap",
      "gitsigns",
      "indent-blankline",
      "neorg",
      "nvim-web-devicons",
      "telescope",
      "trouble",
      "which-key",
    },
    disable = {
      background = settings.transparent,
      eob_lines = true,
    },
    high_visibility = {
      darker = true,
    },
  },
  config = function(_, opts)
    vim.g.material_style = "deep ocean"
    require("material").setup(opts)
    if settings.is_theme("material") then
      vim.cmd("colorscheme material")
    end
  end,
  event = "VeryLazy",
}

return M
