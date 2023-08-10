-- mason.nvim and nvim-lspconfig bridge
local M = {
  "williamboman/mason-lspconfig.nvim",
  dependencies = {
    "mason.nvim",
    "neovim/nvim-lspconfig",
    "coq_nvim",
  },
  config = function()
    local mlsp = require("mason-lspconfig")
    local coq = require("coq")
    local servers = require("core.plugins.dev.lsp.servers")
    local ensure_installed = {}

    for server, _ in pairs(servers) do
      ensure_installed[#ensure_installed + 1] = server
    end

    local handlers = {
      -- default setup handler
      function(server)
        local server_opts = servers[server] or {}
        require("lspconfig")[server].setup(coq.lsp_ensure_capabilities(server_opts))
      end,
      -- dedicated handlers for specific servers here
    }

    mlsp.setup({ ensure_installed = ensure_installed })
    mlsp.setup_handlers(handlers)
  end,
  event = "VeryLazy",
}

return M
