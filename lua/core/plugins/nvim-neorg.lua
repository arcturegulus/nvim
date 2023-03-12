local M = {
    "nvim-neorg/neorg",
    build = ":Neorg sync-parsers",
    dependencies = { "plenary.nvim" },
    opts = {
        load = {
            ["core.defaults"] = {},
            ["core.norg.completion"] = {
                config = {
                    engine = "nvim-cmp",
                },
            },
            ["core.norg.concealer"] = {},
            ["core.norg.dirman"] = {
                config = {
                    workspaces = {
                        home = "~/notes/home",
                        school = "~/notes/school",
                    },
                },
            },
        },
    },
    event = "VeryLazy",
}

return M
