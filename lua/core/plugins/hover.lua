-- framework for hover providers
local M = {
  "lewis6991/hover.nvim",
  opts = {
    init = function()
      require("hover.providers.lsp")
    end,
    preview_opts = {
      border = "rounded",
    },
    title = true,
  },
  config = function(_, opts)
    local hover = require("hover")
    local utils = require("core.config.utils")

    hover.setup(opts)

    utils.map("n", "<Leader>k", hover.hover, "preview symbol")
    utils.map("n", "<Leader>K", hover.hover_select, "preview symbol (select source)")
  end,
  event = "VeryLazy",
}

return M
