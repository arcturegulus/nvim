local M = {
    "akinsho/bufferline.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
        options = {
            mode = "buffers",
            numbers = "ordinal",
            close_command = "Bdelete %d",
            right_mouse_command = "Bdelete %d",
            indicator = { style = "underline" },
            diagnostics = "nvim_lsp",
            offsets = {
                {
                    filetype = "NvimTree",
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
