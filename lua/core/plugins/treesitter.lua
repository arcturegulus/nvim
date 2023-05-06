local M = {
    "nvim-treesitter/nvim-treesitter",
    opts = {
        ensure_installed = {
            "c",
            "lua",
            "vim",
            "help",
            "query",

            "cpp",
            "c_sharp",
            "comment",
            "rust",
            "python",
        },
        auto_install = true,
        highlight = {
            enable = true,
        },
    },
    config = function(_, opts)
        require("nvim-treesitter.configs").setup(opts)

        require("nvim-treesitter.install").prefer_git = false
        require("nvim-treesitter.install").compilers = { "clang", "gcc" }

        vim.cmd [[TSUpdate]]
    end,
    event = "VeryLazy",
}

return M
