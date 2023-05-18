local M = {
  "romgrk/barbar.nvim",
  enabled = false,
  dependencies = { "nvim-web-devicons" },
  opts = {
    auto_hide = false,
    exclude_ft = {
      "NvimTree",
      "fugitive",
    },
    icon_pinned = "󰐃",
    maximum_length = 20,
  },
  event = "VeryLazy",
}

return M
