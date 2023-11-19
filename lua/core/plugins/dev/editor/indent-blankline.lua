-- indent lines
local M = {
  "lukas-reineke/indent-blankline.nvim",
  dependencies = { "nvim-treesitter" },
  opts = {
    indent = {
      char = "▏",
    },
    whitespace = { remove_blankline_trail = true },
    scope = { enabled = true },
    exclude = {
      buftypes = {
        "help",
        "alpha",
        "neo-tree",
        "NvimTree",
        "Trouble",
        "lazy",
        "norg",
        "OverseerForm",
      },
    },
  },
  config = function(_, opts)
    require("ibl").setup(opts)
  end,
  main = "ibl",
  event = "VeryLazy",
}

return M
