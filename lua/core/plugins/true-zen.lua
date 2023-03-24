local ntview = require("nvim-tree.view")
local ntapi = require("nvim-tree.api")

local M = {
    "Pocco81/true-zen.nvim",
    opts = {
        modes = {
            minimalist = {
                callbacks = {
                    open_pre = function()
                        if ntview.is_visible() then
                            vim.g.tree_open_before_tz = true
                            ntapi.tree.close()
                        end
                    end,
                    close_pos = function()
                        if vim.g.tree_open_before_tz and not ntview.is_visible() then
                            vim.g.tree_open_before_tz = false
                            ntapi.tree.open()
                        end
                    end,
                },
            },
        },
        integrations = {
            tmux = true,
            lualine = true,
        },
    },
    event = "VeryLazy",
}

return M
