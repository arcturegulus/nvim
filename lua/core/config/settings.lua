local M = {}

M.theme = "kanagawa" -- theme on startup
M.transparent = false -- transparency
M.number = true -- show line numbers in gutter
M.relative_number = true -- show relative line numbers
M.autochdir = false -- automatically change working directory
M.guifont = "bluesevka:h10.5:#h-none, JetbrainsMono Nerd Font:h10.5:#h-none" -- font for nvim gui (primarily neovide)
M.disable_notify_nvim = false -- disable notify.nvim plugin

function M.is_theme(name)
  return name == M.theme
end

return M
