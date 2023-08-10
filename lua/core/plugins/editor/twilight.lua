-- dims inactive code
local M = {
  "folke/twilight.nvim",
  opts = {
    context = 1, -- meant for writing prose, not code
  },
  config = function(_, opts)
    local twilight = require("twilight")
    local utils = require("core.config.utils")

    twilight.setup(opts)

    -- toggle code dimming
    utils.map("n", "<Leader>tw", function()
      twilight.toggle()
    end, "toggle code dimming")
  end
}

return M
