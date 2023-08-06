local utils = require("core.config.utils")

-- file explorer
local M = {
    "nvim-neo-tree/neo-tree.nvim",
    enabled = false,
    dependencies = {
        "plenary.nvim",
        "nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    opts = {
        close_if_last_window = true,
        default_component_configs = {
            diagnostics = {
                symbols = {
                  hint = "󰗖",
                  info = "󰋽",
                  warning = "󰀪",
                  error = "󰅚",
                },
            },
            indent = {
                padding = 1,
            },
            name = {
                trailing_slash = true,
                use_git_status_colors = false,
            },
            git_status = {
                symbols = {
                    deleted = "󰛲",
                    renamed = "󰁔",

                    untracked = "󰇘",
                    ignored = "◌",
                    unstaged = "󱓌",
                    staged = "󱓏",
                    conflict = "󱇏",
                },
            },
        },
        window = {
            position = "left",
            width = utils.get_neo_tree_width(),
        },
        filesystem = {
            group_empty_dirs = true,
            use_libuv_file_watcher = true,
        },
    },
    config = function(_, opts)
      require("neo-tree").setup(opts)

      -- toggle file explorer
      utils.map("n", "<Leader>fe", "<Cmd>Neotree toggle<CR>", "open file explorer")
    end,
    event = "VeryLazy",
}

return M
