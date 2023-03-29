local ntview = require("nvim-tree.view")
local ntapi = require("nvim-tree.api")

local function close_nvim_tree()
    if ntview.is_visible() then
        vim.g.tree_open_before_tz = true
        ntapi.tree.close()
    end
end

local function open_nvim_tree()
    if vim.g.tree_open_before_tz and not ntview.is_visible() then
        vim.g.tree_open_before_tz = false
        ntapi.tree.open()
    end
end

local M = {
    "Pocco81/true-zen.nvim",
    dependencies = { "twilight.nvim" },
    opts = {
        modes = {
            ataraxis = {
                quit_untoggles = false,
                callbacks = {
                    open_pre = close_nvim_tree(),
                    close_pos = open_nvim_tree(),
                },
            },
            minimalist = {
                callbacks = {
                    open_pre = close_nvim_tree(),
                    close_pos = open_nvim_tree(),
                },
            },
        },
        integrations = {
            tmux = true,
            twilight = true,
            lualine = true,
        },
    },
    event = "VeryLazy",
}

return M
