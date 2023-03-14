local M = {
    "Pocco81/true-zen.nvim",
    opts = {
        modes = {
            minimalist = {
                callbacks = {
                    open_pre = function()
                        vim.cmd [[NeoTreeClose]]
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
