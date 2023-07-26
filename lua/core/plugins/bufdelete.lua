-- alternate buffer deletion commands that don't change the window layout
local M = {
  "famiu/bufdelete.nvim",
  config = function()
    local bufdelete = require("bufdelete")
    local utils = require("core.config.utils")

    -- close buffer
    utils.map("n", "<C-x>", function()
      bufdelete.bufdelete()
    end, "delete current buffer")
  end,
  event = "VeryLazy",
}

return M
