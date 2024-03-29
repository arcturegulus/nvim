-- install lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  print("installing lazy.nvim...")
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
  print("done.")
end
vim.opt.runtimepath:prepend(lazypath)

-- setup lazy.nvim
local status_ok, lazy = pcall(require, "lazy")
if not status_ok then
  return
end

lazy.setup({
  spec = {
    { import = "core.plugins" },
  },
  defaults = {
    lazy = true, -- default: lazy load plugins
    version = false, -- default: get latest versions of plugins
  },
  install = { colorscheme = { "habamax" } }, -- default colorscheme
})

-- set lazy.nvim keymap
local utils = require("core.config.utils")

utils.map("n", "<Leader>l", function()
  lazy.home()
end, "lazy.nvim home")
