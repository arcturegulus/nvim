local capabilities = require("cmp_nvim_lsp").default_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

local M = {
    capabilities = capabilities,
}

return M
