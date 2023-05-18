local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- set leader and localleader keys
vim.g.maplocalleader = ","

-- open lazy menu
map("n", "<Leader>l", "<Cmd>Lazy<CR>", opts)

-- move to previous/next buffer
map("n", "<C-,>", "<Cmd>BufferLineCyclePrev<CR>", opts)
map("n", "<C-.>", "<Cmd>BufferLineCycleNext<CR>", opts)

-- re-order buffer to previous/next
map("n", "<C-<>", "<Cmd>BufferLineMovePrev<CR>", opts)
map("n", "<C->>", "<Cmd>BufferLineMoveNext<CR>", opts)

-- pin/unpin buffer
map("n", "<C-p>", "<Cmd>BufferLineTogglePin<CR>", opts)

-- close buffer
map("n", "<C-x>", "<Cmd>Bdelete<CR>", opts)

-- go to buffer
map("n", "<C-P>", "<Cmd>BufferLinePick<CR>", opts)

-- toggle file explorer
map("n", "<Leader>fe", "<Cmd>NvimTreeToggle<CR>", opts)

-- toggle trouble buffer
map("n", "<Leader>tr", "<Cmd>TroubleToggle<CR>", opts)

-- toggle twilight
map("n", "<Leader>tw", "<Cmd>Twilight<CR>", opts)

-- toggle true-zen (ataraxis)
map("n", "<Leader>tz", "<Cmd>TZAtaraxis<CR>", opts)

-- grep working directory
map("n", "<Leader>gd", "<Cmd>Telescope live_grep<CR>", opts)

-- find file in working directory
map("n", "<Leader>fd", "<Cmd>Telescope find_files<CR>", opts)

-- open overseer.nvim run task dialog
map("n", "<Leader>o", "<Cmd>OverseerRun<CR>", opts)

-- rename symbol under cursor
map("n", "<Leader>rn", function()
  return ":IncRename " .. vim.fn.expand("<cword>")
end, { expr = true })

map("n", "<Leader>p", function()
  require("nabla").popup()
end, opts)
