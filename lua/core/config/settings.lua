local M = {}

M.theme = "catppuccin" -- theme on startup
M.transparent = false -- transparency
M.number = true -- show line numbers in gutter
M.relative_number = true -- show relative line numbers
M.autochdir = false -- automatically change working directory

function M.is_theme(name)
    return name == M.theme
end

return M
