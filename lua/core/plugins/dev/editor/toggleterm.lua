-- wrapper for terminals in neovim
local M = {
  "akinsho/toggleterm.nvim",
  opts = {
    size = function(term)
      if term.direction == "horizontal" then
        return 15
      elseif term.direction == "vertical" then
        return vim.o.columns * 0.4
      else
        return 20
      end
    end,
    hide_numbers = true,
    shade_terminals = true,
  },
  event = "VeryLazy",
}

return M
