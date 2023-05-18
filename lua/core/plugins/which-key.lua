local M = {
  "folke/which-key.nvim",
  opts = {
    disable = {
      filetypes = { "TelescopePrompt" },
    },
  },
  config = function(_, opts)
    vim.o.timeout = true
    vim.o.timeoutlen = 300
    require("which-key").setup(opts)
  end,
  event = "VeryLazy",
}

return M
