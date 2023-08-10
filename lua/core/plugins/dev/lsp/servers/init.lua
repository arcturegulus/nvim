local M = {}

M.clangd = require("core.plugins.dev.lsp.servers.clangd") -- clangd (c/c++)
M.jsonls = require("core.plugins.dev.lsp.servers.jsonls") -- json-lsp (json)
M.lua_ls = require("core.plugins.dev.lsp.servers.lua-language-server") -- lua-language-server (lua)
-- M.omnisharp = require("core.plugins.dev.lsp.servers.omnisharp") -- omnisharp (c#)
M.pyright = require("core.plugins.dev.lsp.servers.pyright") -- pyright (python)
M.rust_analyzer = require("core.plugins.dev.lsp.servers.rust-analyzer") -- rust-analyzer (rust)

return M
