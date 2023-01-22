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
        lazypath
    })
    print("done.")
end
vim.opt.runtimepath:prepend(lazypath)

-- remap space as leader key
vim.g.mapleader = " "

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
        version = "*", -- default: get latest stable versions of plugins
    },
    install = { colorscheme = { "onedark", "habamax" } }, -- default colorscheme
    checker = { enabled = true }, -- check plugin updates
    change_detection = { enabled = false }, -- don't reload ui on config change
})
