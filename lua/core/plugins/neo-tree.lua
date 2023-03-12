local f = require("core.config.functions")

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
                    hint = "󰌵",
                    info = "",
                    warn = "",
                    error = "",
                },
            },
            indent = {
                padding = 0,
            },
            name = {
                trailing_slash = true,
                use_git_status_colors = false,
            },
            git_status = {
                symbols = {
                    added = "✚",
                    modified = "",

                    untracked = "?",
                    ignored = "\\",
                    unstaged = "U",
                    staged = "S",
                    conflict = "!",
                },
            },
        },
        window = {
            position = "left",
            width = f.get_neo_tree_width(),
        },
        filesystem = {
            group_empty_dirs = true,
            use_libuv_file_watcher = true,
        },
    },
    cmd = "Neotree",
}

return M
