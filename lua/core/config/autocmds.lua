local f = require("core.config.functions")

local function augroup(name)
    return vim.api.nvim_create_augroup(name, { clear = true })
end

-- TODO: make neo-tree window resize dynamically
-- https://github.com/nvim-neo-tree/neo-tree.nvim/issues/177#issuecomment-1065716742
-- vim.api.nvim_create_autocmd("VimResized", {
--     group = augroup("AutoNvimTreeResize"),
--     callback = function ()
--         vim.cmd(string.format("NvimTreeResize %s", f.get_neo_tree_width()))
--     end
-- })
