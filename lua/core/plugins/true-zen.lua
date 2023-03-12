local M = {
    "Pocco81/true-zen.nvim",
    opts = {
        modes = {
            minimalist = {
                callbacks = {
                    open_pre = function()
                        require("nvim-tree.api").tree.close()
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
