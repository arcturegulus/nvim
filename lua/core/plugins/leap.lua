local M = {
    "ggandor/leap.nvim",
    dependencies = {
        "tpope/vim-repeat",
        {
            "ggandor/flit.nvim",
            opts = { labeled_modes = "nv" },
        }
    },
    opts = {},
    config = function(_, opts)
        local leap = require("leap")
        for i, opt in pairs(opts) do
            leap.opts[i] = opt
        end
        leap.add_default_mappings(true)
    end,
    event = "VeryLazy",
}

return M
