local settings = require("core.config.settings")

-- change kitty padding for nvim
local function file_exists(name)
    local f = io.open(name, "r")
    return f ~= nil and f:close()
end

local function modify_string_in_line(filename, line_num, from, to)
    vim.cmd(string.format("silent !sed -i '%s s/%s/%s/' %s", line_num, from, to, filename))
end

local function set_padding()
    modify_string_in_line("~/.config/kitty/kitty.conf", "739", 8, 0)
    vim.cmd [[ silent !kill -SIGUSR1 $(pgrep kitty) ]]
end

local function unset_padding()
    modify_string_in_line("~/.config/kitty/kitty.conf", "739", 0, 8)
    vim.cmd [[ silent !kill -SIGUSR1 $(pgrep kitty) ]]
end

if settings.change_kitty_padding and file_exists("~/.config/kitty/kitty.conf") then
    local id = vim.api.nvim_create_augroup("ChangeKittyPadding", { clear = false })

    vim.api.nvim_create_autocmd("VimEnter", {
        group = id,
        callback = set_padding,
    })
    vim.api.nvim_create_autocmd("VimLeavePre", {
        group = id,
        callback = unset_padding,
    })
end
