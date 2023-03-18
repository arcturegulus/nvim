local colors = require("core.plugins.heirline.colors")

local mode = {
    init = function(self)
        self.mode = string.sub(vim.fn.mode(1), 1, 1)
    end,
    static = {
        names = {
        n = "normal",
            v = "visual",
            V = "visual line",
            ["\22"] = "visual block",
            s = "select",
            S = "select line",
            ["\19"] = "select block",
            i = "insert",
            R = "replace",
            c = "command",
            r = "...",
            ["!"] = "shell",
            t = "terminal",
        },
        colors = colors,
    },
    provider = function(self)
        return "  " .. self.names[self.mode] .. " "
    end,
    hl = function(self)
        return {
            bg = self.colors[self.mode]["bg"],
            fg = self.colors[self.mode]["fg"],
            bold = true,
        }
    end,
    update = {
        "ModeChanged",
        pattern = "*:*",
        callback = vim.schedule_wrap(function()
            vim.cmd [[redrawstatus]]
        end),
    },
 }

local git_branch = {}

local file_info = {}

local sl = {
    mode,
    git_branch,
    file_info,
}

local M = {
    "rebelot/heirline.nvim",
    opts = {
        statusline = sl,
    },
    config = function(_, opts)
        require("heirline").setup(opts)
    end,
    event = "VeryLazy",
}

return M
