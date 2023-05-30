local M = {
  {
    "ms-jpq/coq_nvim",
    dependencies = {
      -- { "ms-jpq/coq.artifacts", branch = "artifacts" },
      "coq.thirdparty",
    },
    opts = {
      auto_start = true,
      display = {
        ghost_text = {
          enabled = true,
          context = { " 〈 ", " 〉" },
        },
        pum = {
          fast_close = false,
          y_max_len = 12,
          x_max_len = 55,
          x_truncate_len = 12,
          kind_context = { " [", "]" },
          source_context = { "「", "」" },
        },
        preview = {
          enabled = true,
          x_max_len = 88,
          resolve_timeout = 0.09,
          border = "rounded",
        },
      },
      keymap = {
        recommended = false, -- manual setup for nvim-autopairs
        pre_select = true,
        bigger_preview = "",
        jump_to_mark = "",
      },
      clients = {
        snippets = { enabled = false },
        paths = { enabled = false },
        tree_sitter = { enabled = false },
        buffers = { enabled = false },
      },
    },
    config = function(_, opts)
      local utils = require("core.config.utils")

      vim.g.coq_settings = opts

      -- <Esc>: exit to normal
      utils.map("i", "<Esc>", function()
        return utils.pumvisible() and "<C-e><Esc>" or "<Esc>"
      end, nil, { expr = true })
      -- <C-c>: exit to normal
      utils.map("i", "<C-c>", function()
        return utils.pumvisible() and "<C-e><C-c>" or "<C-c>"
      end, nil, { expr = true })
      -- <C-j>: select next item if completion menu is open
      utils.map("i", "<C-j>", function()
        return utils.pumvisible() and "<C-n>" or "<C-j>"
      end, nil, { expr = true })
      -- <C-k>: select previous item if completion menu is open
      utils.map("i", "<C-k>", function()
        return utils.pumvisible() and "<C-p>" or "<C-k>"
      end, nil, { expr = true })
      -- <Tab>: confirm completion
      utils.map("i", "<Tab>", function()
        return utils.pumvisible() and "<C-y>" or "<Tab>"
      end, nil, { expr = true })

      vim.cmd("COQnow -s")
    end,
    build = ":COQdeps",
    branch = "coq",
    event = "VeryLazy",
  },
  {
    "ms-jpq/coq.thirdparty",
    branch = "3p",
    opts = {
      { src = "nvimlua", short_name = "nLUA" },
    },
    config = function(_, opts)
      require("coq_3p")(opts)
    end,
  },
}

return M
