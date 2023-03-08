local M = {}

function M.get_nvim_tree_width()
    local width = math.floor(vim.go.columns * 0.25)
    if width > 30 then
        width = 30
    end

    return width
end

return M
