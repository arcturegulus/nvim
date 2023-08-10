-- toggleable code diagnostics window
local M = {
  "folke/trouble.nvim",
  dependencies = { "nvim-web-devicons" },
  opts = {
    use_diagnostic_signs = true,
  },
  config = function(_, opts)
    local trouble = require("trouble")
    local utils = require("core.config.utils")

    trouble.setup(opts)

    -- toggle trouble buffer
    utils.map("n", "<Leader>tr", function()
      trouble.toggle()
    end, "check problems")
  end,
  cmd = { "TroubleToggle", "Trouble" },
}

return M
