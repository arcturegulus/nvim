local M = {
  "stevearc/overseer.nvim",
  dependencies = {
    "dressing.nvim",
    "telescope.nvim",
    "toggleterm.nvim",
  },
  opts = {
    templates = { "builtin" },
    strategy = {
      "toggleterm",
      direction = "horizontal",
    },
  },
  config = function(_, opts)
    local overseer = require("overseer")
    local utils = require("core.config.utils")

    require("overseer").setup(opts)

    -- run task
    utils.map("n", "<Leader>rt", function()
      overseer.run_template()
    end, "run task")
  end,
  event = "VeryLazy",
}

return M
