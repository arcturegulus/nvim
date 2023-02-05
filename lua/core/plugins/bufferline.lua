local M = {
    "akinsho/bufferline.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
        options = {
            mode = "buffers",
            numbers = "both",
            diagnostics = "nvim_lsp",
            offsets = {
                {
                    filetype = "NvimTree",
                    text = "explorer",
                    text_align = "center",
                },
            },
            always_show_bufferline = false,
        },
    },
    version = "3.*",
    event = "VeryLazy",
}

return M
