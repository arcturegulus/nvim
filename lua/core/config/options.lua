local settings = require("core.config.settings")
local o = vim.opt

o.termguicolors = true

o.cursorline = true -- highlight current line
o.wrap = false -- disable line wrapping

o.number = settings.number -- show line numbers in gutter
o.relativenumber = settings.relative_number -- show relative line numbers

o.expandtab = true -- expand tabs to spaces
o.tabstop = 4 -- expand tabs to 4 spaces
o.smarttab = true -- use smart tabbing

o.shiftwidth = 4 -- insert 4 spaces for indents
o.autoindent = true -- automatically indent new lines
o.smartindent = true -- use smart indenting

o.smartcase = true -- case-sensitive searches only when using an uppercase letter

o.clipboard = "unnamedplus" -- let nvim access os clipboard

o.autochdir = settings.autochdir -- automatically change working directory

vim.g.editorconfig = true -- enable .editorconfig

-- neovide configuration
if vim.g.neovide then
  vim.o.guifont = settings.guifont
  vim.g.neovide_scale_factor = 0.6
  vim.g.neovide_refresh_rate = 60
  vim.g.neovide_cursor_animation_length = 0.13
  vim.g.neovide_hide_mouse_when_typing = true
  vim.g.neovide_cursor_trail_size = 0
end
