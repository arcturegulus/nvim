local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- set leader and localleader keys
vim.g.maplocalleader = ","

-- open lazy menu
map("n", "<Leader>L", "<Cmd>Lazy<CR>", opts)

-- open git summary (fugitive)
map("n", "<Leader>G", "<Cmd>Git<CR>", opts)

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
map("n", "<Leader>tt", "<Cmd>TroubleToggle<CR>", opts)

-- grep working directory
map("n", "<Leader>gd", "<Cmd>Telescope live_grep<CR>", opts)

-- find file in working directory
map("n", "<Leader>fd", "<Cmd>Telescope find_files<CR>", opts)

-- rename symbol under cursor
map("n", "<Leader>rn", function()
    return ":IncRename " .. vim.fn.expand("<cword>")
end, { expr = true })
