-- TODO: configure quitting neovim when
-- the only buffer left is nvim-tree's
local f = require("core.config.functions")

local M = {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-web-devicons" },
    opts = {
        sync_root_with_cwd = true,
        view = {
            width = f.get_nvim_tree_width();
        },
        renderer = {
            group_empty = true,
            highlight_git = true,
            indent_markers = {
                enable = true,
            },
            icons = {
                git_placement = "after",
                show = { folder_arrow = false },
                glyphs = {
                    git = {
                        unstaged = "M",
                        staged = "S",
                        renamed = "R",
                        untracked = "U",
                        deleted = "D",
                    },
                },
            },
        },
    },
    config = function(_, opts)
        require("nvim-tree").setup(opts)

        local buffer = vim.api.nvim_buf_get_name(0)
        local real_file = vim.fn.filereadable(buffer) == 1
        local no_name = buffer == "" and vim.bo[0].buftype == ""

        if not real_file and not no_name then
            require("nvim-tree.api").tree.open()
        end
    end,
    event = "UIEnter",
}

return M
