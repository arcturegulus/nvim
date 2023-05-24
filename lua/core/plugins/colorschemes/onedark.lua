local settings = require("core.config.settings")

local M = {
  "navarasu/onedark.nvim",
  lazy = not settings.is_theme("onedark"),
  opts = {
    style = "deep",
    transparent = settings.transparent,
    lualine = {
      transparent = settings.transparent,
    },
    highlights = {
      BufferLineOffsetSeparator = { fg = "#151b23", bg = "#151b23" },
      NeoTreeWinSeparator = { fg = "#151b23", bg = "#151b23" },
      -- WinSeparator = {},
    },
  },
  config = function(_, opts)
    require("onedark").setup(opts)
    if settings.is_theme("onedark") then
      vim.cmd("colorscheme onedark")
    end
  end,
  event = "VeryLazy",
}

return M
