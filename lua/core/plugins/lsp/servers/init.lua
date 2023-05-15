local M = {}

M.clangd = require("core.plugins.lsp.servers.clangd") -- clangd (c/c++)
M.lua_ls = require("core.plugins.lsp.servers.lua-language-server") -- lua-language-server (lua)
-- M.omnisharp = require("core.plugins.lsp.servers.omnisharp") -- omnisharp (c#)
M.pyright = require("core.plugins.lsp.servers.pyright") -- pyright (python)
M.rust_analyzer = require("core.plugins.lsp.servers.rust-analyzer") -- rust-analyzer (rust)

return M
