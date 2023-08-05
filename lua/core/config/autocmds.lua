local utils = require("core.config.utils")

local function augroup(name)
  return vim.api.nvim_create_augroup(name, { clear = true })
end

-- auto-resize nvim-tree when resizing window
vim.api.nvim_create_autocmd("VimResized", {
  group = augroup("AutoNvimTreeResize"),
  callback = function()
    vim.cmd(string.format("NvimTreeResize %s", utils.get_nvim_tree_width()))
  end,
})

-- auto-initialize vim-pencil for text filetypes
vim.api.nvim_create_autocmd("FileType", {
  group = augroup("AutoPencil"),
  command = "PencilSoft",
  pattern = utils.text_filetypes,
})
