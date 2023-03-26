local utils = require("core.config.utils")

local function augroup(name)
    return vim.api.nvim_create_augroup(name, { clear = true })
end

-- auto-resize nvim-tree when resizing window
vim.api.nvim_create_autocmd("VimResized", {
    group = augroup("AutoNvimTreeResize"),
    callback = function ()
        vim.cmd(string.format("NvimTreeResize %s", utils.get_nvim_tree_width()))
    end
})

-- barbar.nvim offset
-- vim.api.nvim_create_autocmd("FileType", {
--     group = augroup("BarbarOffset"),
--     callback = function(tbl)
--         local set_offset = require("bufferline.api").set_offset
--
--         local bufwinid
--         local last_width
--         local autocmd = vim.api.nvim_create_autocmd("WinScrolled", {
--             callback = function()
--                 bufwinid = bufwinid or vim.fn.bufwinid(tbl.buf)
--
--                 local width = vim.api.nvim_win_get_width(bufwinid)
--                 if width ~= last_width then
--                     set_offset(width + 1)
--                     last_width = width
--                 end
--             end,
--         })
--
--         vim.api.nvim_create_autocmd("BufWipeout", {
--             buffer = tbl.buf,
--             callback = function()
--                 vim.api.nvim_del_autocmd(autocmd)
--                 set_offset(0)
--             end,
--             once = true,
--         })
--     end,
--     pattern = "NvimTree",
-- })

-- auto-initialize vim-pencil for text filetypes
vim.api.nvim_create_autocmd("FileType", {
    group = augroup("AutoPencil"),
    command = "PencilSoft",
    pattern = utils.text_filetypes,
})

-- disable cmp for text filetypes
vim.api.nvim_create_autocmd("Filetype", {
    group = augroup("AutoDisableCompletion"),
    callback = function()
        require("cmp").setup.buffer { enabled = false }
    end,
    pattern = utils.text_filetypes,
})
