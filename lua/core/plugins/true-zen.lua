local M = {
  "Pocco81/true-zen.nvim",
  dependencies = {
    "twilight.nvim",
    "neo-tree.nvim",
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
    local manager = require("neo-tree.sources.manager")
    local renderer = require("neo-tree.ui.renderer")

    -- close neo-tree if it is open
    local function close_filetree()
      local state = manager.get_state("filesystem")
      local window_exists = renderer.window_exists(state)

      if window_exists then
        vim.g.tree_open_before_tz = true
        vim.cmd("Neotree close")
      end
    end

    -- open neo-tree if it was open before
    local function open_filetree()
      local state = manager.get_state("filesystem")
      local window_exists = renderer.window_exists(state)

      if vim.g.tree_open_before_tz and not window_exists then
        vim.g.tree_open_before_tz = false
        vim.cmd("Neotree show")
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

    require("true-zen").setup(config)
  end,
  event = "VeryLazy",
}

return M
