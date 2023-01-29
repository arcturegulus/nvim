local M = {
    "windwp/nvim-autopairs",
    dependencies = {
        "nvim-cmp",
    },
    opts = {
        check_ts = true,
    },
    config = function(_, opts)
        require("nvim-autopairs").setup(opts)

        local cmp_autopairs = require("nvim-autopairs.completion.cmp")
        local cmp = require("cmp")

        cmp.event:on(
            "confirm_done",
            cmp_autopairs.on_confirm_done()
        )
    end,
    event = "InsertEnter",
}

return M
