local M = {}

-- theme on startup
M.theme = "rose-pine"

-- transparency
M.transparent = true

-- show line numbers in gutter
M.number = true

-- show relative line numbers
M.relative_number = true

-- automatically change working directory
M.autochdir = false

function M.is_theme(name)
    return name == M.theme
end

return M
