-- previewing latex equations in ASCII
local M = {
  "jbyuki/nabla.nvim",
  opts = {},
  config = function(_, opts)
    local utils = require("core.config.utils")

    -- preview latex equation
    utils.map("n", "<Leader>p", function()
      require("nabla").popup()
    end, "preview latex equation")
  end,
  event = "VeryLazy",
}

return M
