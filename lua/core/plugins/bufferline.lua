-- bufferline
local M = {
  "akinsho/bufferline.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    options = {
      mode = "buffers",
      numbers = "ordinal",
      close_command = "Bdelete %d",
      right_mouse_command = "Bdelete %d",
      indicator = { style = "underline" },
      diagnostics = "nvim_lsp",
      offsets = {
        {
          filetype = "neo-tree",
          text_align = "center",
          separator = true,
        },
        {
          filetype = "NvimTree",
          text_align = "center",
          separator = true,
        },
      },
      separator_style = { "", "" },
      always_show_bufferline = false,
    },
  },
  config = function(_, opts)
    local bufferline = require("bufferline")
    local utils = require("core.config.utils")

    bufferline.setup(opts)

    -- cycle buffers
    utils.map("n", "<C-.>", function()
      bufferline.cycle(1)
    end, "cycle to next buffer")
    utils.map("n", "<C-,>", function()
      bufferline.cycle(-1)
    end, "cycle to previous buffer")

    -- shift current buffer
    utils.map("n", "<C-S-.>", function()
      bufferline.move(1)
    end, "shift current buffer forward")
    utils.map("n", "<C-S-,>", function()
      bufferline.move(-1)
    end, "shift current buffer backward")

    -- pick buffer
    utils.map("n", "<C-p>", function()
      bufferline.pick_buffer()
    end, "pick buffer")

    -- pin current buffer
    utils.map("n", "<C-S-p>", function()
      bufferline.toggle_pin()
    end, "pin current buffer")
  end,
  version = "3.*",
  event = "UIEnter",
}

return M
