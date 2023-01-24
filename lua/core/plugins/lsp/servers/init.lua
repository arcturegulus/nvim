local M = {
    -- clangd (c/c++)
    clangd = require("core.plugins.lsp.servers.clangd"),

    -- omnisharp (c#)
    -- omnisharp = require("core.plugins.lsp.servers.omnisharp"),

    -- pyright (python)
    pyright = require("core.plugins.lsp.servers.pyright"),

    -- lua-language-server (lua)
    sumneko_lua = require("core.plugins.lsp.servers.lua-language-server"),
}

return M
