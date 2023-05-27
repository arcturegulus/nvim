local M = {
  "smjonas/inc-rename.nvim",
  opts = {},
  config = function(_, opts)
    local increname = require("inc_rename")
    local utils = require("core.config.utils")

    increname.setup(opts)

    -- rename symbol under cursor
    utils.map("n", "<Leader>rn", function()
      return ":IncRename " .. vim.fn.expand("<cword>")
    end, "rename symbol under cursor", { expr = true })
  end,
  event = "VeryLazy",
}

return M
