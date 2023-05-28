local M = {
  "lukas-reineke/indent-blankline.nvim",
  dependencies = { "nvim-treesitter" },
  enabled = true,
  opts = {
    char = "▏",
    use_treesitter = true,
    show_trailing_blankline_indent = false,
    filetype_exclude = {
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
  event = "VeryLazy",
}

return M
