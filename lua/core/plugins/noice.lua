local M = {
    "folke/noice.nvim",
    enabled = false,
    dependencies = {
        "MunifTanjim/nui.nvim",
        "nvim-notify",
        "inc-rename.nvim",
    },
    opts = {
        lsp = {
            override = {
                ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
                ["vim.lsp.util.stylize_markdown"] = true,
                ["cmp.entry.get_documentation"] = true,
            },
        },
        presets = {
            bottom_search = true,
            command_palette = true,
            long_message_to_split = true,
            inc_rename = true,
            lsp_doc_border = true,
        },
        views = {
            cmdline_popup = {
                position = {
                    row = "90%",
                },
            },
            popupmenu = {
                position = {
                    row = "50%",
                },
            },
        },
    },
    event = "UIEnter",
}

return M
