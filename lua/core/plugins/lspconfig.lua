local M = {
  "neovim/nvim-lspconfig",
  dependencies = {
    { "folke/neodev.nvim", config = true },
    "mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    -- "hrsh7th/cmp-nvim-lsp",
  },
  opts = {
    diagnostics = {},
    format = {},
    servers = require("core.plugins.lsp.servers"),
    setup = {},
  },
  event = "VeryLazy",
}

M.config = function(_, opts)
  local mlsp = require("mason-lspconfig")
  local ensure_installed = {}
  local servers = opts.servers
  local capabilities = vim.lsp.protocol.make_client_capabilities()
  local available = mlsp.get_available_servers()
  local function setup(server)
    local server_opts = servers[server] or {}
    server_opts.capabilities = capabilities

    if opts.setup[server] then
      -- use server's custom setup handler in opts.setup if it exists
      if opts.setup[server](server, server_opts) then
        return
      end
    elseif opts.setup["*"] then
      -- use custom general setup handler if specified
      if opts.setup["*"](server, server_opts) then
        return
      end
    end

    -- if neither, setup server through nvim-lspconfig
    require("lspconfig")[server].setup(server_opts)
  end

  for server, server_opts in pairs(servers) do
    if server_opts then
      server_opts = server_opts == true and {} or server_opts

      -- manually setup server if mason == false or if
      -- server cannot be installed with mason-lspconfig
      if server_opts.mason == false or not vim.tbl_contains(available, server) then
        setup(server)
      else
        ensure_installed[#ensure_installed + 1] = server
      end
    end
  end

  mlsp.setup({ ensure_installed = ensure_installed })
  mlsp.setup_handlers({ setup })
end

return M
