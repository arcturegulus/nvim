local M = {}

M.theme = "rose-pine" -- theme on startup
M.transparent = false -- transparency
M.number = true -- show line numbers in gutter
M.relative_number = true -- show relative line numbers
M.autochdir = false -- automatically change working directory
M.guifont = "JetbrainsMono Nerd Font, JetBrains Mono:#h-none" -- font for nvim gui (primarily neovide)

function M.is_theme(name)
    return name == M.theme
end

return M
