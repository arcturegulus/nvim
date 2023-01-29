local M = {
    "rcarriga/nvim-notify",
    opts = {
        timeout = 3000,
        max_height = function()
            return math.floor(vim.o.lines * 0.75)
        end,
        max_width = function()
            return math.floor(vim.o.columns * 0.75)
        end,
        background_color = "#000000",
        render = "compact",
        stages = "slide",
        fps = 60,
    },
    config = function(_, opts)
        require("notify").setup(opts)

        vim.notify = require("notify")
    end,
    event = "UIEnter",
}

return M
