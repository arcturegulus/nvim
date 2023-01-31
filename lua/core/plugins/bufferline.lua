-- TODO: configure so that bufferline doesn't show up on alpha screen

local M = {
    "akinsho/bufferline.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
        options = {
            mode = "buffers",
            diagnostics = "nvim_lsp",
            offsets = {
                {
                    filetype = "neo-tree",
                    text = "neo-tree",
                    text_align = "center",
                },
            },
        },
    },
    version = "3.*",
    event = "VeryLazy",
}

return M
