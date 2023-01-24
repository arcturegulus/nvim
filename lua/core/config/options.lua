local settings = require("core.config.settings")
local o = vim.opt

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

o.termguicolors = true -- idk what this is exactly
o.clipboard = "unnamedplus" -- let nvim access os clipboard

o.autochdir = settings.autochdir -- automatically change working directory
