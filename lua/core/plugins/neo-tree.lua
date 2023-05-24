local utils = require("core.config.utils")

local M = {
    "nvim-neo-tree/neo-tree.nvim",
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
    event = "VeryLazy",
}

return M
