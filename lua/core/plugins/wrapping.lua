local M = {
    "andrewferrier/wrapping.nvim",
    opts = {
        notify_on_switch = false,
        auto_set_mode_filetype_allowlist = {
            "asciidoc",
            "gitcommit",
            "latex",
            "mail",
            "markdown",
            "rst",
            "tex",
            "text",
            "norg",
        },
    },
    event = "BufReadPre",
}

return M
