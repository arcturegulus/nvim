local M = {
  "lervag/vimtex",
  lazy = false,
  config = function()
    vim.g.vimtex_view_general_viewer = "qpdfview"
    vim.g.vimtex_view_general_options = "--unique @pdf\\#src:@tex:@line:@col"

    vim.g.vimtex_compiler_method = "latexmk"
  end,
  ft = "tex",
}

return M
