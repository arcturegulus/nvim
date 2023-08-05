local M = {}

function M.map(mode, lhs, rhs, desc, opts)
  local default_opts = { noremap = true, silent = true }

  opts = vim.tbl_deep_extend("force", default_opts, opts or {}, { desc = desc })
  vim.keymap.set(mode, lhs, rhs, opts)
end

function M.pumvisible()
  return vim.fn.pumvisible() ~= 0
end

function M.get_neo_tree_width()
  local width = math.floor(vim.go.columns * 0.25)
  local max_width = 25

  if width > max_width then
    width = max_width
  end

  return width
end

M.text_filetypes = {
  "asciidoc",
  "gitcommit",
  "latex",
  "mail",
  "markdown",
  "rst",
  "tex",
  "text",
  "norg",
}

return M
