-- autopairs (automatically closing pair characters when typing)
local M = {
  "windwp/nvim-autopairs",
  dependencies = { "coq_nvim" },
  opts = {
    check_ts = true,
    map_cr = false,
    map_bs = true,
  },
  config = function(_, opts)
    local autopairs = require("nvim-autopairs")
    local utils = require("core.config.utils")

    autopairs.setup(opts)

    -- <CR> mapping
    utils.map("i", "<CR>", function()
      if utils.pumvisible() then
        if vim.fn.complete_info({ "selected" }).selected ~= -1 then
          return autopairs.esc("<C-y>")
        else
          return autopairs.esc("<C-e>")
        end
      else
        return autopairs.autopairs_cr()
      end
    end, nil, { expr = true })

    -- <BS> mapping
    -- utils.map("i", "<BS>", function()
    --   local bs_esc = require("nvim-autopairs.utils").esc("<BS>")
    --   local del_esc = require("nvim-autopairs.utils").esc("<Del>")
    --
    --   -- for some reason if i don't do this it actually types out the output
    --   -- of the `vim.api.nvim_replace_termcodes()` call behind the scenes
    --   local bs_autopairs = autopairs.autopairs_bs()
    --   bs_autopairs = bs_autopairs:gsub(bs_esc, "<BS>")
    --   bs_autopairs = bs_autopairs:gsub(del_esc, "<Del>")
    --
    --   if utils.pumvisible() and vim.fn.complete_info({ "mode" }).mode == "eval" then
    --     return autopairs.esc("<C-e>") .. bs_autopairs
    --   else
    --     return bs_autopairs
    --   end
    -- end, nil, { expr = true })
  end,
  event = "InsertEnter",
}

return M
