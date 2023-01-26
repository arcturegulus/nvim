local M = {}

M.clangd = require("core.plugins.lsp.servers.clangd") -- clangd (c/c++)
-- M.omnisharp = require("core.plugins.lsp.servers.omnisharp") -- omnisharp (c#)
M.pyright = require("core.plugins.lsp.servers.pyright") -- pyright (python)
M.sumneko_lua = require("core.plugins.lsp.servers.lua-language-server") -- lua-language-server (lua)

return M
