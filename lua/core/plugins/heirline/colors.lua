-- TODO: add colors for other colorschemes
local settings = require("core.config.settings")
local f = require("core.config.functions")

local colors = f.switch(settings.theme, {
    ["catppuccin"] = function()
    end,
    ["tokyonight"] = function()
    end,
    ["rose-pine"] = function()
        local p = require("rose-pine.palette")

        return {
            n = { bg = p.foam, fg = p.base },
            v = { bg = p.rose, fg = p.base },
            V = { bg = p.rose, fg = p.base },
            ["\22"] = { bg = p.rose, fg = p.base },
            s = { bg = p.iris, fg = p.base },
            S = { bg = p.iris, fg = p.base },
            ["\19"] = { bg = p.iris, fg = p.base },
            i = { bg = p.gold, fg = p.base },
            R = { bg = p.love, fg = p.base },
            c = { bg = p.pine, fg = p.base },
            r = { bg = p.base, fg = p.muted },
            ["!"] = { bg = p.text, fg = p.base },
            t = { bg = p.text, fg = p.base },
        }
    end,
    ["onedark"] = function()
    end,
    ["everblush"] = function()
    end,
    ["default"] = function()
    end,
})

return colors
