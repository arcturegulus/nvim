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

-- automatically change padding when running neovim in kitty
-- (applies to all running instances, whether or not they're running neovim)
M.change_kitty_padding = false

function M.is_theme(name)
    return name == M.theme
end

return M
