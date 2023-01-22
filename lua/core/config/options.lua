local settings = require("core.config.settings")
local o = vim.opt

o.cursorline = true -- highlight current line
o.number = settings.number -- show line numbers in gutter
o.relativenumber = settings.relative_number -- show relative line numbers
o.wrap = false -- disable line wrapping
o.tabstop = 4 -- insert 4 spaces for tab
o.shiftwidth = 4 -- insert 4 spaces for tabbing
o.expandtab = true -- use spaces when indenting
o.smarttab = true -- use smart tabbing
o.smartindent = true -- use smart indenting
o.termguicolors = true -- idk what this is exactly
o.clipboard = "unnamedplus" -- let nvim access os clipboard
