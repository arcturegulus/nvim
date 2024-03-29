-- TODO: configure quitting neovim when
-- the only buffer left is nvim-tree's
local utils = require("core.config.utils")

-- file explorer
local M = {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-web-devicons" },
  opts = {
    sync_root_with_cwd = true,
    view = {
      width = utils.get_nvim_tree_width,
    },
    renderer = {
      root_folder_label = false,
      group_empty = true,
      highlight_git = true,
      -- indent_markers = {
      --   enable = true,
      -- },
      icons = {
        git_placement = "after",
        -- show = { folder_arrow = false },
        glyphs = {
          git = {
            unstaged = "󱓌",
            staged = "󱓏",
            renamed = "󰁔",
            untracked = "󰇘",
            deleted = "󰛲",
          },
        },
      },
    },
    diagnostics = {
      enable = true,
      icons = {
        hint = "󰗖",
        info = "󰋽",
        warning = "󰀪",
        error = "󰅚",
      },
    },
    git = { ignore = false },
  },
  config = function(_, opts)
    require("nvim-tree").setup(opts)

    -- local buffer = vim.api.nvim_buf_get_name(0)
    -- local real_file = vim.fn.filereadable(buffer) == 1
    -- local no_name = buffer == "" and vim.bo[0].buftype == ""
    --
    -- if not real_file and not no_name then
    --     require("nvim-tree.api").tree.open()
    -- end

    -- toggle file explorer
    utils.map("n", "<Leader>fe", "<Cmd>NvimTreeToggle<CR>", "toggle file explorer")
  end,
  event = "UIEnter",
}

return M
