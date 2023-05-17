local M = {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
}

M.dependencies = {
    "hrsh7th/cmp-nvim-lsp", -- lsp completions
    "hrsh7th/cmp-buffer", -- buffer completions
    "hrsh7th/cmp-path", -- path completions
    "hrsh7th/cmp-cmdline", -- cmdline completions
    "saadparwaiz1/cmp_luasnip", -- snippet completions

    "hrsh7th/cmp-nvim-lua", -- neovim lua api completions
}

M.opts = function()
    local has_words_before = function()
        unpack = unpack
        local line, col = unpack(vim.api.nvim_win_get_cursor(0))
        return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
    end

    local cmp = require("cmp")
    local luasnip = require("luasnip")

    return {
        snippet = {
             expand = function(args)
                 luasnip.lsp_expand(args.body)
             end,
        },
        window = {
            completion = cmp.config.window.bordered(),
            documentation = cmp.config.window.bordered(),
        },
        mapping = cmp.mapping.preset.insert({
            ["<C-b>"] = cmp.mapping.scroll_docs(-4),
            ["<C-f>"] = cmp.mapping.scroll_docs(4),
            ["<C-Space>"] = cmp.mapping.complete(),
            ["<C-e>"] = cmp.mapping.abort(),
            ["<CR>"] = cmp.mapping.confirm({ select = true }),

            ["<Tab>"] = cmp.mapping(function(fallback)
                if cmp.visible() then
                    cmp.select_next_item()
                elseif luasnip.expand_or_jumpable() then
                    luasnip.expand_or_jump()
                elseif has_words_before() then
                    cmp.complete()
                else
                    fallback()
                end
            end, { "i", "s" }),
            ["<S-Tab>"] = cmp.mapping(function(fallback)
                if cmp.visible() then
                    cmp.select_prev_item()
                elseif luasnip.jumpable(-1) then
                    luasnip.jump(-1)
                else
                    fallback()
                end
            end, { "i", "s" }),
        }),
        sources = cmp.config.sources({
            { name = "nvim_lsp" },
            { name = "omni" },
            { name = "luasnip" },
            { name = "path" },
            { name = "nvim_lua" },
        }, {
            { name = "buffer" },
        }),
        formatting = {
            fields = { "abbr", "kind" },
            format = function(_, vim_item)
                local icons = require("core.plugins.cmp.icons").lspkind
                vim_item.kind = string.format("%s %s", icons[vim_item.kind], vim_item.kind)

                return vim_item
            end,
        },
    }
end

return M
