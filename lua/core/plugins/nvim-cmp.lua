-- TODO: add luasnip

local kind_icons = {
    Text = "",
    Method = "",
    Function = "",
    Constructor = "",
    Field = "",
    Variable = "",
    Class = "",
    Interface = "",
    Module = "",
    Property = "",
    Unit = "",
    Value = "",
    Enum = "",
    Keyword = "",
    Snippet = "",
    Color = "",
    File = "",
    Reference = "",
    Folder = "",
    EnumMember = "",
    Constant = "",
    Struct = "",
    Event = "",
    Operator = "",
    TypeParameter = "",
}

local M = {
    "hrsh7th/nvim-cmp",
    version = false,
    event = "InsertEnter",
}

M.dependencies = {
    "hrsh7th/cmp-nvim-lsp", -- lsp completions
    "hrsh7th/cmp-buffer", -- buffer completions
    "hrsh7th/cmp-path", -- path completions
    "hrsh7th/cmp-cmdline", -- cmdline completions

    "hrsh7th/cmp-nvim-lua", -- neovim lua api completions
    -- plugin completions
    {
        "KadoBOT/cmp-plugins",
        opts = {
            files = {
                "lua/core/plugins/",
            },
        },
    },
}

M.opts = function()
    local cmp = require("cmp")

    return {
        window = {
            -- completion = cmp.config.window.bordered(),
            documentation = cmp.config.window.bordered(),
        },
        mapping = cmp.mapping.preset.insert({
            ["<C-b>"] = cmp.mapping.scroll_docs(-4),
            ["<C-f>"] = cmp.mapping.scroll_docs(4),
            ["<C-Space>"] = cmp.mapping.complete(),
            ["<C-e>"] = cmp.mapping.abort(),
            ["<CR>"] = cmp.mapping.confirm({ select = true }),

            -- custom mappings from lunarvim
            ["<Tab>"] = cmp.mapping(function(fallback)
                if cmp.visible() then
                    cmp.select_next_item()
                else
                    fallback()
                end
            end),
            ["<S-Tab>"] = cmp.mapping(function(fallback)
                if cmp.visible() then
                    cmp.select_prev_item()
                else
                    fallback()
                end
            end),
        }),
        sources = cmp.config.sources({
            { name = "nvim_lsp" },
            { name = "path" },
            { name = "nvim_lua" },
            { name = "plugins" },
        }, {
            { name = "buffer" },
        }),
        formatting = {
            fields = { "kind", "abbr", "menu" },
            format = function(entry, item)
                item.kind = string.format("%s", kind_icons[item.kind])
                item.menu = ({
                    nvim_lsp = "[lsp]",
                    path = "[path]",
                    nvim_lua = "[nvim]",
                    plugins = "[plugin]",
                    buffer = "[buffer]",
                })[entry.source.name]
                return item
            end,
        },
    }
end

return M
