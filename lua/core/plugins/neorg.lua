local M = {
  "nvim-neorg/neorg",
  build = ":Neorg sync-parsers",
  dependencies = { "plenary.nvim" },
  opts = {
    load = {
      ["core.defaults"] = {},
      ["core.esupports.metagen"] = {
        config = {
          type = "auto",
        },
      },
      ["core.completion"] = {
        config = {
          engine = "nvim-cmp",
        },
      },
      ["core.export"] = {
        config = {
          export_dir = "exports",
        },
      },
      ["core.concealer"] = {
        config = {
          folds = false,
        },
      },
      ["core.dirman"] = {
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
  version = "4.0.1",
  event = "VeryLazy",
}

return M
