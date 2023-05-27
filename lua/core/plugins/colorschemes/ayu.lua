local settings = require("core.config.settings")

local M = {
  "Shatur/neovim-ayu",
  lazy = not settings.is_theme("ayu"),
  opts = {
    overrides = {
      BufferLineOffsetSeparator = { fg = "#000000", bg = "#0b0e13" },
    }
  },
  config = function(_, opts)
    require("ayu").setup(opts)
    if settings.is_theme("ayu") then
      vim.cmd("colorscheme ayu")
    end
  end,
  event = "VeryLazy",
}

return M
