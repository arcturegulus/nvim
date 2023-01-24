local M = {}

M.theme = "onedark" -- theme
M.transparent = false -- transparency
M.number = true -- show line numbers in gutter
M.relative_number = true -- show relative line numbers
M.autochdir = true -- automatically change working directory

function M.is_theme(name)
    return name == M.theme
end

return M
