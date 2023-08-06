-- toggleable distraction-free modes
local M = {
  "Pocco81/true-zen.nvim",
  dependencies = {
    "twilight.nvim",
    "nvim-tree.lua",
  },
  opts = {
    modes = {
      ataraxis = {
        quit_untoggles = false,
      },
    },
    integrations = {
      tmux = true,
      lualine = true,
    },
  },
  config = function(_, opts)
    local truezen = require("true-zen")
    local utils = require("core.config.utils")
    local ntapi = require("nvim-tree.api")

    -- close file explorer if open
    local function close_filetree()
      local visible = ntapi.tree.is_visible()
      if visible then
        vim.g.tree_open_before_tz = true
        ntapi.tree.close_in_this_tab()
      end
    end

    -- open file explorer if it was open before
    local function open_filetree()
      local visible = ntapi.tree.is_visible()

      if vim.g.tree_open_before_tz and not visible then
        vim.g.tree_open_before_tz = false
        ntapi.tree.open()
      end
    end

    local config = vim.tbl_deep_extend("force", opts, {
      modes = {
        ataraxis = {
          callbacks = {
            open_pre = close_filetree,
            close_pos = open_filetree,
          },
        },
        minimalist = {
          callbacks = {
            open_pre = close_filetree,
            close_pos = open_filetree,
          },
        },
      },
    })

    truezen.setup(config)

    -- toggle true-zen (ataraxis)
    utils.map("n", "<Leader>tz", function()
      truezen.ataraxis()
    end, "toggle zen mode")
  end,
  event = "VeryLazy",
}

return M
