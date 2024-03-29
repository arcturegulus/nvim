-- documenting and organizing in plaintext
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
  event = "VeryLazy",
}

return M
