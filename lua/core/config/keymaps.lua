local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- set leader and localleader keys
vim.g.maplocalleader = ","

-- move to previous/next buffer
map("n", "<C-,>", "<Cmd>BufferPrevious<CR>", opts)
map("n", "<C-.>", "<Cmd>BufferNext<CR>", opts)

-- re-order buffer to previous/next
-- TODO: these don't work for some reason
map("n", "<C-<>", "<Cmd>BufferMovePrevious<CR>", opts)
map("n", "<C->>", "<Cmd>BufferMoveNext<CR>", opts)

-- pin/unpin buffer
map("n", "<C-p>", "<Cmd>BufferPin<CR>", opts)

-- close buffer
map("n", "<C-x>", "<Cmd>BufferClose<CR>", opts)

-- magic buffer picker
map("n", "<C-p>", "<Cmd>BufferPick<CR>", opts)

-- toggle file explorer
map("n", "<Leader>fe", "<Cmd>NvimTreeToggle<CR>", opts)

-- toggle trouble buffer
map("n", "<Leader>tt", "<Cmd>TroubleToggle<CR>", opts)

-- find files

