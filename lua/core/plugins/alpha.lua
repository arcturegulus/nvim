-- startup greeter
-- TODO: add configuring dashboard theme
local M = {
  "goolord/alpha-nvim",
  dependencies = { "nvim-web-devicons" },
  config = function()
    require("alpha").setup(require("alpha.themes.dashboard").config)
  end,
  event = "VimEnter",
}

M.opts = function()
  local dashboard = require("alpha.themes.dashboard")
  local logo = [[
                                 ▄                   
                                █ █                  
 ▄▄▄▄     ▄▄    ▄▄▄ ▄  ▄   ▄   █  █   ▄   ▄     ▄    
  █  █  ▄▀  █ ▄▀ █ █  ▄▀  ▄▀   ▀▄█   ▄▀  ▄▀    ▄▀▀▄  
▄▀  █▀ ▄█▄▀▀ ▄█   █ ▄▄█  ▄█  ▄▄▄█▀ ▄▄█  ▄█  ▄ ▄█  █  
     ▀▀  ▀▀▀▀  ▀▀██▀   ▀▀  ▀▀    ▀▀   ▀▀  ▀▀ ▀  ▀▀ ▀▀
               ▄▀▄▀  arcturegulus's neovim           
               ▀▄▀                                   
    ]]

  dashboard.section.header.val = vim.split(logo, "\n")

  return dashboard
end

return M
