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
            ["core.export"] = {
                config = {
                    export_dir = "exports",
                },
            },
            ["core.norg.concealer"] = {},
            ["core.norg.dirman"] = {
                config = {
                    workspaces = {
                        home = "~/neorg/home",
                        school = "~/neorg/school",
                    },
                },
            },
        },
    },
    event = "VeryLazy",
}

return M
