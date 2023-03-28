local M = {
    "nvim-neorg/neorg",
    build = ":Neorg sync-parsers",
    dependencies = { "plenary.nvim" },
    opts = {
        load = {
            ["core.defaults"] = {},
            ["core.norg.esupports.metagen"] = {
                config = {
                    type = "auto",
                },
            },
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
            ["core.norg.concealer"] = {
                config = {
                    folds = false,
                },
            },
            ["core.norg.dirman"] = {
                config = {
                    workspaces = {
                        home = "~/neorg/home",
                        school = "~/neorg/school",
                        prose = "~/neorg/prose",
                    },
                },
            },
        },
    },
    event = "VeryLazy",
}

return M
