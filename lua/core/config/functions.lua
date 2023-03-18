local M = {}

function M.switch(param, case_table)
    local case = case_table[param]
    if case then return case() end
    local def = case_table["default"]
    return def and def() or nil
end

function M.get_neo_tree_width()
    local width = math.floor(vim.go.columns * 0.25)
    local width_str
    local max_width = 25

    if width > max_width then
        width = max_width
    else
        width_str = string.format("%s%%", width)
    end

    return width_str or width
end

return M
