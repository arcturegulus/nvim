local function diff_source()
    local gitsigns = vim.b.gitsigns_status_dict
    if gitsigns then
        return {
            added = gitsigns.added,
            modified = gitsigns.modified,
            removed = gitsigns.removed,
        }
    end
end

local M = {
    "nvim-lualine/lualine.nvim",
    dependencies = {
        "gitsigns.nvim",
        "nvim-web-devicons",
    },
    opts = {
        options = {
            theme = "auto",
            component_separators = "┃",
            section_separators = "",
            disabled_filetypes = {
                "dashboard",
                "lazy",
                "alpha",
                "TelescopePrompt",
            },
            ignore_focus = { "NvimTree" },
            globalstatus = true,
        },
        sections = {
            lualine_b = {
                { "b:gitsigns_head", icon = "󰜋" },
                { "diff", source = diff_source },
            },
            lualine_c = { "filename", "diagnostics" },
            lualine_x = { "filetype" },
        },
    },
    event = "VeryLazy",
}

return M
