-- show function signature when typing
local M = {
  "ray-x/lsp_signature.nvim",
  opts = {
    bind = true,
    handler_opts = {
      border = "rounded",
    },
  },
  event = "VeryLazy",
}

return M
