-- general-purpose fuzzy finder
local M = {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "plenary.nvim",
    "nvim-telescope/telescope-fzf-native.nvim",
  },
  opts = {},
  config = function(_, opts)
    local utils = require("core.config.utils")

    require("telescope").setup(opts)

    -- grep working directory
    utils.map("n", "<Leader>gd", function()
      require("telescope.builtin").live_grep()
    end, "grep current directory")

    -- find file in working directory
    utils.map("n", "<Leader>fd", function()
      require("telescope.builtin").find_files()
    end, "find in current directory")
  end,
  cmd = "Telescope",
}

return M
