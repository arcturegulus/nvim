local M = {
    "neovim/nvim-lspconfig",
    dependencies = {
        -- TODO: add mason.nvim and cmp-nvim-lsp
        "onsails/lspkind-nvim",
        { "folke/neodev.nvim", config = true },
    },
    opts = {
        diagnostics = {},
        format = {},
        servers = require("core.plugins.lsp.servers"),
        setup = {},
    },
    event = "BufReadPre",
}

return M
