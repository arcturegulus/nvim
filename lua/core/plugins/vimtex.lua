local M = {
    "lervag/vimtex",
    config = function()
        vim.g.vimtex_view_general_viewer = "qpdfview"
        vim.g.vimtex_view_general_options = "--unique @pdf\\#src:@tex:@line:@col"

        vim.g.vimtex_compiler_method = "latexmk"
    end,
    ft = "tex",
    event = "BufReadPre",
}

return M
